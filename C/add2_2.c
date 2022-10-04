//사용자로부터 입력 받은 5개의 숫자의 합을 계산하는 프로그램
#include <stdio.h>
int main(void)
{
	int a,b,c,d,e,sum;

	printf("다섯 개의 숫자를 입력하시오.");
    scanf("%d", &a);
	scanf("%d", &b);
	scanf("%d", &c);
	scanf("%d", &d);
	scanf("%d", &e);

	sum=a+b+c+d+e;
	printf("5개의 숫자의 합:%d", sum);
	system("pause");
	return 0;

}