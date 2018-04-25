#include "/opt/Xilinx/SDx/2017.1.op/Vivado_HLS/common/technology/autopilot/opencl/libspir_types.h"

namespace {

template<typename T> inline __spir_int_t
__attribute__((always_inline))
bprint(__attribute__((address_space(16776960))) void *ptr, T &v)
{
  __attribute__((address_space(16776960)))T* Tptr
    = static_cast<__attribute__((address_space(16776960)))T*>(ptr);
  *Tptr = v;
  return (__spir_int_t)sizeof(T);
}

template<typename T, typename... Args> inline __spir_int_t
__attribute__((always_inline))
bprint(__attribute__((address_space(16776960))) void *ptr, T &v, Args... args)
{
  __attribute__((address_space(16776960))) T* Tptr
    = static_cast<__attribute__((address_space(16776960)))T*>(ptr);
  *Tptr = v;
  Tptr++;
  return (__spir_int_t)(sizeof(T)+ bprint((__attribute__((address_space(16776960)))void*)Tptr,args...));
}
}

extern "C" {
__attribute__((always_inline)) __spir_int_t __xlnx_cl_vector_add_bprintf0(__attribute__((address_space(16776960))) __spir_uchar_t* buf, __spir_ulong_t arg1, __spir_ulong_t arg2) {

  return bprint(buf, arg1, arg2);

}
}
extern "C" {
__attribute__((always_inline)) __spir_int_t __xlnx_cl_vector_add_bprintf1(__attribute__((address_space(16776960))) __spir_uchar_t* buf, __spir_ulong_t arg1, __spir_ulong_t arg2) {

  return bprint(buf, arg1, arg2);

}
}
