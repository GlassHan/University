#include <stdio.h>
#include <limits.h>

int main()
{
	int number,min_value=INT_MAX;
	printf("������ �Է��Ͻÿ�\n����� Ctrl+z\n");
	while(scanf("%d",&number)!=EOF)
	{
		if(number<min_value)
			min_value=number;
	}
	printf("�ּҰ��� %d",min_value);
	system("pause");
	return 0;
}