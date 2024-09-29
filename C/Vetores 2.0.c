#include <stdio.h>
float mediaNotas (float prova1,float prova2,float trab){ //função mediaNotas
float notaParcial, notaFinal;
printf("\n Inicio da funcao mediaNotas\n");
getchar();
printf("prova1 = %f prova2 = %f trab = %f\n",prova1,prova2,trab);
getchar();
notaParcial = (prova1 + prova2) / 2;
notaFinal = (notaParcial * 0.7) + (trab * 0.3);
printf("Fim da funcao mediaNotas\n");
getchar();
return notaFinal;
}
int main(){ // função main
float nota1, nota2, notaTrab, mediaFinal;
printf("Informe a nota da primeira prova ==> ");
scanf("%f",&nota1);
printf("Informe a nota da segunda prova ==> ");
scanf("%f",&nota2);
printf("Informe a nota do trabalho ==> ");
scanf("%f",&notaTrab);
mediaFinal = mediaNotas(nota1,nota2,notaTrab);
printf("A media final do aluno foi %.1f \n\n",mediaFinal);
system("pause");
}

