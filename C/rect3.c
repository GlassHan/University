//������ü�� ����
#include <stdio.h>
int main(void)
{
	double w,h,tall,volume;

	printf("���θ� �Է��Ͻÿ�:");
	scanf("%lf", &w);
	printf("���θ� �Է��Ͻÿ�:");
	scanf("%lf", &h);
	printf("���̸� �Է��Ͻÿ�:");
	scanf("%lf", &tall);
	
	volume=w*h*tall;

	printf("������ü�� ����: %lf\n", volume);
	system("pause");
	return 0;
}
		