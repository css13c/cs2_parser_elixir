defmodule CCloud_GetUploadServerInfo_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :appid, 1, optional: true, type: :uint32, deprecated: false
end

defmodule CCloud_GetUploadServerInfo_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :server_url, 1, optional: true, type: :string
end

defmodule CCloud_GetFileDetails_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :ugcid, 1, optional: true, type: :uint64, deprecated: false
  field :appid, 2, optional: true, type: :uint32, deprecated: false
end

defmodule CCloud_UserFile do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :appid, 1, optional: true, type: :uint32
  field :ugcid, 2, optional: true, type: :uint64
  field :filename, 3, optional: true, type: :string
  field :timestamp, 4, optional: true, type: :uint64
  field :file_size, 5, optional: true, type: :uint32
  field :url, 6, optional: true, type: :string
  field :steamid_creator, 7, optional: true, type: :fixed64
end

defmodule CCloud_GetFileDetails_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :details, 1, optional: true, type: CCloud_UserFile
end

defmodule CCloud_EnumerateUserFiles_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :appid, 1, optional: true, type: :uint32, deprecated: false
  field :extended_details, 2, optional: true, type: :bool, deprecated: false
  field :count, 3, optional: true, type: :uint32, deprecated: false
  field :start_index, 4, optional: true, type: :uint32, deprecated: false
end

defmodule CCloud_EnumerateUserFiles_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :files, 1, repeated: true, type: CCloud_UserFile
  field :total_files, 2, optional: true, type: :uint32
end

defmodule CCloud_Delete_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :filename, 1, optional: true, type: :string
  field :appid, 2, optional: true, type: :uint32, deprecated: false
end

defmodule CCloud_Delete_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end