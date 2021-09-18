# Pattern Matching
O operador "=" não é um operador de atribuição no Elixir.
```elixir
n = 1 # n não recebe 1, na verdade o operador avalia se os lados da expressão podem dar matching
1
1 = n   #avalia se o 1 pode dar match com  o que tem dentro da variavel n
1
2 = n
** (MathcError) no match of right hand side value: 1
```

O Match Operator (=) é um operador binário, ou seja, ele precisa ter dois elementos para serem avaliados (um da cada lado).
```elixir
# left hand     Match Operator      Right hand
            x           =           1
```
É possível aplicar o pattern matching a estrutura mais complexas.
```powershell
iex(3)> {a,b,c} = {:jackson, "pires", 123}
{:jackson, "pires", 123}
iex(4)> a
:jackson
iex(5)> b
"pires"
iex(6)> c
123
```
Se as estruturas não derem match, é disparado um erro:
```powershell
iex(7)> {a,b,c} = {:jackson, "pires"}
** (MatchError) no match of right hand side value: {:jackson, "pires"}

iex(7)> {a,b,c} = [:jackson, "Pires", 123] 
** (MatchError) no match of right hand side value: [:jackson, "Pires", 123]
```
Podemos utilizar a estrutura de cabeça e cauda para listas.
```powershell
iex(7)> [cabeca | cauda] = [1,2,3,4,5]
[1, 2, 3, 4, 5]

iex(8)> cabeca
1
iex(9)> cauda
[2, 3, 4, 5]
```