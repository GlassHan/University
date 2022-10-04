//자료형(6개)의 변수를 각각 선언
#include <stdio.h>
int main(void)
{
	int a;
	char b;
	short c;
	long d;
	float e;
	double f;

   printf("변수 a의 크기: %d\n", sizeof(a));
   printf("변수 b의 크기: %d\n", sizeof(b));
   printf("변수 c의 크기: %d\n", sizeof(c));
   printf("변수 d의 크기: %d\n", sizeof(d));
   printf("변수 e의 크기: %d\n", sizeof(e));
   printf("변수 f의 크기: %d\n", sizeof(f));
   system ("pause");
	return 0;
}