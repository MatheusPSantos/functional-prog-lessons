# Operador pipe
# variaveis intermediárias

t1 = argument("arg")
t2 = ipsum(t1)
t3 = bar(t2)
result = foo(t3)

# Chamadas dentro de Chamadas
foo(bar(ipsum(argument("arg"))))

# Operador "pipe"
argument("arg")
    |> ipsum
    |> bar
    |> foo

# Com mais de um argumento
t1 = argument("arg")
t2 = ipsum(t1)
t3 = bar_two(t2, "second")
result = foo(t3)

#
foo(bar_two(ipsum(argument("arg")), "Second"))

#
argument("arg")
    |> ipsum
    |> bar_two("Second")
    |> foo

# Concatenar string
"elixir" = "eli" <> "xir"

# Operador pin ^

x = 1
{^x, y} = {2,2} #MatchError impede que haja atribuição de valor na variavel

# Operador de listas
[primeiro | resto] = [1,2,3,4]
