Enum.__info__(:functions) |> Enum.each(fn({function, arity}) ->
IO.puts "#{function}/#{arity}"
end)
      
Enum.__info__(:functions)
    |> Enum.each(fn({function, arity}) ->
            IO.puts "#{function}/#{arity}"
        end)

# all?
# retorna false pois hello length > 3
Enum.all?(["foo", "bar", "hello"], fn(s) -> String.length(s) == 3 end)

# any? retorna true se houver ao menos um valor que for true
Enum.any?(["foo", "bar", "hello"], fn(s) -> String.length(s) === 5 end)

#chunk_every quebra a coleção em pequenos grupos
Enum.chunk_every([1,2,3,4,8,9,0], 3) #[[1, 2, 3], [4, 8, 9], [0]]

#chunk_by agrupa baseado em algo diferente do tamanho
Enum.chunk_by(["one", "two", "three", "four", "five"], fn(x) ->
    String.length(x)
end)
# retorno: [["one", "two"], ["three"], ["four", "five"]]
Enum.chunk_by(["one", "two", "three", "four", "five", "six"], fn(x) ->
    String.length(x)
end)
# [["one", "two"], ["three"], ["four", "five"], ["six"]]

# map_every eficiente para tratar apenas itens específicos
Enum.map_every([1,2,3,4,5,6,7,8], 3, fn x -> x * 10 end)    # [10, 2, 3, 40, 5, 6, 70, 8]

# each inteira sobre a coleção sem produzir um novo valor
Enum.each(["one", "two", "three"], fn x -> IO.puts(x) end)
# one
# two
# three
# :ok

#map para aplicar uma fn a cada elemento e produzir uma nova coleção
Enum.map([0,1,0,8,9,13,5], fn x -> x * x end)   #[0, 1, 0, 64, 81, 169, 25]

# min retorna o valor minimo de uma coleção
Enum.min([5,3,0,-1])        #-1
#min/2 permite especificar um valor minimo padrao
Enum.min([], fn -> :foo end) #:foo

#max retorna o valor maximo
Enum.max([5,3,5]) #5

# filter permite filtrar a coleção somente com os valores true
Enum.filter([1, 2, 3, 4], fn(x) -> rem(x, 2) == 0 end) #[2, 4]

# reduce transforma a coleção em um valor reduzido passando um acumulador
Enum.reduce([1,2,3], 10, fn(x, acc) -> x + acc end) #16
#se nao passar o acumulador o primeiro valor sera utilizad  o como tal
Enum.reduce([1,2,3], fn(x, acc) -> x + acc end) # 6
Enum.reduce(["a","b","c"], "1", fn(x,acc)-> x <> acc end) #cba1