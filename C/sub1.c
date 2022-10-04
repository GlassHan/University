//5개의 숫자의 "차"를 계산하는 프로그램

#include <stdio.h>

int main(void)
{
	int x;
	int y;
	int z;
	int a;
	int b;
	int sub;
   
	x=100;
	y=200;
	z=300;
	a=400;
	b=500;

    sub=x-y-z-a-b;
	printf("두수의 차: %d",sub);

	system("pause");
	return 0;
}


