//������� ����
#include <stdio.h>
int main (void)
{
	float radius;
	float height;
	double volume;

	printf("�������� �Է��Ͻÿ�:");
	scanf("%f", &radius);

	printf("���̸� �Է��Ͻÿ�:");
	scanf("%f", &height);

	volume=3.14*radius*radius*height;

	printf("���� ����: %f\n", volume);
	system("pause");
	return 0;
}
