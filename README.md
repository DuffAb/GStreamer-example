# GStreamer-example

## Build the example:
* if you do not install cmake, please install
```
sudo apt install cmake
```
* then cmake and make
```
> cmake .
> make
```

## My log and Before compiler
1.添加basic-tutorial-2 的练习，exercise-tutorial-2.c, 在element之间加入一个filter element
2.添加basic-tutorial-3 的练习，exercise-tutorial-3.c, 实现audio video 的 Dynamic pad
3.base-tutorial-5.c编译：需要的library: gstreamer-video-1.0 和 gtk+-3.0
 - gstreamer-video-1.0
 - 使用 apt-file search gstreamer-video-1.0.pc 搜寻，会提示你安装 libgstreamer-plugins-base1.0-dev: /usr/lib/x86_64-linux-gnu/pkgconfig/gstreamer-video-1.0.pc
 - gtk+-3.0
 - sudo apt-get install libgtk-3-dev 或 sudo apt-get install libgtk2.0-dev
