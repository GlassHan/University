//���簢���� ���̿� �ѷ�

#include <stdio.h>
int main(void)
{
	double w,h,area,perimeter;

	w=10.0;
	h=5.0;
	area=w*h;
	perimeter=2*(w+h);

	printf("�簢���� ����: %lf\n �簢���� �ѷ�: %lf\n",area,perimeter);
	system("pause");
	return 0;
}