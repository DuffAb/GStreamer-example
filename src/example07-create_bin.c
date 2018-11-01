#include <gst/gst.h>

int
main (int   argc,
      char *argv[])
{
  GstElement *bin, *pipeline, *source, *sink;

  /* init */
  gst_init (&argc, &argv);

  /* create */
  pipeline = gst_pipeline_new ("my_pipeline");
  bin = gst_bin_new ("my_bin");
  source = gst_element_factory_make ("fakesrc", "source");
  sink = gst_element_factory_make ("fakesink", "sink");

  /* First add the elements to the bin */
  gst_bin_add_many (GST_BIN (bin), source, sink, NULL);

  /* 从 bin 中删除某个 element */
  // gst_bin_remove(GST_BIN (bin), sink);

  /* add the bin to the pipeline */
  gst_bin_add (GST_BIN (pipeline), bin);

  /* link the elements */
  gst_element_link (source, sink);

  // // 在bin中查找element
  // gst_bin_get_by_name (GST_BIN (bin), "source");
  // gst_bin_get_by_interface (GST_BIN (bin), 0);
  // // 迭代bin中所有element
  // GstIterator* it = gst_bin_iterate_elements (GST_BIN (bin));
  // [..]

}