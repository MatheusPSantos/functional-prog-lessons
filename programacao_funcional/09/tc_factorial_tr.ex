defmodule TCFactorial do
 def of(n), do: factorial_of(n, 1)

 defp factorial_of(0, acc1), do: acc1
 defp factorial_of(n, acc2) when n > 0, do: factorial_of(n - 1, n * acc2)
end
