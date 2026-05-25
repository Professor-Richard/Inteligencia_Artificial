% =========================
% MINI SISTEMA ESPECIALISTA
% Diagnóstico simples - Segurança Digital
% =========================

:- dynamic sim/1.
:- dynamic nao/1.

% ---- PERGUNTAS (sintomas) ----
pergunta(lento)              :- write('O computador esta muito lento? (s/n) ').
pergunta(popups)             :- write('Estao aparecendo pop-ups estranhos? (s/n) ').
pergunta(redireciona_site)   :- write('Seu navegador redireciona para sites estranhos? (s/n) ').
pergunta(pediu_dados)        :- write('Voce recebeu mensagem pedindo senha/codigo? (s/n) ').
pergunta(link_suspeito)      :- write('Voce clicou em link suspeito recentemente? (s/n) ').
pergunta(senha_reutilizada)  :- write('Voce usa a mesma senha em varios sites? (s/n) ').
pergunta(atualizacao_atraso) :- write('Seu sistema esta ha muito tempo sem atualizar? (s/n) ').

% ---- MECANISMO DE PERGUNTA ----
resposta(Sintoma) :-
    ( sim(Sintoma) -> true
    ; nao(Sintoma) -> false
    ; pergunta(Sintoma),
      read(Resp),
      (Resp == s -> assertz(sim(Sintoma))
      ; assertz(nao(Sintoma)), fail)
    ).

% ---- REGRAS DE DIAGNOSTICO ----
diagnostico(malware) :-
    resposta(lento),
    resposta(popups),
    resposta(redireciona_site).

diagnostico(phishing) :-
    resposta(pediu_dados),
    resposta(link_suspeito).

diagnostico(senha_fraca) :-
    resposta(senha_reutilizada).

diagnostico(atualizacao_pendente) :-
    resposta(atualizacao_atraso).

diagnostico(sem_problema).

% ---- RECOMENDACOES ----
recomendacao(malware) :-
    writeln('Recomendacao: Rode um antivirus/antimalware, remova extensoes suspeitas e verifique programas instalados.').

recomendacao(phishing) :-
    writeln('Recomendacao: Nao forneca dados. Troque senhas, ative 2FA e verifique a autenticidade do remetente.').

recomendacao(senha_fraca) :-
    writeln('Recomendacao: Use senhas unicas e fortes e um gerenciador de senhas. Ative 2FA quando possivel.').

recomendacao(atualizacao_pendente) :-
    writeln('Recomendacao: Atualize o sistema e aplicativos. Correcao de falhas depende de updates.').

recomendacao(sem_problema) :-
    writeln('Recomendacao: Nao foi identificado um problema claro. Mantenha boas praticas de seguranca.').

% ---- LIMPEZA (para rodar de novo) ----
limpar :-
    retractall(sim(_)),
    retractall(nao(_)).

% ---- EXECUCAO PRINCIPAL ----
iniciar :-
    limpar,
    diagnostico(D),
    nl, write('Diagnostico sugerido: '), writeln(D),
    recomendacao(D),
    nl, writeln('Fim.').