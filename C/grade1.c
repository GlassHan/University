#include <stdio.h>
int main(void)
{
	int score;

	printf("������ �Է��Ͻÿ�:");
	scanf("%d", &score);

	if(score >= 95)
		printf("�հ�: ���� A+ \n");
	else if (score >= 90)
		printf("�հ�: ���� A0\n");
	else if (score >= 85)
		printf("�հ�: ���� B+\n");
	else if (score >= 80)
		printf("�հ�: ���� B0\n");
	else if (score >= 75)
		printf("�հ�: ���� C+\n");
	else if (score >= 70)
		printf("�հ�: ���� C0\n");
	else if (score >= 65)
		printf("�հ�: ���� D+\n");
	else if (score >= 60)
		printf("�հ�: ���� D0\n");
	else 
		printf("���հ�: ���� F\n");
	system("pause");
	return 0;
}