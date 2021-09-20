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

#Pattern Matching, underscore e pin operator

Ainda sobre patterrn matching, imagine que temos a seguinte situação...
```elixir
{x, y} = {32, 25}
```
Se não quisermos mudar o valor de y somos obrigado a usar o "underscore" `_`.
```powershell
iex(1)> {a, b} = {23, 34} 
{23, 34}
iex(2)> {a, b} = {23, 37}
{23, 37}
iex(3)> b
37      
iex(4)> {a, _} = {67,89}
{67, 89}
iex(5)> _
** (CompileError) iex:6: invalid use of _. "_" represents a value to be ignored in a pattern and cannot be used in expressions

iex(6)> a
67
iex(7)> b
37
```
### pin operator
Quando não é necessário fazer a ressociação utiliza-se o pin operator. O uso do pin operator é justamente impedir a reassociação de variváveis.
```powershell
iex(10)> x = 1
1
iex(11)> ^x = 3
** (MatchError) no match of right hand side value: 3
```
Ao colocar p `^` antes da variável o Elixir levantou um erro informando que o valor não "casa" com o valor atual de x, ele evitou o rebind. É possível usá-lo em conjunto com o pattern matching, fazendo com que seja evitado novos rebinds não desejados.
```bash
iex(14)> {x,^y} = {76,89} 
{76, 89}
iex(15)> x
76
iex(16)> y
89
```
