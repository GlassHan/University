#include <stdio.h>
int main()
{
	int x=4;

	printf("비트 << = %#08x \n", x<<1);
	printf("비트 >> = %#08x \n", x>>1);

	system("pause");
	return 0;
}