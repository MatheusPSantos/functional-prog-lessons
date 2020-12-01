defmodule Math do
    def sum([]) do
        0
    end
    def sum([head | rest]) do
        head + sum(rest)
    end

    def sum(x) when is_integer(x) do
        x
    end

    def sum(x, y) do
        x + y
    end

    def zero?(0) do
        true
    end

    def zero?(x) when is_integer(x) do
        false
    end

    def zero?(x) do
        "Error"
    end
end