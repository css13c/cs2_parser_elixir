defmodule CHelpRequestLogs_UploadUserApplicationLog_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :appid, 1, optional: true, type: :uint32
  field :log_type, 2, optional: true, type: :string
  field :version_string, 3, optional: true, type: :string
  field :log_contents, 4, optional: true, type: :string
end

defmodule CHelpRequestLogs_UploadUserApplicationLog_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :id, 1, optional: true, type: :uint64
end