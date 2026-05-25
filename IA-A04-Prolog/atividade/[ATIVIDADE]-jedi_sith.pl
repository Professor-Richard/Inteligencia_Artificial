% =========================
% BASE DE CONHECIMENTO JEDI
% =========================

% --------- Jedi ---------

jedi(anakin).
jedi(obi_wan).
jedi(yoda).
jedi(mace_windu).
jedi(luke).
jedi(qui_gon).
jedi(ahsoka).
jedi(count_dooku).
jedi(ben_solo).
jedi(revan).

% --------- Sith ---------

sith(darth_vader).
sith(darth_tyranus).
sith(kylo_ren).
sith(darth_revan).
sith(darth_maul).

% --------- Transformações (quem virou sith) ---------

virou_sith(anakin, darth_vader).
virou_sith(count_dooku, darth_tyranus).
virou_sith(ben_solo, kylo_ren).
virou_sith(revan, darth_revan).

% ====================================
% REGRAS
% ====================================

% Jedi que caiu para o lado sombrio
caiu_para_lado_sombrio(X) :-
    virou_sith(X, _).

% Jedi que permanece fiel
jedi_fiel(X) :-
    jedi(X),
    \+ virou_sith(X, _).

% Sith que já foi Jedi
ex_jedi_sith(X) :-
    virou_sith(_, X).

% Traidor da ordem Jedi
traidor(X) :-
    caiu_para_lado_sombrio(X).