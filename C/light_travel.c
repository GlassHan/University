//태양빛 도달 시간
#include <stdio.h>
int main(void)
{
	double light_speed = 300000;
	double distance = 149600000;
	double time;
	int itime;
	
	time = distance / light_speed;
	itime= time;

	printf("빛의 속도는 %fkm/s \n", light_speed);
	printf("태양과 지구와의 거리 %fkm \n", distance);
	printf("도달 시간은 %d분 %d초 \n", itime/60, itime%60);
	system("pause");
	return 0;
}