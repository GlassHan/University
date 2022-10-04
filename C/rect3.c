//직육면체의 부피
#include <stdio.h>
int main(void)
{
	double w,h,tall,volume;

	printf("가로를 입력하시오:");
	scanf("%lf", &w);
	printf("세로를 입력하시오:");
	scanf("%lf", &h);
	printf("높이를 입력하시오:");
	scanf("%lf", &tall);
	
	volume=w*h*tall;

	printf("직육면체의 부피: %lf\n", volume);
	system("pause");
	return 0;
}
		