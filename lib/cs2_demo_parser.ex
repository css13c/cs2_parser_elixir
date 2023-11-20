defmodule Cs2DemoParser do
  @moduledoc """
  Documentation for `Cs2DemoParser`.
  """

  require Logger
  import Bitwise

  @spec open_demo(String.t()) :: IO.device()
  defp open_demo(filepath) do
    {:ok, file} = File.open(filepath, [:read, :binary])
    file
  end

  @spec parse_dem(String.t()) :: map()
  def parse_dem(filepath) do
    with demo <- open_demo(filepath) do
      result = parse_header(demo)
    end
  end

  @doc"""
  Parses the demo header. Sadly CS2 demos only have the filestamp, but keeping
  in case the format changes or I try to support GO demos
  """
  @spec parse_header(IO.device()) :: Demo.t() | {:error, String.t() | atom()}
  def parse_header(stream) do
    # Parse filestamp
    <<stamp::binary-size(7), 0>> = IO.binread(stream, 8)
    case stamp do
      "PBDEMS2" ->
        result = %Demo{
          filestamp: stamp
        }

        # Empty bits or something? IDK
        BitReader.skip(stream, 8)
        result
      _ ->
        {:error, "Invalid file type"}
    end
  end

  @dem_compressed EDemoCommands.value(:DEM_IsCompressed)
  def parse_frame(stream, demo) do
    cmd = EDemoCommands.key(BitReader.read_var_int(stream))
    msg_type = cmd &&& bnot(@dem_compressed)
    is_compressed = cmd &&& @dem_compressed

    # Check if msg is compressed
    tick = BitReader.read_var_int(stream)
    msg_size = BitReader.read_var_int(stream)
    msg_raw = BitReader.read(msg_size)
  end
end
