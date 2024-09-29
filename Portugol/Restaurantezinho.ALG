Algoritmo "semnome"

Var
nome: vetor [1..4] de caracter
p1, p2, M, MT: vetor [1..4] de real
coco: inteiro


Inicio

para coco de 1 ate 4 faca

escreval ("Nome do Aluno:")
leia (nome[coco])
escreval (" Nota da P1")
leia (p1[coco])
escreval (" Nota da P2")
leia (p2[coco])

M[coco] <- p1[coco] + p2[coco]
MT[coco] <-  p1[coco] + p2[coco]/ 2
fimpara

para coco de 1 ate 4 faca

escreval (coco, "* Aluno" )
escreval ("P1:", p2[coco])
escreval ("P2:", p1[coco])
escreval ("Media", M [coco])





fimpara
escreval
escreval ("Media da Turma", MT [coco])







Fimalgoritmo
