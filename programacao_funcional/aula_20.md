# Átomos
Átomos são constantes no qual o seu nome é o seu próprio valor. Eles são definidos colocando-se "dois pontos" na frente do nome do átomo.

```elixir
:exemplo
````

Em sua essência, `true` e `false` são átomos.
```elixir
iex> is_atom(false)
true
```

# Strings

Strings são delimitados em aspas duplas e são codificadas por padrão em UTF-8. É possível usar caracteres de escape como "\n" para nova linha.
```elixir
IO.puts("Elixir \né\n legal!")
```
Strings são representadas em binários, que são sequências de bytes. Para saber o número de bytes ocupados pela String, existe a função 
```elixir
byte_size("Elixir")
```
Podemos interpolar código Elixir com uma String usando `#{}`.
```elixir
exemplo = "Hello"
IO.puts("#{exemplo} world!")

>>> Hello world!
```
Para concatenar Strings é utilizado `<>`.
```elixir
"Hello" <> "world"
```