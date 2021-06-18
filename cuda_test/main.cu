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


static void HandleError( cudaError_t err,
                         const char *file,
                         int line ) {
    if (err != cudaSuccess) {
        printf( "%s in %s at line %d\n", cudaGetErrorString( err ),
                file, line );
        exit( EXIT_FAILURE );
    }
}

#define HANDLE_ERROR( err ) (HandleError( err, __FILE__, __LINE__ ))



#define COUNT(M) M * M               //定义有参宏


int main( void ) {
    printf( "Hello, World!\n" );


    int x = 6;
    printf("COUNT = %d\n", COUNT(x + 1));// 输出结果： COUNT = 13
    printf("COUNT = %d\n", COUNT(++x));  // 输出结果： COUNT = 56


    return 0;
}
