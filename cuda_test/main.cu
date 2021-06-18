#include <iomanip>
#include <iostream>
#include <stdio.h>

#include <cuda.h>
#include <cuda_runtime.h>
#include <device_launch_parameters.h>

using namespace std;


//检测GPU
bool CheckCUDA(void){
    int count = 0;
    int i = 0;

    cudaGetDeviceCount(&count);
    if (count == 0) {
        printf("找不到支持CUDA的设备!\n");
        return false;
    }
    cudaDeviceProp prop;
    for (i = 0; i < count; i++) {
        if (cudaGetDeviceProperties(&prop, i) == cudaSuccess) {
            if (prop.major >= 1) {
                break;
            }
        }
    }
    if (i == count) {
        printf("找不到支持CUDA的设备!\n");
        return false;
    }
    cudaGetDeviceProperties(&prop, 0);
    printf("GPU is: %s\n", prop.name);
    cudaSetDevice(0);
    printf("CUDA initialized success.\n");
    return true;
}



__global__ void kernel(void){

}


int main( void ) {
    kernel <<<1, 1>>>();
    printf( "Hello, World!\n" );
    return 0;
}

/*
 * 一个空的函数 kernel(), 并且带有修饰符 __global__
 * 对这个空函数的调用，并且带有修饰字符 <<<1, 1>>>
 *
 * CUDA C 为标准 C 增加 __global__ 修饰符，这个修饰符告诉编译器，函数应该运行在设备上而不是主机上运行.
 */