#include <stdio.h>
int main(void)
{
	char op;
	int x,y,result;

	printf("������ �Է��Ͻÿ�.\n");
	printf("(��: 2+5)\n");
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
	default:
		printf("�������� �ʴ� ������ �Դϴ�.");
		break;
	}

    printf("%d %c %d=%d", x,op,y,result);
	system("pause");
	return 0;
}