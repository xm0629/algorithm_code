#cmake_minimum_required(VERSION 3.14)
#project(cuda_test)
#
##set(CMAKE_CXX_STANDARD 11)
##
##add_executable(cuda_test main.cpp)


cmake_minimum_required(VERSION 3.14)

project(cuda_rep LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)



set(CMAKE_CXX_STANDARD 11)
set(CMAKE_BUILD_TYPE Debug)

set(CMAKE_CXX_STANDARD_REQUIRED ON)


option(CUDA_USE_STATIC_CUDA_RUNTIME ON)



find_package(CUDA REQUIRED)

set(CUDA_NVCC_PLAGS ${CUDA_NVCC_PLAGS};-std=c++11;-g;-G;-gencode;arch=compute_30;code=sm_30)

include_directories(${PROJECT_SOURCE_DIR}/include)
if (CMAKE_SYSTEM_PROCESSOR MATCHES "aarch64")
    message("embed_platform on")
    include_directories(/usr/local/cuda/targets/aarch64-linux/include)
    link_directories(/usr/local/cuda/targets/aarch64-linux/lib)
else()
    message("embed_platform off")
    include_directories(/usr/local/cuda/include)
    link_directories(/usr/local/cuda/lib64)
endif()

include_directories(./include)

add_executable(cuda_rep
    main.cpp
        main.cpp)
target_link_libraries(cuda_rep)





cuda_add_executable(main main.cu)
cuda_add_executable(set_gpu set_gpu.cu)
cuda_add_executable(set_argv set_argv.cu)
cuda_add_executable(simple_device_call simple_device_call.cu)