#include <gst/gst.h>
#include <glib.h>


static gboolean
bus_call (GstBus *bus, GstMessage *msg, gpointer data)
{
  GMainLoop *loop = (GMainLoop *) data;

  switch (GST_MESSAGE_TYPE (msg)) {

  case GST_MESSAGE_EOS:
    g_print ("End of stream\n");
    g_main_loop_quit (loop);
    break;

  case GST_MESSAGE_ERROR: {
    gchar  *debug;
    GError *error;

    gst_message_parse_error (msg, &error, &debug);// 提取错误信息
    g_free (debug);

    g_printerr ("Error: %s\n", error->message);
    g_error_free (error);

    g_main_loop_quit (loop);
    break;
  }
  default:
    break;
  }

  return TRUE;
}


static void
decodebin_on_pad_added (GstElement *element, GstPad *pad, gpointer data)
{
  GstPad *sinkpad;
  GstPadLinkReturn ret;
  GstElement *decoder = (GstElement *) data;
  GstCaps *pad_caps = NULL;
  GstStructure *pad_struct = NULL;
  const gchar *pad_type = NULL;
  gchar* name = NULL;
  name = gst_pad_get_name (pad);

  /* We can now link this pad with the vorbis-decoder sink pad */
  g_print ("Dynamic pad created, linking demuxer/decoder demuxer name(%s).\n", name);
  g_free (name);

  // 从下一个即将要链接的element(随参数传进来)中获取sink pad      src-pad ----> sink-pad
  sinkpad = gst_element_get_static_pad (decoder, "sink");

  // decodebin 会自动创建许多的pad,对于每一个pad,这个回调函数都会被调用.这段代码可以防止连接多次.
  if (gst_pad_is_linked(sinkpad))
  {
    g_print("Is linked!");
    return ;
  }

  // 过滤传进来的 pad 是否 "video/x-raw"
  pad_caps = gst_pad_query_caps(pad, NULL);
  pad_struct = gst_caps_get_structure(pad_caps, 0);
  pad_type = gst_structure_get_name(pad_struct);//获得structure的名字——最主要的描述部分
  if (!g_str_has_prefix(pad_type, "video/x-raw"))
  {
    g_print("pad_type(%s), which is not video/x-raw.\n", pad_type);
  }
  ret = gst_pad_link (pad, sinkpad);
  if (GST_PAD_LINK_FAILED(ret))
    g_print(" Type is '%s' but link failed.\n", pad_type);
  else
    g_print(" Link succeeded (type '%s').\n", pad_type);

  gst_caps_unref(pad_caps);
  gst_object_unref (sinkpad);
}

static void
matroskademux_on_pad_added (GstElement *element, GstPad *pad, gpointer data)
{
  GstPad *sinkpad;
  GstPadLinkReturn ret;
  GstElement *decoder = (GstElement *) data;
  GstCaps *pad_caps = NULL;
  GstStructure *pad_struct = NULL;
  const gchar *pad_type = NULL;
  gchar* name = NULL;
  name = gst_pad_get_name (pad);

  /* We can now link this pad with the vorbis-decoder sink pad */
  g_print ("Dynamic pad created, linking demuxer/decoder demuxer name(%s).\n", name);
  g_free (name);

  // 从下一个即将要链接的element(随参数传进来)中获取sink pad      src-pad ----> sink-pad
  sinkpad = gst_element_get_static_pad (decoder, "sink");

  // decodebin 会自动创建许多的pad,对于每一个pad,这个回调函数都会被调用.这段代码可以防止连接多次.
  if (gst_pad_is_linked(sinkpad))
  {
    g_print("Is linked!");
    return ;
  }

  // 过滤传进来的 pad 是否 "video/x-raw"
  pad_caps = gst_pad_query_caps(pad, NULL);
  pad_struct = gst_caps_get_structure(pad_caps, 0);
  pad_type = gst_structure_get_name(pad_struct);//获得structure的名字——最主要的描述部分
  if (!g_str_has_prefix(pad_type, "video/x-vp9"))
  {
    g_print("pad_type(%s), which is not video/x-raw.\n", pad_type);
  }
  ret = gst_pad_link (pad, sinkpad);
  if (GST_PAD_LINK_FAILED(ret))
    g_print(" Type is '%s' but link failed.\n", pad_type);
  else
    g_print(" Link succeeded (type '%s').\n", pad_type);

  gst_caps_unref(pad_caps);
  gst_object_unref (sinkpad);
}



int
main (int argc, char *argv[])
{
  GMainLoop *loop;
  GstCaps *filtercaps;
  GstElement *myfilter;
  GstElement *pipeline, *source, *demuxer,*decoder, *gluploader, *glcolorconver, *videorater, *vrcompositor, *filter, *hmdwarper, *sink;
  GstBus *bus;
  guint bus_watch_id;

  /* Initialisation */
  gst_init (&argc, &argv);

  loop = g_main_loop_new (NULL, FALSE);


  /* Check input arguments */
  if (argc != 2) {
    g_printerr ("Usage: %s <Ogg/Vorbis filename>\n", argv[0]);
    return -1;
  }


  /* Create gstreamer elements */
  pipeline      = gst_pipeline_new ("gst-vr-plugin-player");
  source        = gst_element_factory_make ("filesrc",        "vr-source");
  demuxer       = gst_element_factory_make ("matroskademux",   "vr-matroskademux");
  // decoder       = gst_element_factory_make ("decodebin",      "vr-decoder");
  decoder       = gst_element_factory_make ("vaapidecodebin",      "vr-decoder");
  gluploader    = gst_element_factory_make ("glupload",       "vr-gluploader");
  glcolorconver = gst_element_factory_make ("glcolorconvert", "vr-glcolorconver");
  videorater    = gst_element_factory_make ("videorate",      "vr-videorater");
  vrcompositor  = gst_element_factory_make ("vrcompositor",   "vr-vrcompositor");
  filter        = gst_element_factory_make ("capsfilter",     "vr-capsfilter");
  hmdwarper     = gst_element_factory_make ("hmdwarp",        "vr-hmdwarp");
  // sink          = gst_element_factory_make ("glimagesink",    "vr-sink");
  sink          = gst_element_factory_make ("fpsdisplaysink",    "vr-sink");

  myfilter      = gst_element_factory_make ("myfilter",       "vr-myfilter");
  // enable_factory("decodebin", TRUE);
  if (!pipeline || !source || !demuxer || !decoder || !gluploader || !glcolorconver || !videorater || !vrcompositor || !filter || !hmdwarper || !sink || !myfilter) {
    g_printerr ("One element could not be created. Exiting.\n");
    return -1;
  }

  /* Set up the pipeline */

  /* we set the input filename to the source element */
  g_object_set (G_OBJECT (source), "location", argv[1], NULL);
  g_object_set (G_OBJECT (videorater), "rate", 1.0, NULL);
  g_object_set (G_OBJECT (videorater), "drop-only", TRUE, NULL);
  // g_object_set (G_OBJECT (videorater), "max-rate", 70, NULL);

  /* we add a message handler */
  bus = gst_pipeline_get_bus (GST_PIPELINE (pipeline));
  bus_watch_id = gst_bus_add_watch (bus, bus_call, loop);
  gst_object_unref (bus);

  /* we add all elements into the pipeline */
  /* file-source | ogg-demuxer | vorbis-decoder | converter | alsa-output */
  gst_bin_add_many (GST_BIN (pipeline), source, demuxer, decoder, gluploader, myfilter, glcolorconver, videorater, vrcompositor, filter, hmdwarper, sink, NULL);

  /* we link the elements together */
  /* file-source -> ogg-demuxer ~> vorbis-decoder -> converter -> alsa-output */
  // using decodebin
  // gst_element_link (source, decoder);
  // gst_element_link_many (myfilter, gluploader, glcolorconver, videorater, vrcompositor, filter, hmdwarper, sink, NULL);

  // using vaapidecodebin
  gst_element_link (source, demuxer);
  // gst_element_link (source, myfilter);
  // gst_element_link (myfilter, demuxer);
  gst_element_link_many (decoder, gluploader, glcolorconver, videorater, myfilter, vrcompositor, filter, hmdwarper, sink, NULL);

#if 0
  filtercaps = gst_caps_new_simple ("video/x-raw(memory:GLMemory)",
                                    "format", G_TYPE_STRING, "RGBA",
                                    "width", G_TYPE_INT, 2560,
                                    "height", G_TYPE_INT, 1440,
                                    "framerate", GST_TYPE_FRACTION, 70, 1,
                                    NULL);
#else
  // filtercaps = gst_caps_from_string("video/x-raw(memory:GLMemory), width=2560, height=1440, framerate=70/1");
  // g_object_set(G_OBJECT (videorater), "max-rate", 70, NULL);
  // g_object_set(G_OBJECT (videorater), "rate", 70, NULL);
  filtercaps = gst_caps_from_string("video/x-raw(memory:GLMemory), width=2560, height=1440");
#endif
  g_object_set (G_OBJECT (filter), "caps", filtercaps, NULL);
  // g_object_set (G_OBJECT (hmdwarper), "caps", filtercaps, NULL);
  // g_object_set (G_OBJECT (sink), "caps", filtercaps, NULL);
  gst_caps_unref (filtercaps);


  // g_signal_connect (decoder, "pad-added", G_CALLBACK (decodebin_on_pad_added), gluploader);
  // g_signal_connect (decoder, "pad-added", G_CALLBACK (decodebin_on_pad_added), myfilter);
  g_signal_connect (demuxer, "pad-added", G_CALLBACK (matroskademux_on_pad_added), decoder);

  /* note that the demuxer will be linked to the decoder dynamically.
     The reason is that Ogg may contain various streams (for example
     audio and video). The source pad(s) will be created at run time,
     by the demuxer when it detects the amount and nature of streams.
     Therefore we connect a callback function which will be executed
     when the "pad-added" is emitted.*/


  /* Set the pipeline to "playing" state*/
  g_print ("Now playing: %s\n", argv[1]);
  gst_element_set_state (pipeline, GST_STATE_PLAYING);


  /* Iterate */
  g_print ("Running...\n");
  g_main_loop_run (loop);


  /* Out of the main loop, clean up nicely */
  g_print ("Returned, stopping playback\n");
  gst_element_set_state (pipeline, GST_STATE_NULL);

  g_print ("Deleting pipeline\n");
  gst_object_unref (GST_OBJECT (pipeline));
  g_source_remove (bus_watch_id);
  g_main_loop_unref (loop);

  return 0;
}