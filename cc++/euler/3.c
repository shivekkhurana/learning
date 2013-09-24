#include "stdio.h"
#include "common/problem_info.h"
#include "common/prime.h"

int main(){
	info("Largest prime factor",3);

	unsigned long long int test_case=600851475143, divisor, factor;
	for(divisor=test_case; divisor > 0; divisor--){
		if(test_case%divisor == 0){// check if divisor is a factor or not
			printf("	is factor %llu\n", divisor);
			factor = divisor;
			if(is_prime(factor) == 1){
				printf("		is prime %llu\n", divisor);
				//divisor is prime, break
				break;
			}
		}
	}
	printf("largest prime factor of %llu is %llu\n", test_case, factor);
	return 0;
}