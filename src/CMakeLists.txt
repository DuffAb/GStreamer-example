# include_directories(${CMAKE_SOURCE_DIR}/3rd_party/openvr/1.0.9/include)
include_directories(/usr/local/include/gstreamer-1.0)
include_directories(/usr/lib/x86_64-linux-gnu/gstreamer-1.0/include)
include_directories(/usr/include/glib-2.0)
include_directories(/usr/lib/x86_64-linux-gnu/glib-2.0/include)
include_directories(/usr/include/directfb)

file(GLOB HEADER_FILES *.h)
file(GLOB SRC_FILES
  DllMain.cpp
)

# link_directories(${CMAKE_SOURCE_DIR}/3rd_party/openvr/1.0.9/lib/x64)
# link_directories(C:/gstreamer/1.0/x86_64/lib)

link_directories(${CMAKE_LIBRARY_OUTPUT_DIRECTORY})
# add_library(${PROJECT_NAME} SHARED ${SRC_FILES} ${HEADER_FILES} ${VERSION_FILES_OUTPUT})

set(LIB_FILES
  pthread
  gstreamer-1.0
  gobject-2.0
  glib-2.0
  directfb
)

# 指定生成目标 将名为 simple-initialization.c 的源文件编译成一个名称为 simple_initialization 的可执行文件。
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

add_executable(example-dfbvideosink example-dfbvideosink.c)
target_link_libraries(example-dfbvideosink ${LIB_FILES})

add_executable(directfbtext directfbtext.c)
target_link_libraries(directfbtext ${LIB_FILES})

# if(MSVC)
#    target_link_libraries(${PROJECT_NAME} ${LIB_FILES})
# endif(MSVC)
