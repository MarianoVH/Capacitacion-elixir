defmodule WordCountTest do
  use ExUnit.Case
  doctest WordCount

  test "Counts the amount of each words" do
    assert WordCount.count("This is a string") == %{
             "a" => 1,
             "is" => 1,
             "string" => 1,
             "this" => 1
           }
  end
end
