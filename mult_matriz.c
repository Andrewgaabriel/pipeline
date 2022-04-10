#include <stdio.h>
#include <stdlib.h>


#define    DIM 5

void matrix_mult(int matrixA[][DIM], int matrixB[][DIM], int matrixC[][DIM], int linhaA, int colunaA );


void print_matrix(int matrix[][DIM]) {
    int i, j;
    for (i = 0; i < DIM; i++) {
        for (j = 0; j < DIM; j++) {
            printf("\t|%d ", matrix[i][j]);
        }
        printf("\n");
    }
    printf("\n\n");
}


int main() {
    int matrizA[DIM][DIM], matrizB[DIM][DIM], matrizC[DIM][DIM];
    int linhaA, colunaA;
    int i,j;

    linhaA = DIM; 
    colunaA = DIM;

    for(i = 0; i < linhaA; i++){
        for(j = 0; j < colunaA; j++){
            matrizA[i][j] = i+j;
            matrizB[j][i] = i-j;            
        }
    }

    print_matrix(matrizA);
    print_matrix(matrizB);

    matrix_mult(matrizA, matrizB, matrizC, linhaA, colunaA);
    print_matrix(matrizC);
}


void matrix_mult(int matrixA[][DIM], int matrixB[][DIM], int matrixC[][DIM], int linhaA, int colunaA ){


    int i, somaprod, linha, coluna;
    for(linha=0; linha<linhaA; linha++){
        for(coluna=0; coluna<colunaA; coluna++){
        somaprod=0;
            for(i=0; i<linhaA; i++) {
                somaprod += matrixA[linha][i]*matrixB[i][coluna];
            }
            matrixC[linha][coluna] = somaprod;
        }
    }
}