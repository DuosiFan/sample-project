#include <stdio.h>

#include "field.h"

int main(void) {

  double *u = create_field();

  printf("The address of NULL is %p\n", (void *) u);
  return 0;
}
