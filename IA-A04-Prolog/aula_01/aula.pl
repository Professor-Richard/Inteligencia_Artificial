%  --- Comentario
/*
bloco

% --- Exemplo 1 ---
% --- FATOS ---
animal(urso).
animal(peixe).
animal(coelho).

planta(alga).
planta(grama).

comer(urso,peixe).
comer(peixe, alga).
comer(coelho,grama).


% --- EXEMPLO 2 ---
% --- FATOS --- 
mulher(maria).
mulher(alice).
mulher(julia).

homem(jose).
homem(joao).
homem(enzo).
homem(bob).

genitor(maria,joao).
genitor(jose,joao).
genitor(joao,enzo).
genitor(joao,julia).
genitor(julia,bob).
*/
% --- EXEMPLO 3 ---
% --- FATOS ---

mulher(schim).
mulher(padme).
mulher(leia).
homem(palpatine).
homem(anakin).
homem(han).
homem(luke).
homem(ben).

genitor(palpatine,anakin).
genitor(anakin,leia).
genitor(anakin,luke).
genitor(han,ben).

genitor(schim,anakin).
genitor(padme,leia).
genitor(padme,luke).
genitor(leia,ben)
/*
pai(palpatine,anakin).
pai(anakin,leia).
pai(anakin,luke).
pai(han,ben).

mae(schim,anakin).
mae(padme,leia).
mae(padme,luke).
mae(leia,ben)
*/
% --- REGRAS ---
pai(X,Y):- homem(X) , genitor(X,Y).

mae(X,Y):- mulher(X) , genitor(X,Y).

avos(X,Z) :- genitor(X,Y), genitor(Y,Z).