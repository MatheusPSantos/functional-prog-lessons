# pattern matching

# listas
list = [1,2,3]
[1,2,3] = list  # [1,2,3]

[] = list # MatchError

# Tuplas
{:ok, value} = {:ok, "Successful!"}
value # Successful!
{:ok, value} = {:error} # MatchError