#include <stdio.h>
int main(void)
{
	double d1=0.000123;  
	double d2=0.0000123; 

	printf("%f \n",d1); 
	printf("%e \n",d1); 
	printf("%g \n\n\n",d1); 

	printf("%f \n",d2); 
	printf("%e \n",d2); 
	printf("%g \n\n\n",d2); 

	system("pause");
	return 0;
}