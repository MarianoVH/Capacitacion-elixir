defmodule WordCount do
  @moduledoc """
  Documentation for `WordCount`.
  """

  @doc """
  Counts the amount of each words and returns into a map as word => count

  ## Parameters

    - words: String to count.

  ## Examples

      iex> WordCount.count("This is a string")
      %{"a" => 1, "is" => 1, "string" => 1, "this" => 1}

  """
  @spec count(String.t()) :: map()
  def count(words) do
    words
    |> String.downcase()
    |> String.split([" ", "?", "!", ",", "."])
    |> Enum.reduce(Map.new(), fn word, acc -> Map.update(acc, word, 1, &(&1 + 1)) end)
    |> Map.delete("")
  end
end
