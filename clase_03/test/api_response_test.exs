defmodule ApiResponseTest do
  use ExUnit.Case
  doctest ApiResponse

  test "Returns OK with Cond" do
    assert ApiResponse.cond({:ok, "any"}) == "OK"
  end

  test "Returns ERROR with Cond" do
    assert ApiResponse.cond({:error, "any"}) == "ERROR"
  end

  test "Returns :no_match_message_error with Cond" do
    assert ApiResponse.cond({:asd, "any"}) == :no_match_message_error
  end

  test "Returns OK with CASE" do
    assert ApiResponse.case({:ok, "any"}) == "OK"
  end

  test "Returns ERROR with CASE" do
    assert ApiResponse.case({:error, "any"}) == "ERROR"
  end

  test "Returns :no_match_message_error with CASE" do
    assert ApiResponse.case({:asd, "any"}) == :no_match_message_error
  end

  test "Returns OK with IF" do
    assert ApiResponse.if({:ok, "any"}) == "OK"
  end

  test "Returns ERROR with IF" do
    assert ApiResponse.if({:error, "any"}) == "ERROR"
  end

  test "Returns :no_match_message_error with IF" do
    assert ApiResponse.if({:asd, "any"}) == :no_match_message_error
  end

  test "Returns OK with FUN" do
    assert ApiResponse.fun({:ok, "any"}) == "OK"
  end

  test "Returns ERROR with FUN" do
    assert ApiResponse.fun({:error, "any"}) == "ERROR"
  end

  test "Returns :no_match_message_error with FUN" do
    assert ApiResponse.fun({:asd, "any"}) == :no_match_message_error
  end
end
