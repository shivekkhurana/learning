#include <stdio.h>

#define MAXNUMS 3

int main(){
	float arr[MAXNUMS], temp;
	int i;

	//input three nums
	for(i=0; i<MAXNUMS; i++)
		scanf("%f", &arr[i]);

	//search linearly and compare to temp
	temp = arr[0]; //init
	for(i=0; i<MAXNUMS; i++){
		if(arr[i] > temp)
			temp = arr[i];
	}
	
	printf("Max of above nos. is %f", temp);
	return 0;
}
