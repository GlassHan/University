//����ڷκ��� �Է� ���� 5���� ������ "��"�� ����Ͽ� ���
#include <stdio.h>

int main(void)
{
	int a,b,c,d,e,sum;

	printf("ù��° ���ڸ� �Է��Ͻÿ�.");
	scanf("%d", &a);
	printf("�ι�° ���ڸ� �Է��Ͻÿ�.");
	scanf("%d", &b);
	printf("����° ���ڸ� �Է��Ͻÿ�.");
	scanf("%d", &c);
	printf("�׹�° ���ڸ� �Է��Ͻÿ�.");
	scanf("%d", &d);
	printf("�ټ���° ���ڸ� �Է��Ͻÿ�.");
	scanf("%d", &e);

	sum=a+b+c+d+e;
	printf("�ټ����� ��:%d", sum);
	system("pause");
		return 0;
}