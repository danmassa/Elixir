defmodule RnaTranscription do
  @rna_to_dna_map %{

  ?G => ?C,
  ?C => ?G,
  ?T => ?A,
  ?A => ?U
  }
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA
  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    dna
    |>Enum.map(fn char -> Map.get(@rna_to_dna_map, char) end)
  end
end
