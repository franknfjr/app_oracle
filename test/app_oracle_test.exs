defmodule AppOracleTest do
  use ExUnit.Case
  doctest AppOracle

  test "greets the world" do
    assert AppOracle.hello() == :world
  end
end
