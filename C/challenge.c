#include <stdio.h>
int main(void)
{
	char op;
	int x,y,result;

	printf("수식을 입력하시오.\n");
	printf("(예: 2+5)\n");
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
		printf("지원되지 않는 연산자입니다.");

    if(op == '&' || op == '|' || op == '^')
		printf("%#x %c %#x = %#x", x, op, y, result);
	else
	    printf("%d %c %d=%d", x,op,y,result);
	system("pause");
	return 0;
}