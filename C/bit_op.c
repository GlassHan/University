#include <stdio.h>
int main(void)
{
	int x=9;
	int y=10;

	printf("��Ʈ AND = %08X \n", x&y);
	printf("��Ʈ OR = %08X \n", x|y);
	printf("��Ʈ XOR = %08X \n", x^y);
	printf("��Ʈ NOT = %08X \n", ~x);

	system("pause");
	return 0;
}