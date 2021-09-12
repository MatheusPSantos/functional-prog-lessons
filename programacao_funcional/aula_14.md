# Elixir e expressão

No Elixir tudo é uma expressão. Expressão é diferente de instrução. Toda expressão possui um retorno.
```elixir
IO.puts("Hello")
Hello
:ok
```

Esse é um princípio da programação funcional. São `statements`.

# Tipos básicos
Tipos básicos do elixir

```bash
iex> 1          #integer
iex> 1.0        #float
iex> 0x1F       #integer
iex> true       #booleano
iex> :atom      #atom/symbol
iex> "elixir"   #string
iex> [1, 2, 3]  #list
iex> {1,2,3}    #tuple
```

Funções para manipulação de integers/floats
```elixir
div(10,3)       # resultado sem casa decimal
rem(10,3)       # resta da divisão
round(3.58)     # arredondar número
trunc(3.58)     # 'truncar' número
```
Módulo Kernel é o ambiente padrão do elixir, podendo ser usado sem especificar o módulo Kernel.
O Elixir permite utilizar atalhos quando queremos converter binário, hexadecimal e octal para inteiros através dos prefixos 0b, 0x e 0o. Por exemplo:
```shell
iex> 0b1010
10

iex> 0o755
493

iex> 0xFF
255
```

O Elixir aceita `true` e `false`como booleanos. Possui operadores NOT (!), OR (||) e AND (&&).

Para saber o tipo de uma variável/termo pode-se usar funções do módulo `kernel` (https://hexdocs.pm/elixir/Kernel.html).
```elixir
is_boolean/1
is_atom/1
is_integer/1
is_float/1
is_number/1
...
```
