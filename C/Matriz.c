#include <stdio.h>
#include <stdlib.h>
int main(void)
{
int linha, coluna;
int matriz[3][3];
for (linha=0; linha<3; linha++)
{
printf("Cadastre o valor da:\n");
for (coluna=0; coluna<3;coluna++)
{
printf("Linha %d, Coluna %d: ",linha+1,coluna+1);
scanf("%d", &matriz[linha][coluna]);
}
}
printf("\n\n Veja a sua Matriz\n");
for (linha=0;linha<=2;linha++)
{
for (coluna=0;coluna<=2;coluna++)
printf("%d\t",matriz[linha][coluna]);
printf("\n\n");
}
system("pause");
return 0;
}
