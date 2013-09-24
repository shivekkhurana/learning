#include "stdio.h"
#include "problem_info.h"

int main(){
	info("Multiples of 3 and 5",1);
	
	int index, sum=0;
	for(index=0; index<1000; index++){
		if(index%3 == 0 || index%5 == 0){
			sum += index;
		}
	}

	printf("\nsum = %d\n", sum);
}