#include <stdio.h>
#define TAX_RATE 0.2

int main(void)
{
	const int MONTHS=12;
	int m_salary, y_salary;

	printf("������ �Է��Ͻÿ�:");
	scanf("%d", &m_salary);
	y_salary=MONTHS*m_salary;
	printf("������ %d�Դϴ�.", y_salary);
	printf("������ %f�Դϴ�.", y_salary*TAX_RATE);

	system("pause");
	return 0;
}