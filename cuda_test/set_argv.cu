#include <iostream>
#include <cuda.h>
#include <cuda_runtime_api.h>
#include "utils.h"


__global__ void add(int a, int b, int *c){
    *c = a + b;
}


int main()
{
    int c;
    int *dev_c;

    HANDLE_ERROR( cudaMalloc( (void**)&dev_c, sizeof(int) ) );

    add<<<1, 1>>>(2, 7, dev_c);
    HANDLE_ERROR(cudaMemcpy(&c, dev_c, sizeof(int), cudaMemcpyDeviceToHost));

    std::cout << "2 + 7 = " << c << std::endl;

    cudaFree(dev_c);

    return 0;
}

/*
 * 可以像调用 C 函数一样传递参数
 * 当设备执行任何有用操作时，都需要分配内存，例如将计算值返回给主机
 * cudaMalloc() 来分配内存，这个函数调用的行为类似于标准 c 的 malloc() 但该函数的作用是告诉 cuda 运行时在设备上分配的内存,
 * 第一个参数是一个指针，指向用于保存新分配内存地址的变量， 第二个参数是分配内存的大小, 除了分配内存的指针不是作为函数的返回值外, 这个函数的行为与 malloc 都是相同的.
 *
 */