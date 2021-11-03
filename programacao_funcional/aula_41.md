# Recursão com funções anônimas

No exemplo a seguir:

```elixir
factorial = fn
    0 -> 1
    x when x > 0 -> x * factorial.(x-1)
end
```

Isso retorna um erro pois a função factorial só irá existir quando for utilizada pois é uma função anônima.

Resolvemos o problema englobando uma função anônima dentro da outra:
```elixir
    fact_gen = fn me ->
        fn
            0 -> 1
            x when x > 0 -> x * me.(me).(x - 1)
        end
    end
```

O me é passado como argumento e usado chamando a si mesmo. A função `fact_gen` cria uma função em memória para poder ser usada.