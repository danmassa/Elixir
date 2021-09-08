defmodule SlackolixirTest do
  use ExUnit.Case
  doctest Slackolixir

  test "greets the world" do
    assert Slackolixir.hello() == :world
  end
end
