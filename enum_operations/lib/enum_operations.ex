defmodule EnumOperations do
  @moduledoc """
  Documentation for `EnumOperations`.
  """

  @doc """
  Simple copy of Enum.count

  ## Parameters

    - List

  ## Examples

      iex> EnumOperations.count([ 1, 2, 3])
      3
  """
  def count(list) do
    count(0, list)
  end

  defp count(counter, []) do
    counter
  end

  defp count(counter, [_head | tail]) do
    count(counter + 1, tail)
  end

  @doc """
  Simple copy of Enum.concat

  ## Parameters

    - concat(list, list)

  ## Examples

      iex> EnumOperations.concat([1, 2, 3], [4, 5, 6])
      [ 1, 2, 3, 4, 5, 6]
  """

  def concat(list, [head | tail]) do
    concat(list ++ [head], tail)
  end

  def concat(list, []) do
    list
  end

  @doc """
  Simple copy of Enum.reverse

  ## Parameters

    - reverse(list)

  ## Examples

      iex> EnumOperations.reverse([ 1, 2, 3])
      [ 3, 2, 1]
  """

  def reverse(list) do
    reverse([], list)
  end

  defp reverse(newList, []) do
    newList
  end

  defp reverse(newList, [head | tail]) do
    reverse([head] ++ newList, tail)
  end

  @doc """
  Simple copy of Enum.filter

  ## Parameters

    - reverse(list, fun)

  ## Examples

      iex> EnumOperations.filter([ 1, 2, 3], fn x -> rem(x, 2) == 0 end)
      [2]
  """
  def filter(list, fun) do
    filter_list(list, fun)
  end

  defp filter_list([head | tail], fun) do
    if fun.(head) do
      [head | filter_list(tail, fun)]
    else
      filter_list(tail, fun)
    end
  end

  defp filter_list(finalList, _fun) do
    finalList
  end
end
