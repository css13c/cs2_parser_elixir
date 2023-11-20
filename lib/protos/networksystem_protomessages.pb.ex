defmodule NetMessageSplitscreenUserChanged do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :slot, 1, optional: true, type: :uint32
end

defmodule NetMessageConnectionClosed do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :reason, 1, optional: true, type: :uint32
end

defmodule NetMessageConnectionCrashed do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :reason, 1, optional: true, type: :uint32
end

defmodule NetMessagePacketStart do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule NetMessagePacketEnd do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end