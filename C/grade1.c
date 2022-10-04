#include <stdio.h>
int main(void)
{
	int score;

	printf("성적을 입력하시오:");
	scanf("%d", &score);

	if(score >= 95)
		printf("합격: 학점 A+ \n");
	else if (score >= 90)
		printf("합격: 학점 A0\n");
	else if (score >= 85)
		printf("합격: 학점 B+\n");
	else if (score >= 80)
		printf("합격: 학점 B0\n");
	else if (score >= 75)
		printf("합격: 학점 C+\n");
	else if (score >= 70)
		printf("합격: 학점 C0\n");
	else if (score >= 65)
		printf("합격: 학점 D+\n");
	else if (score >= 60)
		printf("합격: 학점 D0\n");
	else 
		printf("불합격: 학점 F\n");
	system("pause");
	return 0;
}