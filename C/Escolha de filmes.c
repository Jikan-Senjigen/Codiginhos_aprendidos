#include <stdio.h>
#include <conio.h>

struct cine_cliente{
	char nome[50], cpf[50], filme[50]; 
	
};


main(void){
	
	struct cine_cliente cliente1;
	
	printf("Cliente: ");
	fflush(stdin);
	fgets(cliente1.nome, 50, stdin);
	printf("CPF: ");
	fflush(stdin);
	fgets(cliente1.cpf,  50, stdin);
	printf("Filme: ");
	fflush(stdin);
	fgets(cliente1.filme,  50, stdin);
	
	system("cls");


    
    struct cine_cliente cliente2;
	
	printf("Cliente: ");
	fflush(stdin);
	fgets(cliente2.nome, 50, stdin);
	printf("CPF: ");
	fflush(stdin);
	fgets(cliente2.cpf,  50, stdin);
	printf("Filme: ");
	fflush(stdin);
	fgets(cliente2.filme,  50, stdin);
	
	system("cls");

   
    
    struct cine_cliente cliente3;
	
	printf("Cliente: ");
	fflush(stdin);
	fgets(cliente3.nome, 50, stdin);
	printf("CPF: ");
	fflush(stdin);
	fgets(cliente3.cpf,  50, stdin);
	printf("Filme: ");
	fflush(stdin);
	fgets(cliente3.filme,  50, stdin);
	
	system("cls");
	
	printf("Cliente:  %s", cliente1.nome);
    printf("CPF: %s", cliente1.cpf);
    printf("Filme Escolhido: %s", cliente1.filme);
    printf("\n");
	
	printf("Cliente 2:  %s", cliente2.nome);
    printf("CPF: %s", cliente2.cpf);
    printf("Filme Escolhido: %s", cliente2.filme);
    printf("\n");

    printf("Cliente 3:  %s", cliente3.nome);
    printf("CPF: %s", cliente3.cpf);
    printf("Filme Escolhido: %s", cliente3.filme);
	
	};
	

