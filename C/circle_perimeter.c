//���� �ѷ��� ����ϴ� ���α׷�
#include <stdio.h>
int main(void)
{
	float radius;
	double perimeter;

	printf("���� �������� �Է��Ͻÿ�:");
	scanf("%f", &radius);

	perimeter=3.141592*2*radius;
	printf("���� �ѷ�: %f\n", perimeter);
	system("pause");
	return 0;
}