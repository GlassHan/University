#include <stdio.h>
#include <math.h>

int main(void)
{
	double a, b, c, dis;

	printf("��� a�� �Է��Ͻÿ�:");
	scanf("%lf", &a);
	printf("��� b�� �Է��Ͻÿ�:");
	scanf("%lf", &b);
	printf("��� c�� �Է��Ͻÿ�:");
	scanf("%lf", &c);

	if(a ==0)
		printf("�������� ���� %d�Դϴ�.\n", -c/b);
	else
	{
		dis = (b*b-4.0*a*c);
		if(dis >=0)
		{
			printf("�������� ���� %f�Դϴ�. \n", (-b+sqrt(dis))/(2.0*a));
			printf("�������� ���� %f�Դϴ�. \n", (-b-sqrt(dis))/(2.0*a));
		}
		else
			printf("�Ǳ��� �������� �ʽ��ϴ�.");
	}
	system("pause");
	return 0;
}