defmodule CGameNetworkingUI_GlobalState do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CGameNetworkingUI_ConnectionState do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :connection_key, 1, optional: true, type: :string
  field :appid, 2, optional: true, type: :uint32
  field :connection_id_local, 3, optional: true, type: :fixed32
  field :identity_local, 4, optional: true, type: :string
  field :identity_remote, 5, optional: true, type: :string
  field :connection_state, 10, optional: true, type: :uint32
  field :start_time, 12, optional: true, type: :uint32
  field :close_time, 13, optional: true, type: :uint32
  field :close_reason, 14, optional: true, type: :uint32
  field :close_message, 15, optional: true, type: :string
  field :status_loc_token, 16, optional: true, type: :string
  field :transport_kind, 20, optional: true, type: :uint32
  field :sdrpopid_local, 21, optional: true, type: :string
  field :sdrpopid_remote, 22, optional: true, type: :string
  field :address_remote, 23, optional: true, type: :string
  field :p2p_routing, 24, optional: true, type: CMsgSteamDatagramP2PRoutingSummary
  field :ping_interior, 25, optional: true, type: :uint32
  field :ping_remote_front, 26, optional: true, type: :uint32
  field :ping_default_internet_route, 27, optional: true, type: :uint32
  field :e2e_quality_local, 30, optional: true, type: CMsgSteamDatagramConnectionQuality
  field :e2e_quality_remote, 31, optional: true, type: CMsgSteamDatagramConnectionQuality
  field :e2e_quality_remote_instantaneous_time, 32, optional: true, type: :uint64
  field :e2e_quality_remote_lifetime_time, 33, optional: true, type: :uint64
  field :front_quality_local, 40, optional: true, type: CMsgSteamDatagramConnectionQuality
  field :front_quality_remote, 41, optional: true, type: CMsgSteamDatagramConnectionQuality
  field :front_quality_remote_instantaneous_time, 42, optional: true, type: :uint64
  field :front_quality_remote_lifetime_time, 43, optional: true, type: :uint64
end

defmodule CGameNetworkingUI_Message do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :connection_state, 1, repeated: true, type: CGameNetworkingUI_ConnectionState
end

defmodule CGameNetworkingUI_ConnectionSummary do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :transport_kind, 1, optional: true, type: :uint32
  field :connection_state, 8, optional: true, type: :uint32
  field :sdrpop_local, 2, optional: true, type: :string
  field :sdrpop_remote, 3, optional: true, type: :string
  field :ping_ms, 4, optional: true, type: :uint32
  field :packet_loss, 5, optional: true, type: :float
  field :ping_default_internet_route, 6, optional: true, type: :uint32
  field :ip_was_shared, 7, optional: true, type: :bool
end

defmodule CGameNetworkingUI_AppSummary do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :appid, 1, optional: true, type: :uint32
  field :ip_was_shared_with_friend, 10, optional: true, type: :bool
  field :ip_was_shared_with_nonfriend, 11, optional: true, type: :bool
  field :active_connections, 20, optional: true, type: :uint32
  field :main_cxn, 30, optional: true, type: CGameNetworkingUI_ConnectionSummary
end