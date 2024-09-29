#include <stdio.h>
#include <locale.h> 

char pro1[50], pro2[50];
float preco1, preco2, total;

int main(void) {
    setlocale(LC_ALL, "");

    printf("Primeiro produto: ");
    scanf("%49s", pro1);

    printf("Preço: ");
    scanf("%f", &preco1);

    printf("Segundo produto: ");
    scanf("%49s", pro2);

    printf("Preço: ");
    scanf("%f", &preco2);

    total = preco1 + preco2;
    
    system ("cls")

    printf("1 produto = %s, Preço = %.2f\n", pro1, preco1);
    printf("2 produto = %s, Preço = %.2f\n", pro2, preco2);
    printf("Total = %.2f\n", total);

    return 0;
}

