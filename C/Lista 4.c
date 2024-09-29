#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

struct Super_petshop_Luis_Guilherme_Ads {
    char nome[10], pets[10], consul[10], tele[10];
    
};

void registro(struct Super_petshop_Luis_Guilherme_Ads *cliente) {
    printf("Registro do cliente: ");
    scanf("%s", cliente->nome);
    printf("Registro do Pet: ");
    scanf("%s", cliente->pets);
    printf("Registro do Telefone do Cliente: ");
    scanf("%s", cliente->tele);
    system("cls");
}

void tosinho(struct Super_petshop_Luis_Guilherme_Ads *cliente) {
    int escolha;

    printf("Pet: %s\n", cliente->pets);

    printf("1- Tosa\n");
    printf("2- Banho\n");
    printf("3- Tosa e Banho\n");

    printf("Escolha uma opcao: ");
    scanf("%d", &escolha);

    switch (escolha) {
        case 1:
            printf("Parabens voce escolheu tosa :)\n");
            sleep(2);
            break;
        case 2:
            printf("Parabens voce escolheu Banho :)\n");
            sleep(2);
            break;
        case 3:
            printf("Parabens voce escolheu Banho e uma bela tosa :)\n");
            sleep(2);
            break;
        default:
            printf("Opcao Incorreta\n");
    }
}

void consulta(struct Super_petshop_Luis_Guilherme_Ads *cliente) {
	
	int escolha;

    printf("1- Quarta\n");
    printf("2- Quinta\n");

    printf("Escolha uma opcao: ");
    scanf("%d", &escolha);

    switch (escolha) {
        case 1:
            printf("Parabens voce escolheu Quarta :)\n");
            sleep(2);
            system("cls");
        case 2:
            printf("Parabens voce escolheu Quinta :)\n");
            sleep(2);
            system("cls");
        default:
            printf("Opcao Incorreta\n");
            
        
printf("1-  ", cliente->nome);
printf("2-  ", cliente->nome);
printf("3-  ", cliente->nome);
		
    }
    
}

int main(void) {
    struct Super_petshop_Luis_Guilherme_Ads cliente;
    char senha[] = "patinha";
    char senhag[20];
    int opcao;

    while (1) {
        printf("Super_petshop_Luis_Guilherme_Ads \n");
        printf("Digite a senha: ");
        scanf("%s", senhag);
        system("cls");

        if (strcmp(senha, senhag) == 0) {
            break;
        } else {
            system("cls");
            printf("Senha INCORRETISSIMA\n");
        }
    }

    while (1) {
        printf("Super_petshop_Luis_Guilherme_Ads \n");
        printf("1- Cadastrar\n");
        printf("2- Tosa ou Banho\n");
        printf("3- Consulta\n");
        printf("4- Impressao\n");
        printf("5- Sair do Programa\n");

        printf("Escolha uma opcao: ");
        scanf("%d", &opcao);

        switch (opcao) {
            case 1:
                system("cls");
                registro(&cliente);
                system("cls");
                break;
            case 2:
                system("cls");
                tosinho(&cliente);
                system("cls");
                break;
            case 3:
                system("cls");
                consulta(&cliente);
                break;
            case 4:
                system("cls");
                break;
            case 5:
                system("cls");
                printf("Volte sempre ao Super_petshop_Luis_Guilherme_Ads  :) \n");
                return 0;
            default:
                printf("Numero Errado doidao.\n");
        }
    }

    return 0;
}

