defmodule Cs2DemoParserTest do
  use ExUnit.Case
  doctest Cs2DemoParser

  @test_demo "test_dem.dem"

  test "Filestamp is PBDEMS2", context do
    with demo <- File.open!(@test_demo, [:read, :binary]) do
      parsed = Cs2DemoParser.parse_header(demo)
      assert parsed.filestamp == "PBDEMS2"
    end
  end

end
