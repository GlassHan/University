#include <stdio.h>
int main()
{
	int number;

	printf("������ �Է��Ͻÿ�");
	scanf("%d", &number);

	if(number <0)
		number=-number;

	printf("������ %d�Դϴ�. \n", number);
	system("pause");
	return 0;
}