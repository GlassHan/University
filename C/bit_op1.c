#include <stdio.h>
int main(void)
{
	int x=9;
	int y=10;

	printf("비트 AND = %08d \n", x&y);
	printf("비트 OR = %08d \n", x|y);
	printf("비트 XOR = %08d \n", x^y);
	printf("비트 NOT = %08d \n", ~x);

	system("pause");
	return 0;
}