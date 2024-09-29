Algoritmo "semnome"

Var
nome, pro, mesa, coco, Pro1, Pro2, Pro3, Brin: caractere
din1, din2, din3, soma: real


Inicio

coco <- "S"
enquanto ((coco = "S") ou (coco = "s")) faca
escreval ("Qual mesa ira querer?:")
leia (mesa)
escreval ("O que o senhor vai querer")
escreval ("Produto:")
leia (Pro1)
escreval ("R$:")
leia (din1)
escreval ("Produto:")
leia (Pro2)
escreval ("R$:")
leia (din2)
escreval ("Produto:")
leia (Pro3)
escreval ("R$:")
leia (din3)

soma <- din1 + din2 + din3

escreval (din1)
escreval (din2)
escreval (din3)
escreval ("Ficou:", soma)

Escreval ("O senhor vai quere outra coisa (S) ou (N)")
leia (coco)

limpatela



fimenquanto

se (soma > 300) entao
   escreval ("O senhor tem direito a 2 Brindes")
   escreval ("1- Copo Krauser")
   escreval ("2- Coca cola 7 litros")
   leia (Brin)
   escolha (brin)
   CASO 1
   escreval ("Obrigado por escolher o Copo Krauser")
   CASO 2
   escreval ("Obrigado por escolher a Coca cola 7 litros")
   
  senao
  
  fimse




Fimalgoritmo
