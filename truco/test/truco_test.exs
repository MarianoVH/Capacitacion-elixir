defmodule TrucoTest do
  use ExUnit.Case
  doctest Truco

  test "greets the world" do
    assert Truco.hello() == :world
  end
end
