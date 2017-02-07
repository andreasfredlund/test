#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "file_operations.h" 

void main(int argc, char **argv) {
  if (argc != 6){
    printf("Error: wrong number of input arguments");
    return ;
  }

  int N = atoi(argv[1]);
  char filename[100];
  strcpy(filename, argv[2]);
  int nsteps = atoi(argv[3]);
  double delta_t = atof(argv[4]);
  int graphics = atoi(argv[5]);
  printf("Input:\nN: %d, File: %s, Number of steps: %d \nStepsize: %lf, Graphics on/off: %d ", N, filename, nsteps, delta_t, graphics);
  double* p = (double*)malloc(N*5*sizeof(double));

  int j= read_doubles_from_file(N*5, p, filename);
  printf("%d\n", j);
  printf("%d\n",sizeof(double) );
}
