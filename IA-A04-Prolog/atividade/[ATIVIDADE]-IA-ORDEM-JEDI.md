# Atividade 01 --- ENTREGAR HOJE!!! ---

# Base de Conhecimento: Ordem Jedi

## Contexto

A Ordem Jedi é uma organização milenar dedicada à proteção da galáxia. No entanto, ao longo da história, alguns Jedi abandonaram a Ordem e passaram para o lado sombrio da Força, tornando-se Sith.

Você deverá modelar, em Prolog, uma base de conhecimento que represente:

- Jedi existentes
- Sith existentes
- Jedi que se tornaram Sith
- Regras para identificar diferentes situações dentro da Ordem

---

## Parte 1 — Base de Fatos

Crie fatos que representem:

1. **10 Jedi**
2. **5 Sith**
3. A relação `virou_sith(Jedi, Sith)` para aqueles que abandonaram a Ordem e assumiram um novo nome Sith.

---

## Parte 2 — Regras

Implemente as seguintes regras:

### 1. `caiu_para_lado_sombrio(X)`

Deve identificar Jedi que se tornaram Sith.

### 2. `jedi_fiel(X)`

Deve identificar Jedi que nunca se tornaram Sith.

### 3. `sempre_sith(X)`

Deve identificar Sith que nunca foram jedi.

## Parte 3 — Consultas

Após implementar a base, teste as seguintes consultas:

```prolog
?- jedi(X).
?- sith(X).
?- caiu_para_lado_sombrio(X).
?- jedi_fiel(X).
?- sempre_sith(X).
```

Explique o resultado obtido em cada caso.

---

## Desafio 2

1. Criar a regra `inimigos(X, Y)` que seja verdadeira quando um for Jedi e o outro Sith.
2. Criar a regra `dupla_identidade(X)` que identifique personagens com dois nomes (Jedi e Sith).
3. Criar a regra `mestre_aprendiz(X,Y)` que identifique que personagens Siths que são as duplas de mestre e aprendiz que você colocou na lista de Sith.
