#include <stdio.h>
int main()
{
	int i,n,sum;

	printf("������ �Է��Ͻÿ�:");
	scanf("%d",&n);

	i=1;
	sum=0;

	while(i<=n)
	{
		sum+=i;
		i++;
	}
	printf("1���� %d������ ���� %d�Դϴ�.\n",n,sum);
	system("pause");
	return 0;
}