#include <stdio.h>
#include <conio.h>

struct ficha_de_aluno{
	char nome[30], disc[30];
	float p1, p2, total;
};

int main(){
	 struct ficha_de_aluno aluno;
	 printf("\n------------Cadastro de Aluno :) -----------------\n\n\n");
	 printf("Estudante .....: ");
	 fflush(stdin);
	 fgets(aluno.nome, 50, stdin);
	 
	 printf("Disciplina:");
	 fflush(stdin);
	 fgets(aluno.disc, 50, stdin);
	 
	 printf("Nota do P1: ");
	 scanf("%f", &aluno.p1);
	 printf("Nota do P2: ");
	 scanf("%f", &aluno.p2);
	 
	 aluno.total = aluno.p1 + aluno.p2;
	 
	 system("cls");
	 
	 system("cls");
	 
	 struct ficha_de_aluno aluno2;
	 printf("\n------------Cadastro de Aluno :) -----------------\n\n\n");
	 printf("Estudante .....: ");
	 fflush(stdin);
	 fgets(aluno2.nome, 50, stdin);
	 
	 printf("Disciplina:");
	 fflush(stdin);
	 fgets(aluno2.disc, 50, stdin);
	 
	 printf("Nota do P1: ");
	 scanf("%f", &aluno2.p1);
	 printf("Nota do P2: ");
	 scanf("%f", &aluno2.p2);
	 
	 aluno2.total = aluno2.p1 + aluno2.p2;
	 
	 system("cls");
	 
	 printf("Aluno: %s" , aluno.nome);
	 printf("Disciplina: %s", aluno.disc);
	 printf("P1: %2.f\n", aluno.p1);
	 printf("P2:  %2.f\n", aluno.p2);
	 printf("Nota final: %2.f\n", aluno.total );
	 printf("\n");
	 
	 printf("Aluno: %s" , aluno2.nome);
	 printf("Disciplina: %s", aluno2.disc);
	 printf("P1: %2.f\n", aluno2.p1);
	 printf("P2:  %2.f\n", aluno2.p2);
	 printf("Nota final: %2.f\n", aluno2.total );
	 
	 
	 
	 
	 
	 
}
