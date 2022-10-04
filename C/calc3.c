#include <stdio.h>
int main(void)
{
	char op;
	int x,y,result;

	printf("수식을 입력하시오.\n");
	printf("(예: 2+5)\n");
	printf(">>");

	scanf("%d %c %d", &x,&op,&y);

	switch(op){
	case '+':
		result=x+y;
		break;
    case '-':
	 	result=x-y;
		break; 
   	case '*':
		result=x*y;
		break; 

    case '/':
		result=x/y;
		break; 

	case '%':
		result=x%y;
		break; 
	case '&':
		result=x&y;
		break; 
    case '|':
		result=x|y;
		break; 
    case '^':
		result=x^y;
		break; 
	default:
		printf("지원되지 않는 연산자 입니다.");
		break;
	}
	if(op == '&' || op == '|' || op == '^')
		printf("%#x %c %#x = %#x", x, op, y, result);
	else
	    printf("%d %c %d=%d", x,op,y,result);
   
	system("pause");
	return 0;
}