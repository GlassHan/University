#include <stdio.h>
int main()
{
	double f_temp;
	double c_temp;

	printf("ȭ?? ?µ??? ?Է??Ͻÿ?");
    scanf("%lf", &f_temp);
	c_temp=5.0/9.0*(f_temp-32);
	printf("???? ?µ??? %f?Դϴ?", c_temp);

	system("pause");
	return 0;
}
