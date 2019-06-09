#include <stdio.h>

int main(){
	int a, b, c;
	a = 10;
	b = a * 100;
	c = b * a * 1000;
	int mat[100][100];
	for (int i = 0; i < 100; i++){
		for (int j = 0; j < 100; j ++){
			mat[i][j] = (10*i)+j;
		}
	}
	for (int i = 0; i < 100; i++){
		for (int j = 0; j < 100; j ++){
			if (mat[i][j] <= b)
				mat[i][j] = a;
			else
				mat[i][j] = c;	
		}
	}
	for (int i = 0; i < 100; i++){
		for (int j = 0; j < 100; j ++){
			printf ("%d ", mat[i][j]);
		}
	}

}