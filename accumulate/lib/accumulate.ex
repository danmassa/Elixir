defmodule Accumulate do
  @doc """
    Given a list and a function, apply the function to each list item and
    replace it with the function's return value.

    Returns a list.

    ## Examples

      iex> Accumulate.accumulate([], fn(x) -> x * 2 end)
      []

      iex> Accumulate.accumulate([1, 2, 3], fn(x) -> x * 2 end)
      [2, 4, 6]

  """

  @spec accumulate(list, (any -> any)) :: list

  def accumulate(list, fun) do
  for x <- list, do: fun.(x)

  end
end

# iex> list = [1, 2, 3, 4, 5]
# iex> for x <- list, do: x*x
# [1, 4, 9, 16, 25]
