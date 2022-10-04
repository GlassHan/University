#include <stdio.h>
int main()
{
	double f_temp;
	double c_temp;

	printf("화씨 온도를 입력하시오");
    scanf("%lf", &f_temp);
	c_temp=5.0/9.0*(f_temp-32);
	printf("섭씨 온도는 %f입니다", c_temp);

	system("pause");
	return 0;
}
