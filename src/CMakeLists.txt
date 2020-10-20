add_library(showimg showimg.cpp)
add_library(convolve convolve.cpp)
add_library(cvmat cvmat.cpp)

find_package(OpenCV 4 REQUIRED)

add_executable(bin_main main.cpp)

target_link_libraries(showimg ${OpenCV_LIBS})
target_link_libraries(convolve ${OpenCV_LIBS})
target_link_libraries(cvmat ${OpenCV_LIBS})

target_link_libraries(bin_main 
                      showimg convolve cvmat ${OpenCV_LIBS})