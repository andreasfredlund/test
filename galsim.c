#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "file_operations.h" 
#include "graphics.h"

void printArray(double *ptr, size_t length)        
{         int i;
    //for statment to print values using array             
    for(i=0; i < length; ++i )      
    printf("%lf \n", ptr[i]);        
} 


double position( )

// ändra igeeeeen
void main(int argc, char **argv) {
  if (argc != 6){
    printf("Error: wrong number of input arguments\n");
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
  
  //printArray(p, N*5); 




}
