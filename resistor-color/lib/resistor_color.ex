defmodule ResistorColor do
  @moduledoc false
   @colors  ["black","brown","red","orange","yellow","green","blue","violet","grey","white"]
   @index [0,1,2,3,4,5,6,7,8,9]
  @spec colors() :: list(String.t())
  def colors do
    @colors
  end

  @spec code(String.t()) :: integer()
  def code(color) do

    Enum.zip(@colors, @index)
    |> Map.new()
    |> Map.get(color)

  end
end

