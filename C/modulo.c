//������ ������ ���α׷�
#include <stdio.h>

#define SEC_PER_MINUTE 60

int main(void)
{
	int input, minute, second;

	printf("�ʴ����� �ð��� �Է��Ͻÿ�:");
    scanf("%d", &input);

	minute = input / SEC_PER_MINUTE;
	second = input% SEC_PER_MINUTE;

	printf("%d�ʴ� %d�� %d���Դϴ�. \n", input, minute, second);
	system("pause");
	return 0;
}