#include <stdio.h>
int main()
{
	int meter;
	int i =0;

	while(i<3)
	{
		meter=i*1609;
		printf("%d������ %d�����Դϴ�.\n",i,meter);
		i++;
	}
	system("pause");
	return 0;
}