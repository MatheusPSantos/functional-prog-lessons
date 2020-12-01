# Estruturas de controle

# if e unless
if String.valid?("Hello") do
    "valid string"
else
    "Invalid String"
end

if "a string value" do
    "Truthy"
end

# unless trabalha com forma negativa
unless is_integer("hello") do
    "Not an Int"
end

# case para combinar multiplos padroes
case {:ok, "Hello World"} do
    {:ok, result} -> result
    {:error} -> "Uh oh!"
    _ -> "Catch all"
end

case {:o, "Hello World"} do
    {:ok, result} -> result
    {:error} -> "Uh oh!"
    _ -> "Catch all"
end

# cond associação de condições e não valores
cond do
    2 + 2 == 5 ->   "This will not be true"
    2 * 2 == 3 ->   "Nor this"
    1 + 1 == 2 -> "But this will"
    true -> "Catch all"
end


# with quando tentamos utilziar case/2 d maneira aninhada
# ou em situaçãoes que não é possivel encadear funções
user = %{first: "Sean", last: "Callan"}
with {:ok, first} <- Map.fetch(user, :first),
    {:ok, last} <- Map.fetch(user, :last),
    do: last <> ", " <> first


