defmodule SecretHandshake do

  @doc """
  Determine the actions of a secret handshake based on the binary
  representation of the given `code`.

  If the following bits are set, include the corresponding action in your list
  of commands, in order from lowest to highest.

  1 = wink
  10 = double blink
  100 = close your eyes
  1000 = jump

  10000 = Reverse the order of the operations in the secret handshake
  """
  @spec commands(code :: integer) :: list(String.t())
use Bitwise
def commands(code) do
[]
|>handshake(code, 0b1, "wink")
|>handshake(code, 0b10, "double blink")
|>handshake(code, 0b100, "close your eyes")
|>handshake(code, 0b1000, "jump")
|>handshake(code, 0b10000, &Enum.reverse/1)
end

def handshake(list, 0b00001), do: list ++ ["wink"]
def handshake(list, 0b00010), do: list ++ ["double blink"]
def handshake(list, 0b00100), do: list ++ ["close your eyes"]
def handshake(list, 0b01000), do: list ++ ["jump"]
def handshake(list, 0b10000), do: Enum.reverse(list)
def handshake(list, _), do: list


end

