defmodule RomanNumerals do
  @roman %{
    1 => "I",
    5 => "V",
    10 => "X",
    50 => "L",
    100 => "C",
    500 => "D",
    1000 => "M"
  }
  @doc """
  Convert the number to a roman number.
  """

  def convert1(digit, n) do
    cond do
      digit >= 1 and digit <= 3 -> String.duplicate(@roman[1 * n], digit)
      digit == 4 -> @roman[1 * n] <> @roman[5 * n]
      digit == 5 -> @roman[5 * n]
      digit >= 6 and digit <= 8 -> @roman[5 * n] <> String.duplicate(@roman[1 * n], digit - 5)
      digit == 9 -> @roman[1 * n] <> @roman[10 * n]
      true -> ""
    end
  end

  @spec numeral(pos_integer) :: String.t()
  def numeral(number) do
    list = Integer.digits(number)

    one = Enum.at(list, -1)
    ten = Enum.at(list, -2)
    hundred = Enum.at(list, -3)
    thousand = Enum.at(list, -4)

    string1 = convert1(one, 1)
    string2 = convert1(ten, 10)
    string3 = convert1(hundred, 100)
    string4 = convert1(thousand, 1000)

    string4 <> string3 <> string2 <> string1
  end
end
