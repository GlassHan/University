//��ȭ�� ����ϴ� ���α׷�
#include <stdio.h>
int main(void)
{
	int yen;
	int krw;

	printf("��ȭ �ݾ��� �Է��Ͻÿ�:");
	scanf("%d", &yen);

		krw= 9*yen;

	printf("��ȭ %d�޷��� %d���Դϴ�.\n", yen, krw);

	system("pause");
	return 0;
}