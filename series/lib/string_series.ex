defmodule StringSeries do
  @doc """
  Given a string `s` and a positive integer `size`, return all substrings
  of that size. If `size` is greater than the length of `s`, or less than 1,
  return an empty list.
  """
  @spec slices(s :: String.t(), size :: integer) :: list(String.t())
  def slices(s, size) do
    len = String.length(s)

    cond do
      size <= len and size > 0 ->
        Enum.map(0..(len - size), fn i -> String.slice(s, i, size) end)
        |> List.delete("")

      true ->
        []
    end
  end
end
