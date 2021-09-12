# Princípios da programação funcional

- First-class functions-> funções de primeira classe
- Pure functions - funcões puras
- immutable variables   -> variáveis imutáveis
- Recursion -> recursão
- Nonstrict evaluation  -> interpretação não restrita
- statements
- pattern matching

## First class funcitons

São funções que podem aceitar outra função como um argumento ou mesmo retornar uma função. Ou seja, é a capacidade de criar funções e devolvê-las ou passá-las para outras funções. Isso é extremamente útil em reutilização de códigos e abstração de código.

```
func A() {...} 
func B() {...}
B = func {...}  // função anônima
func A(B) {...} // função de primeira classe
```
Funções de primeira classe também são conhecidadas como Higher-Order Functions (função de ordem superior) ou ainda First-Class Citizens (cidadãos de primeira classe).
Qundo falamos de __Lambda é a possibilidade de criar funções anônimas__, já uma função de primeira classe é a função que consegue receber funções anônimas como argumento/parâmetro, ou seja, receber lambdas.


## Pure functions
Funções puras são funções que não tem efeitos colaterais. Efeitos colaterais são ações que uma função pode executar e que não estão contidos apenas na própria função. Um exemplo de função impura é quando passamos uma variável global e a transformamos diretamente dentro dessa função. Elas também são conhecidas por serem __idempotentes__ , ou seja, a mesma entrada sempre gera a mesma saída.

## Immutable Variables
Variáveis imutáveis, uma vez definidas, não pdoem ser alteradas. Embora a imbutabilidade pareça muito difícil de fazer, dado o fato de que o estado deve mudar dentro de uma aplicação em algum momento, veremos como tratar isso mais adiante.
```
var minhaString = "abc"
substituir(minhaString, "a", "x")   // xbc
minhaString     // abc
```

## Recursão
Em resumo, função recursiva é aquela que pode chamar a si mesma. A __Recursão__ permite escrever algoritmos menores e mais concisos e operar observando apenas as entradas para nossa funções. Isso significa que a função estará preocupada apenas com a iteração atual e se deve continuar.
```c
int fatorial(int n) {
    if(n >= 2) return n * fatorial(n-1);
    return 1;
}
```

## Nonstrict evaluation
__Avaliações não restritas__ nos permite ter variáveis que ainda não foram computadas. Por outro lado, __Strict Evaluations__ atribuem uma variável assim que ela é definida. Nonstrict significa que podemos ter uma variável que não seja atribuída (computada) até a primeira vez em que é referenciada.
Nesse ponto podemos lembrar do Haskell que sempre levanta a bandeira do "Lazy Evaluation" (Avaliação Preguiçosa), "Delayed Evaluation" (Avaliação tardia), ou ainda Call-by-name (chame pelo nome;) que a  grosso modo são as mesma coisa. Isso é inerente à linguagem de programação, não dependendo do programador.

## Statements
As __declarações__ são pedaços de códigos "avaliáveis" que possuem valores de retorno. Pense em instruções "if" que tenham algum valor de retorno. Cada linha de código deve ser considerada uma declaração.
```ruby
puts("O valor de retorno é #{ x = 1})
O Valor de retorno é 1
```
Ou seja, a programação funcional introduz a ideia de que cada linha de código deve retornar um valor. Então, se estamos aptos a fazer mais uso de statements nós podemos reduzir o número de variáveis e se reduzimos a quantidade de variáveis, reduziremos também a necessidade de "mudá-las" e isso aumenta a habilidade de executar processos concorrentes e torna-se mais funcional.

## Pattern Matching
A __correspondência de padrões__ não aparece realmente na matemática, mas ajuda a programação funcional a diminuir a necessidade de variáveis específicas. Ou ainda, Pattern Matching nos permite procurar padrões simples em valores, estruturas de dados, e até funções.
No código, gerlamente encapsulamos um grupo de variáveis juntas dentro de um objeto, A correspondência de padrões nos permite obter uma melhor varificação de tipos e extrarir elementos de um objeto, criando instruções mais simples e concisas com menos necessidades de definições de variáveis.