#include <stdio.h>
int main()
{
	long fact=1;
	int i=1,n;
	printf("������ �Է��Ͻÿ�:");
	scanf("%d",&n);
	while(i<=n)
	{
		fact=fact*i;
		i++;
	}
	printf("%d!�� %d�Դϴ�.",n,fact);
	system("pause");
	return 0;
}