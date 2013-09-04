//program to input name and print it

#include <stdio.h>

#define MAX 100

int main()
{
	char str[MAX], temp;
	int i;

	//input name char by char
	for(i=0; (temp = getchar())!=EOF; i++)
		*(str+i) = temp;
	
	//print hello + name
	printf("\nHello, %s", str);

	return 0;
}
