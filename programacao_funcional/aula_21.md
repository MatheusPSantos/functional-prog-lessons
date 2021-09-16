# Listas

As listas são delimitadas por colchetes e elas podem conter tipos diferetnes:
```elixir
[43, :yes, "hello", 67.32, true]
```

Listas podem ser concatenadas com "++" ou subtraídas com "--":
```elixir
[43, :yes, "hello"] ++ [67.32, true]
[43, :yes, "hello"] -- ["hello", true]
```
Listas no Elixir são `listas encadeadas`em sua essência, sendo assim os elementos não são indexados e não podemos acessar um elemento diretamente como em um array/vetor.
Funções importantes de lista são a head, `hd/1` que retorna o primeiro valor da lista e a tail, `tl/1` que retorna o restante da lista exceto o primeiro elemento.