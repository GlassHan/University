#include <stdio.h>

void main(void)
{
	char str[7] = "string";

	printf("/%2s/\n", str);
	printf("/%10s/\n", str);
	printf("/%10.5s/\n", str);
	printf("/%-10.5s/\n", str);
	system("pause");
}