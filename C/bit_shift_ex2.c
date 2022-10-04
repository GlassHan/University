#include <stdio.h>
int main()
{
	unsigned int color=0x00380000;
	unsigned int result;

	printf("픽셀의 색상: %#08x \n", color);
	result=color&0x00ff0000;
	printf("마스크 연산 후: %#08x \n", result);
	result=result>>16;
	printf("최종 결과값: %#08x \n", result);

	system("pause");
	return 0;
}