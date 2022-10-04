#include <stdio.h>

void main(void)
{
	float value = 1.234560;

	printf("/%f/\n", value); 
    printf("/%7.1f/\n", value);
	printf("/%7.5f/\n", value);
	printf("/%8.3f/\n", value);
	printf("/%1.1f/\n", value);
	system("pause");
}