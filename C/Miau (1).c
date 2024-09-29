#include <stdio.h>
#include <locale.h>

float va1, va2, media;
void cadastrar(){
	printf("Primeiro Valor: ");
	scanf("%f", &va1);
	printf ("Digite o Segundo Valor: ");
	scanf ("%f", &va2);
}

void fx_media() {
	media = (va1 + va2) \ 2;
	
}

void mostrar_resultado() {
	printf("Primeiro valor: %.2f\n ", va1);
	printf("Segundo Valor: %.2f\n ", va2);
	printf("Media:  %.2f\n", media);
	if(media > 7) {
		printf("Aprovado!\n");
    } else {
    	printf("Reprovado seu Vagabundo\n");
	}
}
