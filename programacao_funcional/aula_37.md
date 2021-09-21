# Controle de fluxo com funções
Ainda não sabemos se é possível fazer condicionais. Como fazer controle de fluxo?
Em linguagens funcionais na maioria das vezes usamos **funções e pattern matching** para controlar o fluxo:
```elixir
defmodule ComparaNumero do
    def maior(n1, n2) do
        check(n1 >= n2, n1, n2)
    end
    defp check(true, n1, _), do: n1
    defp check(false, _, n2), do: n2
end
```
O `defp` na definição da função informa que ela será `private` e só será disponível dentro do próprio módulo.

# Cláusulas de Guarda
Imagine as funções abaixo que serverm para somar até o número informado...
```elixir
defmodule Sum do
    def to(1), do: 1
    def to(n), do: n + to(n - 1)
end
```
```powershell
Sum.to(5)
#~> 15
Sum.to(-1) # causa um loop infito
```
Ao passar -1 para a função `Sum.to/1` acontece um loop infinito, para efitar isso pode-se usar uma cláusula de guarda. Logo depois de definir a função com os paramêtros pode-se usar a palavra chave `when`que impede que o resto da função seja executado.
```elixir
defmodule Sum do
    def to(1), do: 1
    def to(n) when n> 0 and is_integer(n), do: n + to(n - 1)
end
```
Pode-se saber mais sobre Guard Clauses dentro da documentação: https://hexdocs.pm/elixir/patterns-and-guards.html#guards
