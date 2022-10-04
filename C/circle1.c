//원기둥의 부피
#include <stdio.h>
int main (void)
{
	float radius;
	float height;
	double volume;

	printf("반지름을 입력하시오:");
	scanf("%f", &radius);

	printf("높이를 입력하시오:");
	scanf("%f", &height);

	volume=3.14*radius*radius*height;

	printf("원의 부피: %f\n", volume);
	system("pause");
	return 0;
}
