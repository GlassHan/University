//while문을 이용한 성적의 평균구하기 프로그램
#include <stdio.h>
int main()
{
	int grade,n;
	float sum,average;

	n=0;
	sum=0;
	grade=0;

	printf("종료시 음수 입력\n");

	while(grade>=0)
	{
		printf("성적을 입력하시오:");
		scanf("%d",&grade);

		sum+=grade;
		n++;
	}
	sum=sum-grade;
	n--;
	average=sum/n;
	printf("성적의 평균은 %f입니다.\n",average);

	system("pause");
	return 0;
}