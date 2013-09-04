#include <stdio.h>
const int M= 3;
const int N= 4;
#define P 2

//prototypes
void print_matrix(int A[M][N],int M, int N);
//globals
int main(){
	int A[M][N], B[N][P], C[M][P];
	A[M][N] = (
		(1,2,3,4),
		(5,3,52,5),
		(7,3,62,6)
		);
	print_matrix(A, M, N);
	return 0;
}

void print_matrix(int **A, int M, int N){
	int i,j;
	for(i=0; i<M; i++){
		for(j=0; j<N; j++){
			printf("%d\t", A[i][j]);
		}
		printf("\n");
	}
}