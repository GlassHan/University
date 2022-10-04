#include <stdio.h>
int main()
{
	int i=3;
	while(i)
	{
		printf("%d는 참입니다.\n",i);
		i--;
	}
	printf("%d은 거짓입니다.\n",i);
	system("pause");
	return 0;
} 