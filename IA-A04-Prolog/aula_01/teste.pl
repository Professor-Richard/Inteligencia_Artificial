% --- fatos --- 
homem(palpatine).
homem(anakin).
mulher(schim).

sith(palpatine).
sith(anakin).

jedi(anakin).

pai(anakin,luke).
pai(palpatine,anakin).

pai(X,Y) :- homem(X), sith(X).