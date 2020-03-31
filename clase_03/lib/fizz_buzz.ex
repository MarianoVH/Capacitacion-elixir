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
      iex> FizzBuzz.fizz_buzz_case( 0, 0, "any")
      FizzBuzz
      iex> FizzBuzz.fizz_buzz_case( 0, "any", "any")
      Fizz
      iex> FizzBuzz.fizz_buzz_case( "any", 0, "any")
      Buzz
      iex> FizzBuzz.fizz_buzz_case( "any", "any", "any")
      "any"
  """
  def fizz_buzz_cond(a, b, c) do
    cond do
      a == 0 && b == 0 -> FizzBuzz
      a == 0 -> Fizz
      b == 0 -> Buzz
      true -> c
    end
  end

  @doc """
  Returns Fizz, Buzz or FizzBuzz depending of the parameters given.
  ## Parameters
    - Number: 0
    - Number: 0
    - Any: Any
  ## Examples
      iex> FizzBuzz.fizz_buzz_case( 0, 0, "any")
      FizzBuzz
      iex> FizzBuzz.fizz_buzz_case( 0, "any", "any")
      Fizz
      iex> FizzBuzz.fizz_buzz_case( "any", 0, "any")
      Buzz
      iex> FizzBuzz.fizz_buzz_case( "any", "any", "any")
      "any"
  """
  def fizz_buzz_case(a, b, c) do
    case {a, b, c} do
      {0, 0, _} -> FizzBuzz
      {0, _, _} -> Fizz
      {_, 0, _} -> Buzz
      _ -> c
    end
  end
end
