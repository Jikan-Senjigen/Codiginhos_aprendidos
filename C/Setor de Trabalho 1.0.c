#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char setor[30], nome[80], ende[80], tel[15], cnpj[30], empre[30];
float micro, pm, ep, media, total;

int main(void) {
    printf("Digite o nome da empresa: ");
    fgets(empre, sizeof(empre), stdin);
    
    printf("Endereço da Empresa: ");
    fgets(ende, sizeof(ende), stdin);
    
    printf("Telefone da Empresa: ");
    fgets(tel, sizeof(tel), stdin);
    
    printf("CNPJ da Empresa: ");
    fgets(cnpj, sizeof(cnpj), stdin);
    
    printf("Digite o nome completo: ");
    fgets(nome, sizeof(nome), stdin);
    
    printf("Lucro da Micro empresa: ");
    scanf("%f", &micro);
    
    printf("Lucro da empresa de Porte Medio: ");
    scanf("%f", &pm);
    
    printf("Lucro da Empresa de Grande Porte: ");
    scanf("%f", &ep);
    
    media = (micro + pm + ep) / 2; 
    total = micro + pm + ep; 
    
    system("cls");
    
    printf("Empresa: %s", empre );
    printf("Endereço da Empresa: %s" , ende);
    printf("Telefone da Empresa: %s"  , tel);
    printf("CNPJ Da Empresa: %s" , cnpj);
    printf("Funcionario: %s\n" , nome);
    printf("Lucro da Micro Empresa: %.2f\n", micro);
    printf("Lucro da Empresa de Porte Medio: %.2f\n", pm);
    printf("Lucro da Empresa de Grande Porte: %.2f\n", ep);
    printf("Lucro Médio: %.2f\n", media);
    printf("Lucro Total: %.2f\n", total);

    printf("Digite o número da sua Categoria: ");
    fflush(stdin);
    scanf(" %s", setor); 

    system("cls");
    
    if ((total >=0) && (total <=m 10000) )
    
    if ((strcmp(setor, "A") == 0) || (strcmp(setor, "111") == 0) || (strcmp(setor, "TEC") == 0)) {
        printf("Cadastro na Equipe Tecnica\n\n");
    } else if ((strcmp(setor, "B") == 0) || (strcmp(setor, "112") == 0) || (strcmp(setor, "AN") == 0)) {
        printf("Cadastro na Equipe de Analistas\n\n");
    } else if ((strcmp(setor, "C") == 0) || (strcmp(setor, "122") == 0) || (strcmp(setor, "GER") == 0)) {
        printf("Cadastro na Equipe de Gerentes\n\n");
    } else if ((strcmp(setor, "D") == 0) || (strcmp(setor, "233") == 0) || (strcmp(setor, "DIR") == 0))

