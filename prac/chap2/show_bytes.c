/**
 * show-bytes.c
 */

#include <stdio.h>

typedef unsigned char *byte_pointer;

void zshow_bytes(byte_pointer start, size_t len)
{
  size_t i;
  for (i = 0; i < len; i++)
  {
    printf(" %.2x", start[i]);
  }
  printf("\n");
}

int main()
{
  printf("%d", (int)2147483648U);
}