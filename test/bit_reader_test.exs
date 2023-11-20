defmodule BitReaderTest do
  use ExUnit.Case
  doctest BitReader

  test "reads random unsigned int at 32 bits" do
    bytes = :rand.bytes(4)
    <<num::32>> = bytes
    with {:ok, file} <- :file.open(bytes, [:ram, :binary]) do
      assert BitReader.read_var_int(file) == num
    end
  end

  test "reads random unsigned int at 64 bits" do
    bytes = :rand.bytes(8)
    <<num::64>> = bytes
    with {:ok, file} <- :file.open(bytes, [:ram, :binary]) do
      assert BitReader.read_var_int(file, 64) == num
    end
  end
end
