//while���� �̿��� ������ ��ձ��ϱ� ���α׷�
#include <stdio.h>
int main()
{
	int grade,n;
	float sum,average;

	n=0;
	sum=0;
	grade=0;

	printf("����� ���� �Է�\n");

	while(grade>=0)
	{
		printf("������ �Է��Ͻÿ�:");
		scanf("%d",&grade);

		sum+=grade;
		n++;
	}
	sum=sum-grade;
	n--;
	average=sum/n;
	printf("������ ����� %f�Դϴ�.\n",average);

	system("pause");
	return 0;
}