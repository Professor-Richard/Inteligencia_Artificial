# Comandos de Entrada e Saída

Os comandos `write` e `read` escrevem e leem nos arquivos padrão (monitor e teclado).

## Escrita

Utiliza-se:

```prolog
write(+Termo).
```

Exemplos:

```prolog
write('Teste de impressão.').  % Correto
write(Teste de impressão.).    % Errado
write(X).                      % Correto
write(joao).                   % Correto
```

---

## Leitura

Utiliza-se:

```prolog
read(+Variavel).
```

Exemplos:

```prolog
read(X).     % Correto
read(x).     % Errado
read(Joao).  % Correto
read(joao).  % Errado
```

---

# Caracteres Especiais para Impressão

Alguns caracteres especiais utilizados em impressão:

- `nl`, `\n`, `\\` — nova linha
- `\r` — retorna ao início da linha
- `\t` — tabulação
- `\%` — imprime o símbolo `%`

---
