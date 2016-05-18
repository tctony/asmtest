#include <stdio.h>

extern long long asm_1024();
extern char asm_hello[9];
extern int asm_read_int();

int main(int argc, char *argv[])
{
  printf("%d, %s\n", argc, argv[0]);

  long long ret = asm_1024();
  printf("%lld\n", ret);

  printf("%s\n", asm_hello);

  printf("input a int: ");
  int aint = -1;
  aint = asm_read_int();
  printf("read int: %d\n", aint);

  return 0;
}
