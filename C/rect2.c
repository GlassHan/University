//사각형의 넓이와 둘레
#include <stdio.h>
int main(void)
{
	double w,h,area,perimeter;

	printf("가로길이를 입력하시오:");
	scanf("%lf", &w);
	printf("높이를 입력하시오:");
	scanf("%lf", &h);
	
	area=w*h;
	perimeter=2*(w+h);

	printf("사각형의 넓이: %lf\n 사각형의 둘레: %lf\n", area,perimeter);
	system("pause");
	return 0;
}