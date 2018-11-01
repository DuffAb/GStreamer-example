#!/bin/bash
export DISPLAY=:1
make && GST_PLUGIN_PATH=/home/ldf/workspace/gstreamer/gst-plugins-vr/build GST_DEBUG=*:2 ./.build/bin/gst-vr-plugin-player ./../video/Travel_to_Dubai_in_360-Worlds_Greatest_Cit.webm | tee gst-vr-plugin-player.txt
