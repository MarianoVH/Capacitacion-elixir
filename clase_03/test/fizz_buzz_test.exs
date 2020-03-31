defmodule FizzBuzzTest do
  use ExUnit.Case
  doctest FizzBuzz

  test "Returns FizzBuzz with Cond" do
    assert FizzBuzz.fizz_buzz_cond(0, 0, 1) == FizzBuzz
  end

  test "Returns Fizz with Cond" do
    assert FizzBuzz.fizz_buzz_cond(0, 1, 1) == Fizz
  end

  test "Returns Buzz with Cond" do
    assert FizzBuzz.fizz_buzz_cond(1, 0, 1) == Buzz
  end

  test "Returns the third parameter with Cond" do
    assert FizzBuzz.fizz_buzz_cond(1, 1, 1) == 1
  end

  test "Returns FizzBuzz with Case" do
    assert FizzBuzz.fizz_buzz_case(0, 0, 1) == FizzBuzz
  end

  test "Returns Fizz with Case" do
    assert FizzBuzz.fizz_buzz_case(0, 1, 1) == Fizz
  end

  test "Returns Buzz with Case" do
    assert FizzBuzz.fizz_buzz_case(1, 0, 1) == Buzz
  end

  test "Returns the third parameter with Case" do
    assert FizzBuzz.fizz_buzz_case(1, 1, 1) == 1
  end
end
