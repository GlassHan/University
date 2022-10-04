//엔화를 계산하는 프로그램
#include <stdio.h>
int main(void)
{
	int yen;
	int krw;

	printf("엔화 금액을 입력하시오:");
	scanf("%d", &yen);

		krw= 9*yen;

	printf("엔화 %d달러는 %d원입니다.\n", yen, krw);

	system("pause");
	return 0;
}