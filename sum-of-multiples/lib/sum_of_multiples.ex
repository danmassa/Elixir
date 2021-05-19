defmodule SumOfMultiples do
  @doc """
  Adds up all numbers from 1 to a given end number that are multiples of the factors provided.
  """
  @spec to(non_neg_integer, [non_neg_integer]) :: non_neg_integer
  def to(limit, factors) do
    list = for f <- factors, n <- 1..(limit - 1), rem(n, f) == 0, do: n
    list
    |> Enum.uniq()
    |> Enum.sum()
  end
end
