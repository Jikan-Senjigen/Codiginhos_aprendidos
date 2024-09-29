#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char nome[5][70];
int i, nfunc = 0;
int main(){
	while (1)
	{
		printf("Digite o nome do Funcionario (%d), ou de Enter para finalizar");
		fgets(nome[nfunc], 70, stdin);
		if (strlen(nome[nfunc])== 1)
			break;
		nfunc++;
		if (nfunc == 5)
			break;	
	}
	
	system ("cls");
	printf("Sequencial dos Nomes \n");
	for (i = 0; i < nfunc; i++)
		printf("%10d  %s\n", i + 1, nome [i]);
}
