#include "libspir_types.h"
#define EXPORT_PIPE_SYMBOLS 1
#include "cpu_pipes.h"
#undef EXPORT_PIPE_SYMBOLS
#include "xcl_half.h"
#include <cstddef>
#include <vector>
#include <pthread.h>

extern "C" {

void vector_add(__spir_rt_info_t *, size_t c, size_t a, size_t b, int dimension, int iterations);

static pthread_mutex_t __xlnx_cl_vector_add_mutex = PTHREAD_MUTEX_INITIALIZER;
void __stub____xlnx_cl_vector_add(char **argv) {
  void **args = (void **)argv;
  __spir_rt_info_t *rti = (__spir_rt_info_t *)*(void**)args[0];
  size_t c = *((size_t*)args[0+1]);
  size_t a = *((size_t*)args[1+1]);
  size_t b = *((size_t*)args[2+1]);
  int dimension = *((int*)args[3+1]);
  int iterations = *((int*)args[4+1]);
  pthread_mutex_lock(&__xlnx_cl_vector_add_mutex);
  vector_add(rti, c, a, b, dimension, iterations);
  pthread_mutex_unlock(&__xlnx_cl_vector_add_mutex);
}
}
