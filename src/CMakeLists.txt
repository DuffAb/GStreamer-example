# cmake 命令：
# add_executable
# add_library(目标名, 目标的修饰词, ...)
# target_link_libraries

# cmake 输出信息
message("cmake message::search library path.")
# 查找 gstreamer-1.0 库的路径
find_library(GSTREAMER_LIBRARY NAMES gstreamer-1.0)
message("${GSTREAMER_LIBRARY}")

# message("cmake message::search headfile path.")
# find_path(GSTREAMER_HEADER2 NAMES gst/gst.h)
# message("${GSTREAMER_HEADER2}")

# 使用pkg-config查找gstreamer头文件、库的路径
find_package(PkgConfig)
pkg_check_modules(GST REQUIRED gstreamer-1.0 gstreamer-audio-1.0 gstreamer-pbutils-1.0 gstreamer-video-1.0)
message("gstreamer head file path:: " "${GST_INCLUDE_DIRS}")
message("gstreamer cflags:: " "${GST_CFLAGS}")
message("gstreamer library:: " "${GST_LIBRARIES}")

pkg_check_modules(GTK REQUIRED gtk+-3.0)
message("gtk head file path:: " "${GTK_INCLUDE_DIRS}")
message("gtk cflags:: " "${GTK_CFLAGS}")
message("gtk library:: " "${GTK_LIBRARIES}")

include_directories(${GST_INCLUDE_DIRS})
include_directories(${GTK_INCLUDE_DIRS})
# include_directories(${CMAKE_SOURCE_DIR}/3rd_party/openvr/1.0.9/include)
# include_directories(/usr/include/gstreamer-1.0)


file(GLOB HEADER_FILES *.h)
file(GLOB SRC_FILES
  DllMain.cpp
)

# link_directories(${CMAKE_SOURCE_DIR}/3rd_party/openvr/1.0.9/lib/x64)
# link_directories(C:/gstreamer/1.0/x86_64/lib)

link_directories(${CMAKE_LIBRARY_OUTPUT_DIRECTORY})
# add_library(${PROJECT_NAME} SHARED ${SRC_FILES} ${HEADER_FILES} ${VERSION_FILES_OUTPUT})

set(LIB_FILES
  ${GST_LIBRARIES}
  ${GTK_LIBRARIES}
#  gobject-2.0
#  glib-2.0
#  directfb
)

# 指定生成目标 将名为 simple-initialization.c 的源文件编译成一个名称为 simple_initialization 的可执行文件。

# 编译basic-tutorial-x.c
add_executable(basic-tutorial-1 basic-tutorial-1.c)
target_link_libraries(basic-tutorial-1 ${LIB_FILES})

add_executable(basic-tutorial-2 basic-tutorial-2.c)
target_link_libraries(basic-tutorial-2 ${LIB_FILES})

add_executable(basic-tutorial-3 basic-tutorial-3.c)
target_link_libraries(basic-tutorial-3 ${LIB_FILES})

add_executable(basic-tutorial-4 basic-tutorial-4.c)
target_link_libraries(basic-tutorial-4 ${LIB_FILES})

add_executable(basic-tutorial-5 basic-tutorial-5.c)
target_link_libraries(basic-tutorial-5 ${LIB_FILES})

add_executable(basic-tutorial-6 basic-tutorial-6.c)
target_link_libraries(basic-tutorial-6 ${LIB_FILES})

add_executable(basic-tutorial-7 basic-tutorial-7.c)
target_link_libraries(basic-tutorial-7 ${LIB_FILES})

add_executable(basic-tutorial-8 basic-tutorial-8.c)
target_link_libraries(basic-tutorial-8 ${LIB_FILES})

add_executable(basic-tutorial-9 basic-tutorial-9.c)
target_link_libraries(basic-tutorial-9 ${LIB_FILES})

add_executable(example01 example01-simple-initialization.c)
target_link_libraries(example01 ${LIB_FILES})

add_executable(example02 example02-goption-interface.c)
target_link_libraries(example02 ${LIB_FILES})

add_executable(example0301 example03-create_gstelement01.c)
target_link_libraries(example0301 ${LIB_FILES})

add_executable(example0302 example03-create_gstelement02.c)
target_link_libraries(example0302 ${LIB_FILES})

add_executable(example04 example04-use_element01.c)
target_link_libraries(example04 ${LIB_FILES})

add_executable(example05 example05-get_element_info_by_factory.c)
target_link_libraries(example05 ${LIB_FILES})

add_executable(first-application first-application.c)
target_link_libraries(first-application ${LIB_FILES})

add_executable(gst-vr-plugin-player gst-vr-plugin-player.c)
target_link_libraries(gst-vr-plugin-player ${LIB_FILES})

# add_executable(example-dfbvideosink example-dfbvideosink.c)
# target_link_libraries(example-dfbvideosink ${LIB_FILES})

# add_executable(directfbtext directfbtext.c)
# target_link_libraries(directfbtext ${LIB_FILES})

# if(MSVC)
#    target_link_libraries(${PROJECT_NAME} ${LIB_FILES})
# endif(MSVC)
