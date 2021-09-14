# Funções nomeadas e funções anônimas

Funções nomeadas são basicamente funções que possuem nome. As funções anônimas são funções definidas sem um nome atrelado, mas que podem ser atribuídas (bind) a uma variável.
```elixir
# definindo a função anônima
sum = fn (a, b) -> a + b end
# utilizando a função anônima
sum.(1,4) # 5
```
Para múltiplas instruções no corpo da função usa-se ';', ou múltiplas linhas.
```elixir
printed_sum = fn (a, b) -> c = a + b;
IO.puts(">>#{c}<<") end

# ou

printed_sum = fn (a, b) ->
    c = a + b
    IO.puts(">>#{c}<<")
end
```


# Capture Operator
O operador de captura (capture operator) `&` pode ser usado para basicamente duas coisas:

Criar funções anônimas:
```elixir
sum = fn (a, b) -> a + b end
# torna-se
sum = &(&1 _+ &2)
# ou
sum = & &1 + &2
```
Permitir funções nomeadas serem usadas como funções anônimas:
```elixir
upcase = fn string -> String.upcase(string) end
upcase.("hello, world")

upcase = &String.upcase/1
upcase.("hello, world")
```