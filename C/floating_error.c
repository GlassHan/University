//�ε��Ҽ����� ������
#include <stdio.h>
int main(void)
{
	double x;

	x=(1.0e20+5.0)-1.0e20; //e20�� ��ȿ���� 16�ڸ� ������ ǥ�Ⱑ���ϱ⶧�� �����߻�
	printf("%f\n", x);
	system("pause");
	return 0;
}