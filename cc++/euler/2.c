#include "stdio.h"
#include "problem_info.h"

int main(){
	info("Even Fibonacci numbers",2);
	long int a=0, b=1, c, index, sum=0; //store fibonacci terms

	for(index = 0; 1==1; index++){
		c = a + b;
		if(c > 4000000){
			break;
		}
		a = b;
		b = c;
		if(c%2 == 0){
			printf("%ld\n", c);
			sum+=c;
		}
	}

	printf("sum = %ld\n", sum);
}