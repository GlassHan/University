//�¾�� ���� �ð�
#include <stdio.h>
int main(void)
{
	double light_speed = 300000;
	double distance = 149600000;
	double time;
	int itime;
	
	time = distance / light_speed;
	itime= time;

	printf("���� �ӵ��� %fkm/s \n", light_speed);
	printf("�¾�� �������� �Ÿ� %fkm \n", distance);
	printf("���� �ð��� %d�� %d�� \n", itime/60, itime%60);
	system("pause");
	return 0;
}