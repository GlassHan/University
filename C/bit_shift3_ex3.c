#include <stdio.h> //�ʷϻ�
int main()
{
	unsigned int color=0x003800;
	unsigned int result;

	printf("�ȼ��� ����: %#08x \n", color);
	result=color&0x0000ff00;
	printf("����ũ ���� ��: %#08x \n", result);
	result=result>>8;
	printf("���� �����: %#08x \n", result);

	system("pause");
	return 0;
}