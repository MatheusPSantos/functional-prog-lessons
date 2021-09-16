# Imutabilidade

Em programação funcional, todos os valores criados em seu programa são imutáveis. A ideia por trás da imutabilidade é simplificar o trabalho de paralelismo.

```elixir
list = [1,2,3,4]
List.delete_at(list, -1) # deleta o último elemento
# => [4]
list ++ [1]
# => [1,2,3,4,1]
IO.inspect list
# => [1,2,3,4]
```
O valor da lista é imutável, independente da operação que for aplicada nela sempre será gerado um novo valor.

O Elixir trabar com "biding" de variáveis, ou seja, a variável __aponta para uma referência que contém o valor__. Quanto é "re-atruibuído" (rebinding) a variável, ela aponta para uma nova referência. O rebiding só ocorre quando o contexto for correto.

```elixir
total = 876
defmodule Mutante do
    def mutar(valor) do
        valor = 1
        IO.puts "interno - #{valor}"
        valor
    end
end

Mutante.mutar(total)
IO.puts "externo A- #{total}"

total = Mutante.mutar(total)
IO.puts "externo B- #{total}"
```

O valor pode ser alterado dependendo do contexto. Ser imutável não quer dizer que o valor nunca mudará, mas sim que ele está protegido de mudanças externas.