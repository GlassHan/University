//������ �ڷ����� ũ�⸦ ����ϴ� ���α׷�
#include <stdio.h>
int main(void)
{
	short year=0;            //0���� �ʱ�ȭ�Ѵ�.
	int sale=0;              //0���� �ʱ�ȭ�Ѵ�.
	long total_sale=0;       //0���� �ʱ�ȭ�Ѵ�.
	

	year=10;                 //�� 3��2õ�� ���� �ʵ��� ����
	sale=200000000;          //�� 21���� ���� �ʵ��� ����
	total_sale=year*sale;    //�� 21���� ���� �ʵ��� ����

	printf("total_sale=%d\n", total_sale);
	system("pause");
	return 0;
}