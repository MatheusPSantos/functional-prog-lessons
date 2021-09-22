# Recursão

Recursão:
- Em linguagens imperativas, a repetição é feita usando características de iteração, tais como loops (while, for), que dependem de um estado mutável.
- Em programação funcional nós temos estados imutáveis, então, nós precisamos de uma abordagem diferente, neste caso, funções recursivas.
- Em resumo... "Uma função recursiva é aquela que chama a si própria".
- **Ponto de parada** da recursividade é resolvida sem utilização de recursividade, sendo este ponto geralmente um limite superior ou inferior da regra geral.
- **Regra Geral** : o método geral da recursividade reduz a resolução do problema através da invocação de casos mais pequenos, sendo estes casos mais pequenos resolvidos através da resolução de casos ainda mais pequenos, e assim sucessivamente, até atingir o ponto de parada que finaliza o método.

Implementação em Elixir:
```elixir
defmodule Factorial do
    def of(0), do: 1
    def of(n) when n > 0 do
        n* of(n - 1)
    end
end
```