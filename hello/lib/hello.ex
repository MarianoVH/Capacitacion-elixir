defmodule Hello do
  @moduledoc """
  Documentation for `Hello`.
  """

  @doc """
  Prints a hello world message. If a string as a parameter is given it should print it too.

  ## Parameters

    - none

  ## Examples

      iex> Hello.hello()
      "Hello world"

  """
  def hello() do
    "Hello world"
  end

  @doc """
  Prints a hello world message with a "name". That "name" is received as a parameter.

  ## Parameters

    - name: String that represents the name of the person.

  ## Examples

      iex> Hello.hello("beto")
      "Hello world and beto"

  """
  @spec hello(String.t()) :: String.t()
  def hello(name) do
    "Hello world and #{name}"
  end
end
