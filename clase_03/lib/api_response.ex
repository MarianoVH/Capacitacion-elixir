defmodule ApiResponse do
  @moduledoc """
  Documentation for `ApiResponse`.
  """

  @doc """
  Returns "OK", "ERROR" or :no_match_message_error depending of the parameters given.
  ## Parameters
    - Tuple

  ## Examples
      iex> ApiResponse.cond({:ok, "any"})
      "OK"
      iex> ApiResponse.cond({:error, "any"})
      "ERROR"
      iex> ApiResponse.cond({:any, "any"})
      :no_match_message_error
  """
  def cond({a, b}) do
    cond do
      {:ok, b} == {a, b} -> "OK"
      {:error, b} == {a, b} -> "ERROR"
      true -> :no_match_message_error
    end
  end

  @doc """
  Returns "OK", "ERROR" or :no_match_message_error depending of the parameters given.
  ## Parameters
    - Tuple

  ## Examples
      iex> ApiResponse.case({:ok, "any"})
      "OK"
      iex> ApiResponse.case({:error, "any"})
      "ERROR"
      iex> ApiResponse.case({:any, "any"})
      :no_match_message_error
  """
  def case({a, b}) do
    case {a, b} do
      {:ok, b} -> "OK"
      {:error, b} -> "ERROR"
      _ -> :no_match_message_error
    end
  end

  @doc """
  Returns "OK", "ERROR" or :no_match_message_error depending of the parameters given.
  ## Parameters
    - Tuple

  ## Examples
      iex> ApiResponse.if({:ok, "any"})
      "OK"
      iex> ApiResponse.if({:error, "any"})
      "ERROR"
      iex> ApiResponse.if({:any, "any"})
      :no_match_message_error
  """
  def if({a, b}) do
    if {:ok, b} == {a, b} do
      "OK"
    else
      if {:error, b} == {a, b} do
        "ERROR"
      else
        :no_match_message_error
      end
    end
  end

  @doc """
  Returns "OK", "ERROR" or :no_match_message_error depending of the parameters given.
  ## Parameters
    - Tuple

  ## Examples
      iex> ApiResponse.fun({:ok, "any"})
      "OK"
      iex> ApiResponse.fun({:error, "any"})
      "ERROR"
      iex> ApiResponse.fun({:any, "any"})
      :no_match_message_error
  """
  def fun({:ok, b}) do
    "OK"
  end

  def fun({:error, b}) do
    "ERROR"
  end

  def fun({_, b}) do
    :no_match_message_error
  end
end
