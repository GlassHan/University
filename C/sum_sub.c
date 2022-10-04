//5개의 숫자의 "합"과 5개의 숫자의 "차"를 계산하는 프로그램

#include <stdio.h>

int main(void)
{
	int a;
	int b;
	int c;
	int d;
	int e;
	int f;
	int g;
	int h;
	int i;
	int j;
	int sumsub;

	a=10;
	b=20;
	c=30;
	d=40;
	e=50;
	f=60;
	g=70;
	h=80;
	i=90;
	j=100;

	sumsub=a+b+c+d+e-f-g-h-i-j;
	printf("다섯개의 수의 합차: %d", sumsub);
	system("pause");
	return 0;
}


