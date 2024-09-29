#include<stdio.h>
#include<locale.h>


int nu;
char no [50], cpf[50], ende[50], tele[50];
float pro, total;
main(void){
	setlocale(LC_ALL, "");

       	
		
	

	for (nu=1; nu<=5; nu++){
		
		printf("Nome Completo:");
        fflush(stdin);
		fgets (no, 50, stdin);
		printf("CPF: ");
		fflush(stdin);
		fgets (cpf, 50, stdin);
		printf("Telefone:");
		fflush(stdin);
		fgets (tele, 50, stdin);
		printf("Produto R$:");
		scanf("%f", &pro)
		
		
		if(pro > 300){
			pro *= 0.95;
		} 
		
		system ("cls");
		
		printf ("Nome do Cliente:%s/n", no);
		printf ("Endereço:%s/n", ende);
		printf ("Telefone:%s/n", tele);
		printf ("Produto R$:%.2f\n", pro);
		
    
	
	
	
	
	
system("pause");	
return 0;	
	
}
}
