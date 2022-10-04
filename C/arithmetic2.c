#include <stdio.h>
int main()
{
	double x,y,result;

	printf("두개의 실수를 입력하시오:");
	scanf("%lf %lf", &x, &y);

	result=x+y;
	printf("%f + %f = %f \n", x,y,result);
	result=x-y;
	printf("%f - %f = %f \n", x,y,result);
	result=x*y;
	printf("%f * %f = %f \n", x,y,result);
	result=x/y;
	printf("%f / %f = %f \n", x,y,result);
	result=(int)x%(int)y;
	printf("%f %% %f = %f \n", x,y,result);

	system("pause");
	return 0;
}