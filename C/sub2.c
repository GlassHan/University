//사용자로부터 입력 받은 5개의 정수의 "차"를 계산하여 출력
#include <stdio.h>

int main(void)
{
	int a,b,c,d,e,sub;
	printf("첫번째 숫자를 입력하시오:");
	scanf("%d", &a);
	printf("두번째 숫자를 입력하시오:");
	scanf("%d", &b);
	printf("세번째 숫자를 입력하시오:");
	scanf("%d", &c);
	printf("네번째 숫자를 입력하시오:");
	scanf("%d", &d);
	printf("다섯번째 숫자를 입력하시오:");
	scanf("%d", &e);

	sub=a-b-c-d-e;
	printf("다섯수의 차: %d", sub);

	system("pause");
	return 0;
}