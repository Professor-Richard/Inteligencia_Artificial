# Sintaxe SWI-Prolog

# Caracteres Especiais para Impressão

Alguns caracteres especiais utilizados em impressão:

- `nl`, `\n`, `\\` — nova linha
- `\r` — retorna ao início da linha
- `\t` — tabulação
- `\%` — imprime o símbolo `%`

---

# Comentários em Prolog

### Comentário de linha

```prolog
% Todo texto após o símbolo % é comentário
```

### Comentário de bloco

```prolog
/* Todo o texto entre os símbolos é comentário */
```

---

# Exemplo 1

## Considere os seguintes elementos de um pequeno ecossistema:

**Animais**:
[urso, peixe, coelho]

**Plantas**:
[alga, grama]

### Sabemos que:

    O urso come peixe.
    O peixe come alga.
    O coelho come grama.

# consultas:

animal(X).

planta(X).

comer(X,Y).

comer(peixe,Y.)

comer(X,grama).

---

# Exemplo 2

Dada a arvore Genealogica, programe em prolog o exercicio definindo quem é homem e mulher, e quem é genitor

## consultas:

> homem(X).
>
> mulher(X).
>
> genitor(X,Y).

```prolog
'maria' ─── **jose**
       \     /      \
        \   /        \
       **joao**     'alice'
          |
    --------------
    |            |
 **enzo**     'julia'
                 |
              **bob**
```

---

#### Melhore esse exercicio e adicione as regras: (pai e mae)

# ADICIONANDO REGRAS

pai(X,Y) :- genitor(X,Y) , homem(X).
mae(X,Y) :- genitor(X,Y) , mulher(X).

## Consultas

> pai(X,Y).
> mae(X,Y).

---

# Exercicio 1

Faça a arvore genealogica para a familia Skywalker, defina os fatos, homem, mulher, pai, mae.

![Familia Skywalker](arvore_genealogica_anakin.png)

consultas:
homem(X).
mulher(X).
pai(X).
mae(X).

---

# ADICIONANDO REGRAS

    filho(X,Y) :- pai(X,Y), homem(X).
    filho(X,Y) :- mae(X,Y), mulher(X).
    avos(X,Z) :- pai(X,Y), pai(Y,Z).

---

## consulta

    filho(anakin,X).

---

---

# Exemplo 2

Considere os seguintes objetos:

    carro1
    moto1
    bike1

## Sabemos que:

    Um veículo tem motor e rodas.
    Um transporte leve é algo que é moto ou bicicleta.

## Tarefa

Crie os fatos necessários.
Implemente:
veiculo(X) usando E
transporte_leve(X) usando OU

## Teste as consultas.

?- veiculo(X).
?- transporte_leve(X).
?- veiculo(bike1).
