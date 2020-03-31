defmodule EnumOperationsTest do
  use ExUnit.Case
  doctest EnumOperations

  test "Count function" do
    assert EnumOperations.count([1, 2, 3]) == 3
  end

  test "Concat function" do
    assert EnumOperations.concat([1, 2, 3], [4, 5, 6]) == [1, 2, 3, 4, 5, 6]
  end

  test "Reverse function" do
    assert EnumOperations.reverse([1, 2, 3]) == [3, 2, 1]
  end

  test "Filter function" do
    assert EnumOperations.filter([1, 2, 3], fn x -> rem(x, 2) == 0 end) == [2]
  end
end
