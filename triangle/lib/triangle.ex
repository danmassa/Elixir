defmodule Triangle do
  @type kind :: :equilateral | :isosceles | :scalene

  @doc """
  Return the kind of triangle of a triangle with 'a', 'b' and 'c' as lengths.
  """
  @spec kind(number, number, number) :: {:ok, kind} | {:error, String.t()}
  def kind(a, b, c) do
    IO.inspect("kind(#{a}, #{b}, #{c})")

    cond do
      is_equilateral?(a, b, c) ->
        {:ok, :equilateral}

        is_isosceles?(a, b, c) ->
          {:ok, :isosceles}



      true ->
        {:error, "Not a valid triangle"}
    end

  end

  def is_equilateral?(a, b, c) do
    a == b and b == c
  end

  def is_isosceles?(a, b, c) do
    a == b or a == c or b == c
  end

  def scalene?(a, b, c) do
    a != b and a != c and b != c
  end
end
