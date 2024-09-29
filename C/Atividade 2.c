#include <stdio.h>
#include <stdlib.h>

int main() {
    float va1, va2, va3;
    
    
    printf("Digite o primeiro valor: ");
    scanf("%f", &va1);
    
    printf("Digite o segundo valor: ");
    scanf("%f", &va2);
    
    printf("Digite o terceiro valor: ");
    scanf("%f", &va3);
    
    
    system("cls");
    
   
    if (va1 >= va2 && va1 >= va3) {
        if (va2 >= va3) {
            printf("MAIOR valor: %.2f\n", va1);
            printf("INTERMEDIÁRIO valor: %.2f\n", va2);
            printf("MENOR valor: %.2f\n", va3);
        } else {
            printf("MAIOR valor: %.2f\n", va1);
            printf("INTERMEDIÁRIO valor: %.2f\n", va3);
            printf("MENOR valor: %.2f\n", va2);
        }
    } else if (va2 >= va1 && va2 >= va3) {
        if (va1 >= va3) {
            printf("MAIOR valor: %.2f\n", va2);
            printf("INTERMEDIÁRIO valor: %.2f\n", va1);
            printf("MENOR valor: %.2f\n", va3);
        } else {
            printf("MAIOR valor: %.2f\n", va2);
            printf("INTERMEDIÁRIO valor: %.2f\n", va3);
            printf("MENOR valor: %.2f\n", va1);
        }
    } else {
        if (va1 >= va2) {
            printf("MAIOR valor: %.2f\n", va3);
            printf("INTERMEDIÁRIO valor: %.2f\n", va1);
            printf("MENOR valor: %.2f\n", va2);
        } else {
            printf("MAIOR valor: %.2f\n", va3);
            printf("INTERMEDIÁRIO valor: %.2f\n", va2);
            printf("MENOR valor: %.2f\n", va1);
        }
    }
    
    return 0;
}

