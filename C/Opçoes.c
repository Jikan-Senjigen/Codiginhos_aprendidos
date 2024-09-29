#include <stdio.h>
#include <locale.h>

enum Semana {segunda, terca, quarta};
int dia;
main(void){
	setlocale(LC_ALL, "");
	enum Semana dia;
	printf("AGENDAMENTO SEMANA/n");
	printf("1- Segunda   /n2- Terça    /    n3- Quarta");
	scanf("%i", &dia);
	system("cls");
	
	dia = dia - 1;
	
	switch(dia){
		case segunda:
			printf("Segunda-Feira ");
			break;
		case terca:
			printf("Terça-Feira ");
			break;
		case quarta:
			printf("Quarta-Feira ");
			break;
		default:
			printf("Valor Invalido ")	;		
	
	}	
		
	system("pause");
	return 0;	
		
		
		
	}
	

	
	
	
	
	
	
	

