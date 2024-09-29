#include<stdio.h>
#include<locale.h>

int i, nome[5][50], consu[5][50];
float p1[5], p2[5], total[5];
	
main(void){
	setlocale(LC_ALL, "Portuguese");
	
	
	for(i=1; i<=4; i++){
		printf("Nome:  \n");
		fflush(stdin);
		gets(nome[i]);
		printf("Consurso:  \n");
		fflush(stdin);
		scanf("%i", &consu[i]);
		printf("P1:  \n");
		scanf("%i", &p1[i]);
		printf("P2:  \n");
		scanf("%i", &p2[i]);
	}
	
	system("cls");
	
	total[i] = p1[i] + p2[i];
	
	for(i=1; i<=5; i++){
		printf("Nome:  %i\n", nome[i]);
		printf("Consurso: %i\n", consu[i]);
		printf("P1: %i\n", p1[i]);
		printf("P2: %i\n", p2[i]);
		printf("Nota final: %i\n", total[i]);
	}
	
	
}	
