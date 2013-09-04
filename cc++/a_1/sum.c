#include <stdio.h>

//prototypes
int sum(int, int);

int main(){
	int x,y;
	scanf("%d", &x);
	scanf("%d", &y);
	printf("Number 1 is %d\nNumber 2 is %d\nSum is %d", x, y, sum(x,y));
	return 0;
}

int sum(int x, int y){
	return x+y;
}
