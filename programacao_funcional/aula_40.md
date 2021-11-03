# Tail-Call Optimization

Tail-Call Optimization é quando o compilador reduz as funções em memória sem alocar mais memória.
```elixir
defmodule TCFactorial do
 def of(n), do: facotorial_of(n, 1)

 defp factorial_of(0, acc), do: acc
 defp factorial_of(n, acc) when n > 0, do: factorial_of(n - 1, n * acc)
end
```
Com o Tail-Call Optimization é possível ganhar em performance, porém a leitura de funções recursivas com essa técnica não é tão simples. No método tradicional, como a função em seu retorno, devolve a chamada de outra (ou mesma) função, internamente uma nova área de memória é alocada para que seja aguardado a finalização (resolução) dessa função. Já com a técnica de Tail-Call Optimization isso não ocorre.