//program to implement strcmp in hand

#include <stdio.h>

//prototypes
int my_strcmp(const char*, const char*);

int main(){
	char *str1 = "shivek\0", *str2 = "shivek\0";
	int match;
	match = my_strcmp(str1,str2);
	printf( (match==0)?"Match":"No match. err : %d", match );
	return 0;
}


int my_strcmp(const char* str1, const char* str2){
	int i=0;
	
	//*//
	while(*(str1+i) != '\0'){
		i++;
		if(*(str1+i) != *(str2+i))
			break;
	}
	return *(str1+i) - *(str2+i);
	//*/
}


