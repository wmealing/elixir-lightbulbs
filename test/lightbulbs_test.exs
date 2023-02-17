defmodule LightbulbsTest do
  use ExUnit.Case
  doctest Lightbulbs

  test "greets the world" do
    assert Lightbulbs.hello() == :world
  end
end
