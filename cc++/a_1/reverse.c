//program to implement reverse in hand

#include <stdio.h>
#define MAX 20

//prototypes
 void reverse(char []);

int main(){
	char str[MAX] = "shivek";
	printf("%s",str);
	reverse(str);

	printf("\n%s",str);
	return 0;
}


void reverse(char str[]){
	int len, i, j;
	for(len=0; str[len] != '\0'; len++); //get length of string
	
	/*
		a = 6
		b = 5
		a = a+b = 11
		b = a-b = 11-5 = 6
		a = a-b = 11-6 = 5
	*/
	for(i=0, j=len-1; i<(len/2); i++,j--)
	{
		str[i] = str[i] + str[j];
		str[j] = str[i] - str[j];
		str[i] = str[i] - str[j];
	}	
}


