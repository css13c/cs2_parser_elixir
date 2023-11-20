defmodule C2S_CONNECT_Message do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :host_version, 1, optional: true, type: :uint32
  field :auth_protocol, 2, optional: true, type: :uint32
  field :challenge_number, 3, optional: true, type: :uint32
  field :reservation_cookie, 4, optional: true, type: :fixed64
  field :low_violence, 5, optional: true, type: :bool
  field :encrypted_password, 6, optional: true, type: :bytes
  field :splitplayers, 7, repeated: true, type: CCLCMsg_SplitPlayerConnect
  field :auth_steam, 8, optional: true, type: :bytes
  field :challenge_context, 9, optional: true, type: :string
  field :use_snp, 10, optional: true, type: :sint32
end

defmodule C2S_CONNECTION_Message do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :addon_name, 1, optional: true, type: :string
  field :use_snp, 2, optional: true, type: :bool
end