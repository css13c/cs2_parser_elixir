defmodule BitReader do
  @moduledoc """
  Wrapper on IO binary reader to simplify calls
  """

  import Bitwise

  @doc """
  Reads bytes from binary stream
  """
  @spec read(IO.device(), number()) :: iodata() | IO.nodata()
  def read(device, bytes) do
    IO.binread(device, bytes)
  end


  @doc """
  Reads int (unsigned) from io device at a given size in bits
  """
  @spec read_var_int(IO.device(), non_neg_integer()) :: integer()
  def read_var_int(io, size \\ 32, res \\ <<>>, count \\ 0)
  def read_var_int(_, size, res, count) when count * 8 >= size, do: res
  def read_var_int(io, size, res, count) do
    b = IO.binread(io, 1)
    <<num::integer-size(8)>> = b
    new_res = res <> b
    if num &&& 0x80 != 0 do
      new_res
    end
  end

  def read_str(device) do

  end

  @doc """
  Skips bytes, returns nil. Just a wrapper on `BitReader.read()` with no return
  """
  @spec skip(IO.device(), number()) :: nil
  def skip(device, bytes) do
    read(device, bytes)
    nil
  end
end
