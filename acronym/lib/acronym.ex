defmodule Acronym do
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """
  @regex ~r/(?=[A-Z][a-z])|[\s_-]/u
  @spec abbreviate(String.t()) :: String.t()
  def abbreviate(string) do
    string
    |> String.split(@regex)
    # |> Enum.filter(fn word -> ! (word == "") end)
    |> Enum.reject(&(&1 == ""))
    |> Enum.map(fn word -> String.capitalize(String.at(word, 0)) end)
    |> Enum.join()
  end
end
