/**********
Copyright (c) 2018, Xilinx, Inc.
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

#define DIMENSION 1000

int main(int argc, char** argv)
{
    size_t vector_size_bytes = sizeof(int) * DIMENSION;
    size_t matrix_size_bytes = sizeof(int) * DIMENSION * DIMENSION;
    
    // Creates a vector and matrix of DIMENSION elements with initial values of 5 and 2
    std::vector<int,aligned_allocator<int>> source_in_vec(DIMENSION, 5);
    std::vector<int,aligned_allocator<int>> source_in_mat(DIMENSION * DIMENSION, 2);
    std::vector<int,aligned_allocator<int>> source_out_vec(DIMENSION);

// OPENCL HOST CODE AREA START
    // get_xil_devices() is a utility API which will find the xilinx
    // platforms and will return list of devices connected to Xilinx platform
    std::vector<cl::Device> devices = xcl::get_xil_devices();
    cl::Device device = devices[0];

    cl::Context context(device);
    cl::CommandQueue q(context, device, CL_QUEUE_PROFILING_ENABLE);
    std::string device_name = device.getInfo<CL_DEVICE_NAME>(); 

    // find_binary_file() is a utility API which will search the xclbin file for
    // targeted mode (sw_emu/hw_emu/hw) and for targeted platforms.
    std::string binaryFile = xcl::find_binary_file(device_name,"vadd");

    // import_binary_file() ia a utility API which will load the binaryFile
    // and will return Binaries.
    cl::Program::Binaries bins = xcl::import_binary_file(binaryFile);
    devices.resize(1);
    cl::Program program(context, devices, bins);
    cl::Kernel krnl_vector_add(program,"vadd");

    // Allocate Buffer in Global Memory
    // Buffers are allocated using CL_MEM_USE_HOST_PTR for efficient memory and 
    // Device-to-host communication
    cl::Buffer buf_in_vec   (context,CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, 
            vector_size_bytes, source_in_vec.data());
    cl::Buffer buf_in_mat   (context,CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, 
            matrix_size_bytes, source_in_mat.data());
    cl::Buffer buf_out_vec(context,CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, 
            vector_size_bytes, source_out_vec.data());

    // Copy input data to device global memory
    q.enqueueMigrateMemObjects({buf_in_vec, buf_in_mat},0/* 0 means from host*/);

    int size = DIMENSION;
    int iterations = 2;
    krnl_vector_add.setArg(0, buf_in_vec);
    krnl_vector_add.setArg(1, buf_in_mat);
    krnl_vector_add.setArg(2, buf_out_vec);
    krnl_vector_add.setArg(3, size);
    krnl_vector_add.setArg(4, iterations);

    // Launch the Kernel
    // For HLS kernels global and local size is always (1,1,1). So, it is recommended
    // to always use enqueueTask() for invoking HLS kernel
    q.enqueueTask(krnl_vector_add);

    // Copy Result from Device Global Memory to Host Local Memory
    q.enqueueMigrateMemObjects({buf_out_vec},CL_MIGRATE_MEM_OBJECT_HOST);
    q.finish();
// OPENCL HOST CODE AREA END

    // Compare the results of the Device to the simulation
    std::cout << "Result = " << std::endl;
    for (int i = 0 ; i < DIMENSION; i++){
	printf("%d", source_out_vec[i]);
	if (((i + 1) % 10) == 0) printf("\n");
    }

}
