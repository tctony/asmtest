#include <stdio.h>

extern long long asm_1024();
extern char asm_hello[9];

int main(int argc, char *argv[])
{
  long long ret = asm_1024();
  printf("%lld\n", ret);

  printf("%s\n", asm_hello);

  return 0;
}
