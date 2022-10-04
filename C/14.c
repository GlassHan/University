#include <stdio.h>
int main()
{
	int x,y;
	for(y=1;y<5;y++)
	{
		for(x=0;x<10;x++)
			printf("*");
		printf("\n");
	}
	system("pause");
	return 0;

}