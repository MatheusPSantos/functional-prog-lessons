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
Para saber qual o codepoint de um caractere, usa-se `?`antes do mesmo.
```elixir
?a
?e

```
Codepoints são caracteres Unicode que podem ser representados por um ou mais bytes.

Para conhecer a representação binária de uma String, concatene ela com <<0>>
```elixir
"Elixir é legal" <> <<0>>
## <<69, 108, 105, 120, 105, 114, 32, 195, 169, 32, 108, 101, 103, 97, 108, 0>>
```

Internamente, o Elixir representa as Strings como uma sequência de Bytes ao invés de um array/vetor de caracteres, no entanto, caso seja necessário trabalhar com arrays de caracteres, podemos usar as Charlists bastando para isso usar aspas simples ao invés de duplas.
```elixir
'Elixir é legal!'   #[69, 108, 105, 120, 105, 114, 32, 233, 32, 108, 101, 103, 97, 108, 33]
"Elixir é legal!" <> <<0>>
to_charlist("Elixir é legal!")  #[69, 108, 105, 120, 105, 114, 32, 233, 32, 108, 101, 103, 97, 108, 33]
```