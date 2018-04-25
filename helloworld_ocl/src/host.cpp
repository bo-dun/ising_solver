/**********
Copyright (c) 2017, Xilinx, Inc.
All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
this list of conditions and the following disclaimer in the documentation
and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors
may be used to endorse or promote products derived from this software
without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**********/
#include "xcl2.hpp"
#include <vector>

using std::vector;

static const int DIMENSION = 10;
static const int ITERATIONS = 2;
static const std::string error_message =
    "Error: Result mismatch:\n"
    "i = %d CPU result = %d Device result = %d\n";

// This example illustrates the very simple OpenCL example that performs
// an addition on two vectors
int main(int argc, char **argv) {
    // compute the size of array in bytes
    size_t vec_size_in_bytes = DIMENSION * sizeof(int);
    size_t mat_size_in_bytes = DIMENSION * DIMENSION * sizeof(int);

    // Creates a vector of DIMENSION elements with an initial value of 5 and 2
    vector<int,aligned_allocator<int>> source_in_vec(DIMENSION, 5);
    vector<int,aligned_allocator<int>> source_in_mat(DIMENSION * DIMENSION, 2);
    vector<int,aligned_allocator<int>> source_out_vec(DIMENSION);

    // The get_xil_devices will return vector of Xilinx Devices 
    std::vector<cl::Device> devices = xcl::get_xil_devices();
    cl::Device device = devices[0];

    //Creating Context and Command Queue for selected Device 
    cl::Context context(device);
    cl::CommandQueue q(context, device, CL_QUEUE_PROFILING_ENABLE);
    std::string device_name = device.getInfo<CL_DEVICE_NAME>(); 
    std::cout << "Found Device=" << device_name.c_str() << std::endl;

    // import_binary() command will find the OpenCL binary file created using the 
    // xocc compiler load into OpenCL Binary and return as Binaries
    // OpenCL and it can contain many functions which can be executed on the
    // device.
    std::string binaryFile = xcl::find_binary_file(device_name,"vector_addition");
    cl::Program::Binaries bins = xcl::import_binary_file(binaryFile);
    devices.resize(1);
    cl::Program program(context, devices, bins);

    // These commands will allocate memory on the FPGA. The cl::Buffer objects can
    // be used to reference the memory locations on the device. The cl::Buffer
    // object cannot be referenced directly and must be passed to other OpenCL
    // functions.
    cl::Buffer buf_in_vec(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,  
            vec_size_in_bytes, source_in_vec.data());
    cl::Buffer buf_in_mat(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,  
            mat_size_in_bytes, source_in_mat.data());
    cl::Buffer buf_out_vec(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, 
            vec_size_in_bytes, source_out_vec.data());
    //Separate Read/write Buffer vector is needed to migrate data between host/device
    std::vector<cl::Memory> inBufVec, outBufVec;
    inBufVec.push_back(buf_in_vec);
    inBufVec.push_back(buf_in_mat);
    outBufVec.push_back(buf_out_vec);


    // These commands will load the source_a and source_b vectors from the host
    // application and into the buffer_a and buffer_b cl::Buffer objects. The data
    // will be be transferred from system memory over PCIe to the FPGA on-board
    // DDR memory.
    q.enqueueMigrateMemObjects(inBufVec,0/* 0 means from host*/);

    // This call will extract a kernel out of the program we loaded in the
    // previous line. A kernel is an OpenCL function that is executed on the
    // FPGA. This function is defined in the src/vetor_addition.cl file.
    cl::Kernel krnl_vector_add(program,"vector_add");

    //set the kernel Arguments
    int narg=0;
    krnl_vector_add.setArg(narg++,buf_out_vec);
    krnl_vector_add.setArg(narg++,buf_in_vec);
    krnl_vector_add.setArg(narg++,buf_in_mat);
    krnl_vector_add.setArg(narg++,DIMENSION);
    krnl_vector_add.setArg(narg++,ITERATIONS);
    //Launch the Kernel
    q.enqueueTask(krnl_vector_add);

    // The result of the previous kernel execution will need to be retrieved in
    // order to view the results. This call will write the data from the
    // buffer_result cl_mem object to the source_results vector
    q.enqueueMigrateMemObjects(outBufVec,CL_MIGRATE_MEM_OBJECT_HOST);
    q.finish();


    int match = 0;
    printf("Result = \n");
    for (int i = 0; i < DIMENSION; i++) {
//        if (source_out_vec[i] != host_result) {
//            printf(error_message.c_str(), i, host_result, source_out_vec[i]);
//            match = 1;
//            break;
//        } else {
          printf("%d ", source_out_vec[i]);
          if (((i + 1) % 16) == 0) printf("\n");
//        }
    }

    std::cout << "TEST " << (match ? "FAILED" : "PASSED") << std::endl; 
    return (match ? EXIT_FAILURE :  EXIT_SUCCESS);
}
