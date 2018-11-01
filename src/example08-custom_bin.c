#include <gst/gst.h>

int
main (int   argc,
      char *argv[])
{
  GstElement *player;

  /* init */
  gst_init (&argc, &argv);

  /* create player */
  player = gst_element_factory_make ("oggvorbisplayer", "player");

  /* set the source audio file */
  g_object_set (player, "location", "helloworld.ogg", NULL);

  /* start playback  这将设置element的播放状态 */
  gst_element_set_state (GST_ELEMENT (player), GST_STATE_PLAYING);
// [..]
}