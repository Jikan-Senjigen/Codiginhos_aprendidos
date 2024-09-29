#include <stdio.h>


float ler_nota() {
    float nota;
    do {
        scanf("%f", &nota);
        if (nota < 0 || nota > 10) {
            printf("Valor inválido! Redigite...\n");
        }
    } while (nota < 0 || nota > 10);
    return nota;
}


float calcula_media(float n1, float n2) {
    return (n1 + n2) / 2;
}


void exibe_resultado(float media) {
    printf("Media: %.2f\n", media);
}

int main(void) {
    float n1, n2, med;
    printf("Primeira prova: ");
    n1 = ler_nota();
    printf("Segunda prova: ");
    n2 = ler_nota();
    med = calcula_media(n1, n2);
    exibe_resultado(med);

    return 0;
}

