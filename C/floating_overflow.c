#include<stdio.h>
int main(void)
{
	float x=1e39;
	float a= 1.23456e-38;
	float b= 1.23456e-40;   //�����Ϸ��� 0.012345e-38�� �ڵ����� �Ǽ� ����÷ο찡 �߻����� ���� 
	float c= 1.23456e-46;

	printf("x=%e\n",x);
	printf("a=%e\n",a);
	printf("b=%e\n",b);
	printf("c=%e\n",c);
	system("pause");
}