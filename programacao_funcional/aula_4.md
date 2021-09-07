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
