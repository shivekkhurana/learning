//program to compute factorial

#include <stdio.h>

//prototypes
int fact(int);

int main(){
	int i;
	char flag = 'y';
	while(flag != 'n'){
		//printf("Enter a digit whose factorial needs to be computed : ");
		scanf("%d", &i);

		printf("\nFactorial of %d is %d\nnext no.  or 'n' to exit : ", i, fact(i));
		scanf("%c", &flag);
	}
	return 0;
}

int fact(int i){
	int f;
	for(f=1; i>1; f*=i--);
	return f;
}
