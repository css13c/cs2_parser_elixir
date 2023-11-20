defmodule ESteamNetworkingUDPMsgID do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :k_ESteamNetworkingUDPMsg_ChallengeRequest, 32
  field :k_ESteamNetworkingUDPMsg_ChallengeReply, 33
  field :k_ESteamNetworkingUDPMsg_ConnectRequest, 34
  field :k_ESteamNetworkingUDPMsg_ConnectOK, 35
  field :k_ESteamNetworkingUDPMsg_ConnectionClosed, 36
  field :k_ESteamNetworkingUDPMsg_NoConnection, 37
end

defmodule CMsgSteamSockets_UDP_Stats.Flags do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :ACK_REQUEST_E2E, 2
  field :ACK_REQUEST_IMMEDIATE, 4
  field :NOT_PRIMARY_TRANSPORT_E2E, 16
end

defmodule CMsgSteamSockets_UDP_ChallengeRequest do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :connection_id, 1, optional: true, type: :fixed32
  field :my_timestamp, 3, optional: true, type: :fixed64
  field :protocol_version, 4, optional: true, type: :uint32
end

defmodule CMsgSteamSockets_UDP_ChallengeReply do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :connection_id, 1, optional: true, type: :fixed32
  field :challenge, 2, optional: true, type: :fixed64
  field :your_timestamp, 3, optional: true, type: :fixed64
  field :protocol_version, 4, optional: true, type: :uint32
end

defmodule CMsgSteamSockets_UDP_ConnectRequest do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :client_connection_id, 1, optional: true, type: :fixed32
  field :challenge, 2, optional: true, type: :fixed64
  field :my_timestamp, 5, optional: true, type: :fixed64
  field :ping_est_ms, 6, optional: true, type: :uint32
  field :crypt, 7, optional: true, type: CMsgSteamDatagramSessionCryptInfoSigned
  field :cert, 4, optional: true, type: CMsgSteamDatagramCertificateSigned
  field :legacy_protocol_version, 8, optional: true, type: :uint32
  field :identity_string, 10, optional: true, type: :string
  field :legacy_client_steam_id, 3, optional: true, type: :fixed64
  field :legacy_identity_binary, 9, optional: true, type: CMsgSteamNetworkingIdentityLegacyBinary
end

defmodule CMsgSteamSockets_UDP_ConnectOK do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :client_connection_id, 1, optional: true, type: :fixed32
  field :server_connection_id, 5, optional: true, type: :fixed32
  field :your_timestamp, 3, optional: true, type: :fixed64
  field :delay_time_usec, 4, optional: true, type: :uint32
  field :crypt, 7, optional: true, type: CMsgSteamDatagramSessionCryptInfoSigned
  field :cert, 8, optional: true, type: CMsgSteamDatagramCertificateSigned
  field :identity_string, 11, optional: true, type: :string
  field :legacy_server_steam_id, 2, optional: true, type: :fixed64
  field :legacy_identity_binary, 10, optional: true, type: CMsgSteamNetworkingIdentityLegacyBinary
end

defmodule CMsgSteamSockets_UDP_ConnectionClosed do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :to_connection_id, 4, optional: true, type: :fixed32
  field :from_connection_id, 5, optional: true, type: :fixed32
  field :debug, 2, optional: true, type: :string
  field :reason_code, 3, optional: true, type: :uint32
end

defmodule CMsgSteamSockets_UDP_NoConnection do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :from_connection_id, 2, optional: true, type: :fixed32
  field :to_connection_id, 3, optional: true, type: :fixed32
end

defmodule CMsgSteamSockets_UDP_Stats do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :stats, 1, optional: true, type: CMsgSteamDatagramConnectionQuality
  field :flags, 3, optional: true, type: :uint32
end