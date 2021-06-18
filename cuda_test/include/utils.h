//
// Created by xuming on 21-6-18.
//

#ifndef CUDA_REP_UTILS_H
#define CUDA_REP_UTILS_H


#include <iostream>
#include <cuda.h>


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


#endif //CUDA_REP_UTILS_H
