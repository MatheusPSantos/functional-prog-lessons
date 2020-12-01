# funcoes

# anonimas
sum = fn (a,b) -> a + b end

# A & taquigrafia
sum = &(&1 + &2)

# pattern matching
handle_result = fn
    {:ok, result} -> IO.puts "Handling result .."
    {:ok, _ } -> IO.puts "This would be never run as previous will be matched beforehand."
    {:error} -> IO.puts "An error has occurred!"
end

# nomeadas
defmodule Greeter do
    def hello(name) do
        "Hello,  " <> name
    end
end

# caso tenha uma linha
defmodule Greeter do
    def hello(name), do: "Hello, " <> name
end

# recursao
defmodule Length do
    def of([]), do: 0
    def of([_ | tail]), do: 1 + of(tail)
end

#nomear funções e a aridade
defmodule Greeter2 do
    def hello(), do: "Hello,anonymous person!"
    def hello(name), do: "Hello, " <> name
    def hello(name1, name2), do: "Hello, #{name1} and #{name2}"
end

# pattern matching e map
fred = %{name: "Fred", age: "54", favorite_color: "Taupe"}

defmodule Greeter1 do
    def hello(%{name: person_name}), do: IO.puts "Hello, " <> person_name
end

# agora queremos todo o mapa
defmodule Greeter2 do
    def hello(%{name: person_name} = person) do
        IO.puts "Hello, " <> person_name
        IO.inspect person
    end
end

# funções privadas para outros modulos nao possuirem acesso
defmodule Greeter do
    def hello(name), do: phrase <> name
    defp phrase, do: "Hello, "
end

# Guards
defmodule Greeter do
    def hello(names) when is_list(names) do
        names|> Enum.join(", ") |> hello
    end

    def hello(name) when is_binary(name) do
        phrase() <> name
    end
    defp phrase, do: "Hello, "
end

# argumentos padroes
defmodule Greeter do
    def hello(name, lang_code \\ "en") do
        phrase(lang_code) <> name
    end

    defp phrase("en"), do: "Hello, "
    defp phrase("pt"), do: "Olá, "
end
