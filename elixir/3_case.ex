# condicionais case, cond, if, else unless

#case
case {1, 2, 3} do
    {4, 5, 6} -> "Não dá match"
    {1, x, 3} -> "da match e x vai receber valor 2"
    _ -> "Daria match em qualquer ocasiao"
end

# Uso em função anonima (lambda)

f = fn
    x, y when x > 0 -> x + y
    x, y -> x * y
end
