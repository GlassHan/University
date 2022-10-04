#include<stdio.h>
int main(void)
{
	float x=1e39;
	float a= 1.23456e-38;
	float b= 1.23456e-40;   //컴파일러가 0.012345e-38로 자동조정 되서 언더플로우가 발생하지 않음 
	float c= 1.23456e-46;

	printf("x=%e\n",x);
	printf("a=%e\n",a);
	printf("b=%e\n",b);
	printf("c=%e\n",c);
	system("pause");
}