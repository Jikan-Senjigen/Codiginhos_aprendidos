#include <stdio.h>
#include <stdlib.h>

int linha, coluna;
char matriz[3][3][20];

int main(void) {
    for (linha = 0; linha <= 2; linha++) {
        for (coluna = 0; coluna <= 2; coluna++) {
            printf("Digite %i palavra: ");
            fflush(stdin);
            gets(matriz[linha][coluna]);
            i++;
        }
    }

    for (linha = 0; linha <= 2; linha++) {
        for (coluna = 0; coluna <= 2; coluna++) {
            printf("%s ", matriz[linha][coluna]);
        }
        printf("\n");
    }

    return 0;
}
