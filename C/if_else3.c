#include <stdio.h>
int main()
{
	float n,d,result;

	printf("���ڸ� �Է��Ͻÿ�:");
	scanf("%f", &n);
	printf("�и� �Է��Ͻÿ�:");
	scanf("%f", &d);

	if(d==0)
	{
		printf("0���� ���� ���� �����ϴ�. \n");
	}
	else
	{
		result=n/d;
		printf("����� %f�Դϴ�. \n", result);
	}
	system("pause");
	return 0;
}