//직사각형의 넓이와 둘레

#include <stdio.h>
int main(void)
{
	double w,h,area,perimeter;

	w=10.0;
	h=5.0;
	area=w*h;
	perimeter=2*(w+h);

	printf("사각형의 넓이: %lf\n 사각형의 둘레: %lf\n",area,perimeter);
	system("pause");
	return 0;
}