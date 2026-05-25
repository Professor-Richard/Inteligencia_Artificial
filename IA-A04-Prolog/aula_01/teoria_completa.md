# Sintaxe SWI-Prolog

## Tipos de Dados em Prolog

Os dados representados em Prolog podem ser um dos seguintes tipos:

### Variáveis

- Iniciadas com letra **maiúscula** ou **underscore (\_)**.
- Podem ser seguidas de qualquer caractere alfanumérico.
- Apenas `_` define uma **variável anônima**.
- Exemplos:
  - `X`
  - `Y1`
  - `_Nome`
  - `_`

---

### Átomos

- São **constantes**.
- Devem iniciar com letra **minúscula** ou estar entre **aspas simples**.
- Exemplos:
  - `joao`
  - `'João'`
  - `'16'`

---

### Inteiros

- Sequência numérica **sem ponto (.)**.
- Strings entre aspas duplas (`""`) são tratadas como **listas de inteiros (ASCII)**.
- Exemplos:
  - `1`
  - `6`
  - `-3`
  - `"a"`

---

### Floats

- Números com **ponto (.)** e pelo menos uma casa decimal.
- Exemplos:
  - `5.3` (correto)
  - `7.` (incorreto)

---

### Listas

- Sequência ordenada de elementos entre `[ ]`.
- Elementos separados por vírgulas.
- Exemplos:
  - `[a, b, c]`
  - `[a | [b, c]]`

---

# Classificação de Termos

Classifique os termos abaixo como **átomo, variável, número, lista ou inválido**:

## Classificação de Termos

| Termo       | Classificação    |
| ----------- | ---------------- |
| Maria       | variável         |
| maria       | átomo            |
| \_Resultado | variável         |
| \_          | variável anônima |
| 100         | inteiro          |
| -45         | inteiro          |
| 3.14        | float            |
| 8.          | inválido         |
| 'Prolog'    | átomo            |
| '123abc'    | átomo            |
| "abc"       | lista            |
| [1,2,3]     | lista            |
| [X,Y,Z]     | lista            |
| [a,b\|c]    | inválido         |
| casa_branca | átomo            |
| CasaBranca  | variável         |
| 12abc       | inválido         |
| [ ]         | lista            |
| []          | lista            |
| [1,[2,[3]]] | lista            |

---

# Comentários em Prolog

Existem dois tipos de comentários:

### Comentário de linha

```prolog
% Todo texto após o símbolo % é comentário
```

### Comentário de bloco

```prolog
/* Todo o texto entre os símbolos é comentário */
```

# Consultas

A cláusula `proximo(Brasil, Japao).` é uma consulta Prolog, pois “Brasil” e “Japao” são variáveis.

## Como o Prolog responde consultas

Para responder consultas, o Prolog utiliza os seguintes mecanismos:

### Matching

- Checa se determinado padrão está presente.
- Permite identificar quais fatos e regras podem ser utilizados.

### Unificação

- Substitui o valor de variáveis.
- Determina se a consulta é satisfeita pelos fatos ou regras da base (programa).

### Resolução

- Verifica se uma consulta é consequência lógica dos fatos e regras da base (programa).

### Recursão

- Utiliza regras que chamam a si mesmas para realizar demonstrações.

### Backtracking

- Permite checar todas as possibilidades de resposta.

# Regras

Regras facilitam a execução de consultas e tornam um programa muito mais expressivo.

Uma cláusula Prolog é equivalente a uma fórmula em lógica de **1ª ordem**.  
Em Prolog, existem os seguintes conectivos:

- `:-` (se), equivalente à **implicação**;
- `,` (e), equivalente à **conjunção**;
- `;` (ou), equivalente à **disjunção**.

---

## Exemplo

A fórmula lógica:

```
A(x) → B(x) ∨ (C(x) ∧ D(x))
```

Seria escrita em Prolog como:

```prolog
a(X) :- b(X); (c(X), d(X)).
```

---

## Observação Importante

Prolog **não utiliza quantificadores explicitamente**.

Porém, trata todas as regras como se estivessem **universalmente quantificadas** e utiliza ~ EU (eliminação do universal).

# Regras

Consultas são realizadas sobre regras do mesmo modo como ocorrem sobre fatos.

Uma regra se divide em **conclusão (ou cabeça)** e **condição**, da seguinte forma:

```prolog
CONCLUSAO(+ARG) :- CONDICAO1(+ARG) CONECTIVO CONDICAO2(+ARG) ...
```

---

## Funcionamento

Utilizando **matching**, o Prolog encontra quais regras podem ser utilizadas para satisfazer uma consulta.

Cada vez que um _matching_ ocorre, a satisfação da regra passa a ser a **meta atual**.

---

## Exemplo

```prolog
prole(X, Y) :- genitor(Y, X).
```

Consulta:

```prolog
?- prole(pam, bob).
```
