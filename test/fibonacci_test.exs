defmodule FibonacciTest do
  use ExUnit.Case
  doctest Fibonacci

  test "get element 1" do
    assert Fibonacci.get(1) == 1
  end

  test "get element 2" do
    assert Fibonacci.get(2) == 1
  end

  test "get element 3" do
    assert Fibonacci.get(3) == 2
  end

  test "get element 4" do
    assert Fibonacci.get(4) == 3
  end

  test "get element 12" do
    assert Fibonacci.get(12) == 144
  end
end
