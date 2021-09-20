# Keyword Lists e Maps
Listas são definidas por colchetes "[]", são "listas encadeadas" em sua essência e por isso não é possível acessar posições indexadas, mas podem conter valores de tipos diferentes, além de poder trabalhar com cabeça e cauda.
```elixir
iex(1)> minha_lista = ["programacao", "funcional", "com elixir", 10]
["programacao", "funcional", "com elixir", 10]
iex(2)> hd(minha_lista)
"programacao"
iex(3)> tl(minha_lista) 
["funcional", "com elixir", 10]
iex(4)> 
```
As Tuplas são definidas por chaves "{}", podem conter qualquer tipo de dado e podem ser acessadas de forma indexada.
```elixir
iex(1)> minha_tupla = {"programacao", :funcional, "com elixir", 10}
{"programacao", :funcional, "com elixir", 10}
iex(2)> elem(minha_tupla, 3)
10      
iex(3)> elem(minha_tupla, 1) 
:funcional
```
Par entender as **Keyword Lists e os Maps** imaginamos uma tupla (que é indexável) armazenando uma lista em cada posição:
```elixir
iex(4)> [{:a, 22}, {:b, 27}] 
[a: 22, b: 27]
```
Uma keyword list sempre possuirá uma tupla em cada posição e essa tupla obrigatoriamente conterá uma chave e um valor, ou seja, um átomo e um valor. Sendo assim podemos reescrever uma Keyword list da seguinte maneira:
```elixir
[{:a, 27}, {:b, 77}] == [a: 27, b: 77]
```
Apesar da keyword list também serem listas encadeadas em sua essência, é possível acessar qualquer elemento indicando sua chave:
```elixir
iex(6)> minha_kwl = [name: "Elixir", para: "functional", age: 10]
[name: "Elixir", para: "functional", age: 10]
iex(7)> minha_kwl 
[name: "Elixir", para: "functional", age: 10]
iex(8)> minha_kwl[:para]
"functional"
```

É interessante perceber que por não ser indexada a keyword list permite valores repetidos, mas nesses casos ele vai retornar apenas o primeiro valor da chave encontrada, por isso, a ordem importa.
```elixir
iex(10)> kwl = [a: 2021, b: "functional", c: "phoenix", a: :elixir] 
[a: 2021, b: "functional", c: "phoenix", a: :elixir]
iex(11)> kwl[:a]
2021
```
Em resumo:
- keyword list devem possuir átomos como chave;
- nas keyword lists a ordem das chaves importa;
- nas Keyword lists podem existir chaves iguais.

## maps
A primeira diferença fica por conta que os **Maps são indexados** (ou seja, não é baseado em lista encadeada), a segunda é que **não são permitidas chaves iguais**, justamente por ela ser indexada, e a terceira é que **a chave pode ser determinada por qualquer tipo de dado**, não necessariamente um átomo.
```elixir
iex(1)> mp = %{:a => 1, 2 => :b} 
%{2 => :b, :a => 1}
iex(2)> nmp = %{"z" => 5, 8 => true}  
%{8 => true, "z" => 5}
iex(3)> mp[2]
:b      
iex(4)> nmp["z"]
5
```
O map não permite chaves repetidas:
```elixir
iex(6)> mp = %{2 => true, "name" => :elixir, 2 => "functional"}  
warning: key 2 will be overridden in map
  iex:6

%{2 => "functional", "name" => :elixir}
```
Outra característica interessante é que é possível acessar as chaves do tipo **átomo** através da sintaxe do ponto:
```elixir
iex(10)> res = %{:data => "{name:Elixir,age:10,param:functional}", :status => 200}   
%{data: "{name:Elixir,age:10,param:functional}", status: 200}
iex(11)> res.status
200
iex(12)> res.data
"{name:Elixir,age:10,param:functional}"
```
Os Maps são delimitados por %{}.