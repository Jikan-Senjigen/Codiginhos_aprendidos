#include <stdio.h>
#include <stdlib.h>

int main() {
    float va1, va2;
    
    printf("Digite o primeiro valor: ");
    scanf("%f", &va1);
    
    printf("Digite o segundo valor: ");
    scanf("%f", &va2);
    
    
  
    system("cls");
    
    
    if (va1 > va2) {
        printf("%.2f e o MAIOR valor.\n", va1);
        printf("%.2f e o MENOR valor.\n", va2);
    } else if (va2 > va1) {
        printf("%.2f e o MAIOR valor.\n", va2);
        printf("%.2f e o MENOR valor.\n", va1);
    } else {
        printf("Os Valores sao Igualzinho.\n");
    }
    
    return 0;
}

