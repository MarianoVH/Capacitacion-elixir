defmodule FizzBuzz do
  @moduledoc """
  Documentation for `FizzBuzz`.
  """

  @doc """
  Returns Fizz, Buzz or FizzBuzz depending of the parameters given.

  ## Parameters

    - Number: 0
    - Number: 0
    - Any: Any

  ## Examples

      iex> FizzBuzz.fuzzle( 0, 0, "any")
      FizzBuzz

      iex> FizzBuzz.fuzzle( 0, "any", "any")
      Fizz

      iex> FizzBuzz.fuzzle( "any", 0, "any")
      Buzz

      iex> FizzBuzz.fuzzle( "any", "any", "any")
      "any"
  """

  def fuzzle(one, two, three) do
    return_fizz_or_buzz(one, two, three)
  end

  def return_fizz_or_buzz(0, 0, _) do
    FizzBuzz
  end

  def return_fizz_or_buzz(0, _, _) do
    Fizz
  end

  def return_fizz_or_buzz(_, 0, _) do
    Buzz
  end

  def return_fizz_or_buzz(_, _, three) do
    three
  end
end
