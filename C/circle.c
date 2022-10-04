//원의 면적을 계산하는 프로그램
#include <stdio.h>
int main(void)
{
	float radius;
	double area;

	printf("반지름을 입력하시오:");
	scanf("%f", &radius);

	area=3.14*radius*radius;
	printf("원의 면적:%f\n", area);
	system("pause");
	return 0;
}