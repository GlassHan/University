#include <stdio.h> //초록색
int main()
{
	unsigned int color=0x003800;
	unsigned int result;

	printf("픽셀의 색상: %#08x \n", color);
	result=color&0x0000ff00;
	printf("마스크 연산 후: %#08x \n", result);
	result=result>>8;
	printf("최종 결과값: %#08x \n", result);

	system("pause");
	return 0;
}