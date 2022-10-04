//x=11, y=-11로 바꿔서 프로그램
#include <stdio.h>
int main(void)
{
	int x= 11;
	int y= -11;

	printf("x=%08X\n",x);
	printf("y=%08X\n",y);
	printf("x+y=%08X\n",x+y);

	system("pause");
	return 0;
}