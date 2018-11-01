#!/bin/bash
export DISPLAY=:1
make && GST_PLUGIN_PATH=/home/ldf/workspace/gstreamer/gst-plugins-vr/build GST_DEBUG=*:2 ./.build/bin/gst-vr-plugin-player ./../video/a.h264 | tee gst-vr-plugin-player.txt
