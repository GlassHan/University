#include <stdio.h>
int main(void)
{
	int x, y, result;
	printf("�ΰ��� ������ �Է��Ͻÿ�:");
	scanf("%d %d", &x, &y);

    result = x+ y;
	printf("%d + %d= %d\n", x, y, result);
	result = x- y;
	printf("%d - %d= %d\n", x, y, result);
	result = x* y;
	printf("%d * %d= %d\n", x, y, result);
	result = x/ y;
	printf("%d / %d= %d\n", x, y, result);
	result = x% y;
	printf("%d %% %d= %d\n", x, y, result);
	system("pause");
	return 0;
}