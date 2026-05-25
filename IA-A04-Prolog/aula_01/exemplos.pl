% ---- Comentario ----
/* bloco 
de 
comentario
*/
/* 
% ---- EXEMPLO 1 ----
% ---- FATOS ----
animal(urso).
animal(peixe).
animal(coelho).

planta(alga).
planta(grama).

comer(urso,peixe).
comer(peixe,alga).
comer(coelho,grama).
*/
%/* 
% ---- EXEMPLO 2 ---- 
% ---- fatos ----

mulher(alice).
mulher(julia).
mulher(maria).

homem(jose).
homem(joao).
homem(enzo).
homem(bob).

genitor(maria,joao).
genitor(jose,alice).
genitor(jose,joao).
genitor(joao,enzo).
genitor(joao,julia).
genitor(julia,bob).

% ---- REGRAS ----
pai(X,Y) :- genitor(X,Y) , homem(X).
mae(X,Y) :- genitor(X,Y) , mulher(X).




%*/
