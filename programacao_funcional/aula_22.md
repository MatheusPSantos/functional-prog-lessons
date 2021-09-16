# Tuplas
As tuplas são delimitadas por chaves e elas podem conter tipos diferentes:
```elixir
{43, :yes, "hello", 67.32, true}
```
As tuplas são armazenados continuamente na memória. É semelhante ao conceito de array. Pode-se consultar o elemento específico em uma tupla.

```elixir
tupla = {"name", :name, "age", 24}
elem(tupla, 2)  #"age"
elem(tupla, 3)  #24
```

Documentação para tuplas (https://hexdocs.pm/elixir/Tuple.html).