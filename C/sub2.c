//����ڷκ��� �Է� ���� 5���� ������ "��"�� ����Ͽ� ���
#include <stdio.h>

int main(void)
{
	int a,b,c,d,e,sub;
	printf("ù��° ���ڸ� �Է��Ͻÿ�:");
	scanf("%d", &a);
	printf("�ι�° ���ڸ� �Է��Ͻÿ�:");
	scanf("%d", &b);
	printf("����° ���ڸ� �Է��Ͻÿ�:");
	scanf("%d", &c);
	printf("�׹�° ���ڸ� �Է��Ͻÿ�:");
	scanf("%d", &d);
	printf("�ټ���° ���ڸ� �Է��Ͻÿ�:");
	scanf("%d", &e);

	sub=a-b-c-d-e;
	printf("�ټ����� ��: %d", sub);

	system("pause");
	return 0;
}