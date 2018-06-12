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

/*******************************************************************************
Description:
    HLS pragmas can be used to optimize the design : improve throughput, reduce latency and 
    device resource utilization of the resulting RTL code
    This is vector addition example to demonstrate how HLS optimizations are used in kernel. 
*******************************************************************************/

#include <cstdio>

#define DIMENSION 3000

extern "C" {
void vadd(
        const unsigned int *in_vec, // Read-Only Vector
        const unsigned int *in_mat, // Read-Only Matrix
        unsigned int *out_vec,      // Output Vector
        int dims,		    // Dimension of input
	int iterations              // Number of iterations
        )
{
// SDAccel kernel must have one and only one s_axilite interface which will be used by host application to configure the kernel.
// Here bundle control is defined which is s_axilite interface and associated with all the arguments (in1, in2, out and size),
// control interface must also be associated with "return".
// All the global memory access arguments must be associated to one m_axi(AXI Master Interface). Here all three arguments(in1, in2, out) are 
// associated to bundle gmem which means that a AXI master interface named "gmem" will be created in Kernel and all these variables will be 
// accessing global memory through this interface.
// Multiple interfaces can also be created based on the requirements. For example when multiple memory accessing arguments need access to
// global memory simultaneously, user can create multiple master interfaces and can connect to different arguments.
#pragma HLS INTERFACE m_axi port=in_vec  offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=in_mat  offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=out_vec offset=slave bundle=gmem
#pragma HLS INTERFACE s_axilite port=in_vec  bundle=control
#pragma HLS INTERFACE s_axilite port=in_mat  bundle=control
#pragma HLS INTERFACE s_axilite port=out_vec bundle=control
#pragma HLS INTERFACE s_axilite port=dims bundle=control
#pragma HLS INTERFACE s_axilite port=iterations bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

    printf("DIMENSION: %d\n", dims);
    printf("ITERATIONS: %d\n", iterations);

    unsigned int vec_in[DIMENSION];    // Local memory to store input vector
    unsigned int mat_in[DIMENSION * DIMENSION];    // Local memory to store input matrix
    #pragma HLS RESOURCE variable=mat_in core=XPM_MEMORY uram
    unsigned int vec_out[DIMENSION];  // Local Memory to store output vector

    for (int j = 0; j < dims; j++) vec_in[j] = in_vec[j];
    for (int j = 0; j < dims * dims; j++) mat_in[j] = in_mat[j];

    //Per iteration of this loop perform matrix-vector multiplication
    for (int i = 0; i < iterations;  i ++)
    {
	for (int j = 0; j < dims; j++) vec_out[j] = 0;
	for (int j = 0; j < dims; j++)
	{
	    for (int k = 0; k < dims; k++) vec_out[j] += vec_in[k] * mat_in[j * dims + k];
	}
        for (int j = 0; j < dims; j++) vec_in[j] = vec_out[j];
    }
    for (int i = 0; i < dims; i++) out_vec[i] = vec_in[i];

}
}
