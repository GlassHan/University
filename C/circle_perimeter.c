//원의 둘레를 계산하는 프로그램
#include <stdio.h>
int main(void)
{
	float radius;
	double perimeter;

	printf("원의 반지름을 입력하시오:");
	scanf("%f", &radius);

	perimeter=3.141592*2*radius;
	printf("원의 둘레: %f\n", perimeter);
	system("pause");
	return 0;
}