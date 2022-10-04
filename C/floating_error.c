//부동소수점형 사용오차
#include <stdio.h>
int main(void)
{
	double x;

	x=(1.0e20+5.0)-1.0e20; //e20은 유효숫자 16자리 까지만 표기가능하기때문 에러발생
	printf("%f\n", x);
	system("pause");
	return 0;
}