#include <stdio.h>

extern long long asm_1024();

int main(int argc, char *argv[])
{
  long long ret = asm_1024();
  printf("%lld\n", ret);
  return 0;
}
