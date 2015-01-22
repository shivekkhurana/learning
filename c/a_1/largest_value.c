#include <stdio.h>

//prototypes
void step(void);

//globals
int step_value = 100000000000;

int main(){
	int test;
	test = 0;
	while(0){
		if (test == 0){
			//int overflowed
			printf("++++++++++++++++++++++++++++++\n%d\n", test);
			break;
		}
		printf("%d\n", test);
	}
	printf("%d", step_value);
	return 0;
}

void step(){
	step_value/=10;
}
