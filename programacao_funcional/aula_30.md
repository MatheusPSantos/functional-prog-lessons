# First Class Functions
A ideia por trás desse conceito é que em uma linguagem funcional uma função deve ser como qualquer outro valor, ou seja, no Elixir funções são valores do tipo `function`.

```elixir
taxa_basica = fn (preco) -> 5 end
taxa_promocional = fn (preco) -> preco * 0.12 end
preco_total = fn (preco, f_taxa) -> preco + f_taxa.(preco) end
# taxa_basica(12.3)     5
# taxa_promocional(100) 12.0
# preco_total(1000, taxa_basica)    1005
# preco_total(1000, taxa_promocional)   1012
```

# First class functions x Higher Order functions
Uma __higher-order function__ é uma função que pode receber uma função como argumento ou retornar uma função. As __higher-order functions__ são um contraste com as order-functions que são funções que não podem receber função como argumento ou retornar funções.

```elixir
defmodule Salario do
    def calculo_do_bonus(porcentagem) do
        fn(salario) -> salario * porcentagem end
    end
end
```
Em resumo, quando a linguagem suporta__ first-class functions__, quer dizer que a linguagem trata as funções como valores e que é possível atribuir, por exemplo, elas a uma variável. Por outro lado, __Higher-Order functions__ são funções que trabalham com outras funções, podendo também recebê-las ou retorná-las.