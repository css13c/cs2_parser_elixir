defmodule CS2DemoParser.Scripts.GetBufs do
  @moduledoc """
  Uses POST request to grab all files in the cs2 protobufs, and copies them to the correct folder
  """

  require HTTPoison

  @folder_url "https://github.com/SteamDatabase/GameTracking-CS2/tree/master/Protobufs"
  @file_url "https://raw.githubusercontent.com/SteamDatabase/GameTracking-CS2/master/Protobufs/"
  @folder "lib/protos/raw/"
  @reject ["enums_clientserver.proto"]

  @doc """
  Grabs file tree from SteamDB github for CS2 protobufs. Using "Accept: */*" apparently gives you not the webpage
  """
  @spec get_filenames() :: list(String.t())
  def get_filenames() do
    %{"payload" => %{"tree" => %{"items" => files}}} = HTTPoison.get!(@folder_url, [{"accept", "*/*"}])
    |> Map.get(:body)
    |> Jason.decode!()

    Enum.map(files, fn %{"path" => path} -> String.split(path, "/") |> Enum.at(1) end)
  end


  @doc """
  Downloads and saves a protobuf file to the @folder folder
  """
  @spec download_file(String.t()) :: :ok
  def download_file(filename) do
    content = HTTPoison.get!(@file_url <> filename)
    |> Map.get(:body)

    File.write(@folder <> filename, content)
  end

  def main() do
    get_filenames()
    |> Enum.reject(fn x -> Enum.member?(@reject, x) end)
    |> Enum.map(&download_file/1)

    :os.cmd('protoc --proto_path=./lib/protos/raw --elixir_out=./lib/protos ./lib/protos/raw/*.proto')
  end
end

CS2DemoParser.Scripts.GetBufs.main()
