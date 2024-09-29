#include <stdio.h>
float n1, n2, med;
void cadastro(){
    printf("Dig nota 1: ");
    do{
        scanf("%f", &n1);
        if (n1 < 0.0 || n1 > 10.0)
            printf("Invalido! \nDig nota 1: ");
    } while (n1 < 0.0 || n1 > 10.0);
    printf("\nDig nota 2: ");
    do{
        scanf("%f", &n2);
        if (n2 < 0.0 || n2 > 10.0)
            printf("Invalido! \nDig nota 2: ");
    } while (n2 < 0.0 || n2 > 10.0);
    med = (n1 + n2) / 2;
}
void exibe_resultado(float med){
	printf("Nota1 = %.2f\nNota2 = %.2f\n Media %.1f: ", med);
    if (med < 3.0)
        printf("Aluno reprovado!\n");
    else if (med >= 3.0 && med < 7.0)
        printf("Aluno em exame!\n");
    else if (med >= 7.0)
        printf("Aluno aprovado!\n");
}

int main(){
    cadastro();
    sleep(2);
    exibe_resultado(med);
    system("pause");
    return 0;
}


