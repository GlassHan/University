#include <stdio.h>
int main(void)
{
	char op;
	int x,y,result;

	printf("������ �Է��Ͻÿ�.\n");
	printf("(��: 2+5)\n");
	printf(">>");

	scanf("%d %c %d", &x,&op,&y);

	if(op == '+')
		result=x+y;
	else if(op == '-')
		result=x-y;
	else if(op == '*')
		result=x*y;
	else if(op == '/')
		result=x/y;
	else if(op == '%')
		result=x%y;
	else if(op == '&')
		result=x&y;
	else if(op == '|')
		result=x|y;
	else if(op == '^')
		result=x^y;
	else
		printf("�������� �ʴ� �������Դϴ�.");

    if(op == '&' || op == '|' || op == '^')
		printf("%#x %c %#x = %#x", x, op, y, result);
	else
	    printf("%d %c %d=%d", x,op,y,result);
	system("pause");
	return 0;
}