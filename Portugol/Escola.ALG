Algoritmo "semnome"

Var
Nome : caractere
nota1, nota2, nota3, nota4, T1, T2, media, op: real
coco, qua: inteiro


Inicio
escreval ("Vou querer nota de:")
leia (qua)

PARA coco de 1 ate qua faca

escreval ("Nome do aluno:")
leia (nome)
escreval ("Primeiro Semestre")
escreval ("Nota da 1* P1:")
leia (nota1)
escreval ("Nota da 2* P2:")
leia (nota2)
escreval ("Nota do Trabalho:")
leia (T1)
escreval ("2* Semestre")
escreval ("Nota da 3* P3:")
leia (nota3)
escreval ("Nota da 4* P4:")
leia (nota4)
escreval ("Nota do Trabalho:")
leia (T2)

media <- nota1*0.4 + nota2*0.4 + T1*0.2 + nota3*0.4 + nota4*0.4 + T2*0.2/ 4

limpatela

escreval ("Nome:", nome)
escreval ("P1 =", nota1)
escreval ("P2 =", nota2)
escreval ("P3 =", nota3)
escreval ("P4 =", nota4)
escreval ("Nota final:", media)

se (media >= 7) entao
     escreval ("Aprovadasso")
     se (media <= 8) entao
     escreval ("Voce prefere qual bola :)")
     escreval (" Bola Azul")
     escreval (" Bola vermelha")
     leia (op)
     escolha (op)
     
     caso 1
     escreval ("Bola Vermelha que ruim :(")
     
     caso 2
     escreval (" Bola Azul que legal :)")
     outrocaso
     escreval (" Va embora entao kkkkkkkkkk")
     
     fimescolha
     senao
      SE (media < 9) entao
     escreval ("Voce prefere qual")
     escreval (" Miau1")
     escreval (" Miau2")
     leia (op)
     escolha (op)

     caso 1
     escreval ("Miau1 que :(")

     caso 2
     escreval (" Miau 2 que :)")
     outrocaso
     escreval (" Va embora entao kkkkkkkkkk")
     fimescolha
      
      
      
      fimse
      fimse
      fimse
fimpara






Fimalgoritmo
