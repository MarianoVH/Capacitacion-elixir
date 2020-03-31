defmodule FizzBuzzTest do
  use ExUnit.Case
  doctest FizzBuzz

  test "Returns FizzBuzz" do
    assert FizzBuzz.fuzzle(0, 0, 1) == FizzBuzz
  end

  test "Returns Fizz" do
    assert FizzBuzz.fuzzle(0, 1, 1) == Fizz
  end

  test "Returns Buzz" do
    assert FizzBuzz.fuzzle(1, 0, 1) == Buzz
  end

  test "Returns the third parameter" do
    assert FizzBuzz.fuzzle(1, 1, 1) == 1
  end
end
