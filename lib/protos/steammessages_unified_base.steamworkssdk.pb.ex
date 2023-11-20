defmodule EProtoExecutionSite do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :k_EProtoExecutionSiteUnknown, 0
  field :k_EProtoExecutionSiteSteamClient, 3
end