defmodule ESteamDatagramMsgID do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :k_ESteamDatagramMsg_Invalid, 0
  field :k_ESteamDatagramMsg_RouterPingRequest, 1
  field :k_ESteamDatagramMsg_RouterPingReply, 2
  field :k_ESteamDatagramMsg_GameserverPingRequest, 3
  field :k_ESteamDatagramMsg_GameserverSessionRequest, 5
  field :k_ESteamDatagramMsg_GameserverSessionEstablished, 6
  field :k_ESteamDatagramMsg_NoSession, 7
  field :k_ESteamDatagramMsg_Diagnostic, 8
  field :k_ESteamDatagramMsg_DataClientToRouter, 9
  field :k_ESteamDatagramMsg_DataRouterToServer, 10
  field :k_ESteamDatagramMsg_DataServerToRouter, 11
  field :k_ESteamDatagramMsg_DataRouterToClient, 12
  field :k_ESteamDatagramMsg_Stats, 13
  field :k_ESteamDatagramMsg_ClientPingSampleRequest, 14
  field :k_ESteamDatagramMsg_ClientPingSampleReply, 15
  field :k_ESteamDatagramMsg_ClientToRouterSwitchedPrimary, 16
  field :k_ESteamDatagramMsg_RelayHealth, 17
  field :k_ESteamDatagramMsg_ConnectRequest, 18
  field :k_ESteamDatagramMsg_ConnectOK, 19
  field :k_ESteamDatagramMsg_ConnectionClosed, 20
  field :k_ESteamDatagramMsg_NoConnection, 21
  field :k_ESteamDatagramMsg_TicketDecryptRequest, 22
  field :k_ESteamDatagramMsg_TicketDecryptReply, 23
  field :k_ESteamDatagramMsg_P2PSessionRequest, 24
  field :k_ESteamDatagramMsg_P2PSessionEstablished, 25
  field :k_ESteamDatagramMsg_P2PStatsClient, 26
  field :k_ESteamDatagramMsg_P2PStatsRelay, 27
  field :k_ESteamDatagramMsg_P2PBadRoute, 28
  field :k_ESteamDatagramMsg_GameserverPingReply, 29
  field :k_ESteamDatagramMsg_LegacyGameserverRegistration, 30
  field :k_ESteamDatagramMsg_SetSecondaryAddressRequest, 31
  field :k_ESteamDatagramMsg_SetSecondaryAddressResult, 32
  field :k_ESteamDatagramMsg_RelayToRelayPingRequest, 33
  field :k_ESteamDatagramMsg_RelayToRelayPingReply, 34
end

defmodule CMsgSteamDatagramRouterPingReply.Flags do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :FLAG_MAYBE_MORE_DATA_CENTERS, 1
  field :FLAG_MAYBE_MORE_ALT_ADDRESSES, 2
end

defmodule CMsgSteamDatagramRouterPingReply.AltAddress.Protocol do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :DefaultProtocol, 0
  field :NetworkNext, 1
end

defmodule CMsgSteamDatagramConnectionClosed.ERelayMode do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :None, 0
  field :EndToEnd, 1
  field :ClosedByPeer, 2
end

defmodule CMsgSteamDatagramConnectionStatsClientToRouter.Flags do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :ACK_REQUEST_RELAY, 1
  field :ACK_REQUEST_E2E, 2
  field :ACK_REQUEST_IMMEDIATE, 4
  field :NOT_PRIMARY_SESSION, 8
  field :CLIENT_RELAY_OVERRIDE, 32
end

defmodule CMsgSteamDatagramConnectionStatsRouterToClient.Flags do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :ACK_REQUEST_RELAY, 1
  field :ACK_REQUEST_E2E, 2
  field :ACK_REQUEST_IMMEDIATE, 4
end

defmodule CMsgSteamDatagramConnectionStatsRouterToServer.Flags do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :ACK_REQUEST_RELAY, 1
  field :ACK_REQUEST_E2E, 2
  field :ACK_REQUEST_IMMEDIATE, 4
end

defmodule CMsgSteamDatagramConnectionStatsServerToRouter.Flags do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :ACK_REQUEST_RELAY, 1
  field :ACK_REQUEST_E2E, 2
  field :ACK_REQUEST_IMMEDIATE, 4
end

defmodule CMsgSteamDatagramConnectionStatsP2PClientToRouter.Flags do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :ACK_REQUEST_RELAY, 1
  field :ACK_REQUEST_E2E, 2
  field :ACK_REQUEST_IMMEDIATE, 4
  field :NOT_PRIMARY_SESSION, 8
  field :NOT_PRIMARY_TRANSPORT_E2E, 16
  field :CLIENT_RELAY_OVERRIDE, 32
end

defmodule CMsgSteamDatagramConnectionStatsP2PRouterToClient.Flags do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :ACK_REQUEST_RELAY, 1
  field :ACK_REQUEST_E2E, 2
  field :ACK_REQUEST_IMMEDIATE, 4
  field :NOT_PRIMARY_TRANSPORT_E2E, 16
end

defmodule CMsgSteamNetworkingIPAddress do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :v4, 1, optional: true, type: :fixed32
  field :v6, 2, optional: true, type: :bytes
end

defmodule CMsgSteamDatagramSignedMessageGeneric do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :cert, 1, optional: true, type: CMsgSteamDatagramCertificateSigned
  field :signed_data, 2, optional: true, type: :bytes
  field :signature, 3, optional: true, type: :bytes
  field :dummy_pad, 1023, optional: true, type: :bytes
end

defmodule CMsgSteamDatagramRouterPingReply.RouteException do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :data_center_id, 1, optional: true, type: :fixed32
  field :flags, 2, optional: true, type: :uint32
  field :penalty, 3, optional: true, type: :uint32
end

defmodule CMsgSteamDatagramRouterPingReply.AltAddress do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :ipv4, 1, optional: true, type: :fixed32
  field :port, 2, optional: true, type: :uint32
  field :penalty, 3, optional: true, type: :uint32

  field :protocol, 4,
    optional: true,
    type: CMsgSteamDatagramRouterPingReply.AltAddress.Protocol,
    default: :DefaultProtocol,
    enum: true

  field :id, 5, optional: true, type: :string
end

defmodule CMsgSteamDatagramRouterPingReply do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :client_timestamp, 1, optional: true, type: :fixed32

  field :latency_datacenter_ids, 2,
    repeated: true,
    type: :fixed32,
    packed: true,
    deprecated: false

  field :latency_ping_ms, 3, repeated: true, type: :uint32, packed: true, deprecated: false

  field :latency_datacenter_ids_p2p, 14,
    repeated: true,
    type: :fixed32,
    packed: true,
    deprecated: false

  field :latency_ping_ms_p2p, 15, repeated: true, type: :uint32, packed: true, deprecated: false
  field :your_public_ip, 4, optional: true, type: :fixed32
  field :your_public_port, 11, optional: true, type: :fixed32
  field :server_time, 5, optional: true, type: :fixed32
  field :challenge, 6, optional: true, type: :fixed64
  field :seconds_until_shutdown, 7, optional: true, type: :uint32
  field :client_cookie, 8, optional: true, type: :fixed32
  field :scoring_penalty_relay_cluster, 9, optional: true, type: :uint32
  field :flags, 12, optional: true, type: :uint32

  field :route_exceptions, 10,
    repeated: true,
    type: CMsgSteamDatagramRouterPingReply.RouteException

  field :alt_addresses, 13, repeated: true, type: CMsgSteamDatagramRouterPingReply.AltAddress
  field :dummy_pad, 99, optional: true, type: :bytes
end

defmodule CMsgSteamDatagramGameserverPingRequestBody do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :relay_popid, 1, optional: true, type: :fixed32
  field :your_public_ip, 2, optional: true, type: CMsgSteamNetworkingIPAddress
  field :your_public_port, 3, optional: true, type: :uint32
  field :relay_unix_time, 4, optional: true, type: :uint64
  field :routing_secret, 5, optional: true, type: :fixed64
  field :my_ips, 6, repeated: true, type: CMsgSteamNetworkingIPAddress
  field :echo, 8, optional: true, type: :bytes
end

defmodule CMsgSteamDatagramGameserverPingRequestEnvelope do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :cert, 6, optional: true, type: CMsgSteamDatagramCertificateSigned
  field :signed_data, 7, optional: true, type: :bytes
  field :signature, 8, optional: true, type: :bytes
  field :legacy_your_public_ip, 1, optional: true, type: :fixed32
  field :legacy_your_public_port, 5, optional: true, type: :fixed32
  field :legacy_relay_unix_time, 2, optional: true, type: :fixed32
  field :legacy_challenge, 3, optional: true, type: :fixed64
  field :legacy_router_timestamp, 4, optional: true, type: :fixed32
  field :dummy_pad, 1023, optional: true, type: :bytes
end

defmodule CMsgSteamDatagramGameserverPingReplyData do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :echo_relay_unix_time, 2, optional: true, type: :fixed32
  field :echo, 8, optional: true, type: :bytes
  field :legacy_challenge, 3, optional: true, type: :fixed64
  field :legacy_router_timestamp, 4, optional: true, type: :fixed32
  field :data_center_id, 5, optional: true, type: :fixed32
  field :appid, 6, optional: true, type: :uint32
  field :protocol_version, 7, optional: true, type: :uint32
  field :build, 9, optional: true, type: :string
  field :network_config_version, 10, optional: true, type: :uint64
  field :my_unix_time, 11, optional: true, type: :fixed32
  field :routing_blob, 12, optional: true, type: :bytes
end

defmodule CMsgSteamDatagramNoSessionRelayToClient do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :connection_id, 7, optional: true, type: :fixed32
  field :your_public_ip, 2, optional: true, type: :fixed32
  field :your_public_port, 6, optional: true, type: :fixed32
  field :server_time, 3, optional: true, type: :fixed32
  field :challenge, 4, optional: true, type: :fixed64
  field :seconds_until_shutdown, 5, optional: true, type: :uint32
end

defmodule CMsgSteamDatagramNoSessionRelayToPeer do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :legacy_relay_session_id, 1, optional: true, type: :uint32
  field :from_relay_session_id, 2, optional: true, type: :fixed32
  field :from_connection_id, 7, optional: true, type: :fixed32
  field :kludge_pad, 99, optional: true, type: :fixed64
end

defmodule CMsgSteamDatagramClientPingSampleRequest do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :connection_id, 1, optional: true, type: :fixed32
end

defmodule CMsgSteamDatagramClientPingSampleReply.POP.AltAddress do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :id, 1, optional: true, type: :string
  field :front_ping_ms, 2, optional: true, type: :uint32
  field :penalty, 3, optional: true, type: :uint32
end

defmodule CMsgSteamDatagramClientPingSampleReply.POP do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :pop_id, 1, optional: true, type: :fixed32
  field :default_front_ping_ms, 2, optional: true, type: :uint32
  field :cluster_penalty, 4, optional: true, type: :uint32

  field :alt_addresses, 7,
    repeated: true,
    type: CMsgSteamDatagramClientPingSampleReply.POP.AltAddress

  field :default_e2e_ping_ms, 3, optional: true, type: :uint32
  field :default_e2e_score, 5, optional: true, type: :uint32
  field :p2p_via_peer_relay_pop_id, 6, optional: true, type: :fixed32
  field :best_dc_ping_ms, 9, optional: true, type: :uint32
  field :best_dc_score, 10, optional: true, type: :uint32
  field :best_dc_via_relay_pop_id, 11, optional: true, type: :fixed32
  field :default_dc_ping_ms, 12, optional: true, type: :uint32
  field :default_dc_score, 13, optional: true, type: :uint32
  field :default_dc_via_relay_pop_id, 14, optional: true, type: :fixed32
  field :test_dc_ping_ms, 15, optional: true, type: :uint32
  field :test_dc_score, 16, optional: true, type: :uint32
  field :test_dc_via_relay_pop_id, 17, optional: true, type: :fixed32
end

defmodule CMsgSteamDatagramClientPingSampleReply.LegacyDataCenter do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :data_center_id, 1, optional: true, type: :fixed32
  field :best_dc_via_relay_pop_id, 2, optional: true, type: :fixed32
  field :best_dc_ping_ms, 3, optional: true, type: :uint32
end

defmodule CMsgSteamDatagramClientPingSampleReply do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :connection_id, 1, optional: true, type: :fixed32
  field :relay_override_active, 5, optional: true, type: :bool
  field :pops, 2, repeated: true, type: CMsgSteamDatagramClientPingSampleReply.POP

  field :legacy_data_centers, 3,
    repeated: true,
    type: CMsgSteamDatagramClientPingSampleReply.LegacyDataCenter
end

defmodule CMsgSteamDatagramClientSwitchedPrimary.RouterQuality do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :score, 1, optional: true, type: :uint32
  field :front_ping, 2, optional: true, type: :uint32
  field :back_ping, 3, optional: true, type: :uint32
  field :seconds_until_down, 4, optional: true, type: :uint32
end

defmodule CMsgSteamDatagramClientSwitchedPrimary do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :connection_id, 1, optional: true, type: :fixed32
  field :from_ip, 2, optional: true, type: :fixed32
  field :from_port, 3, optional: true, type: :uint32
  field :from_router_cluster, 4, optional: true, type: :fixed32
  field :from_active_time, 5, optional: true, type: :uint32
  field :from_active_packets_recv, 6, optional: true, type: :uint32
  field :from_dropped_reason, 7, optional: true, type: :string
  field :gap_ms, 8, optional: true, type: :uint32

  field :from_quality_now, 9,
    optional: true,
    type: CMsgSteamDatagramClientSwitchedPrimary.RouterQuality

  field :to_quality_now, 10,
    optional: true,
    type: CMsgSteamDatagramClientSwitchedPrimary.RouterQuality

  field :from_quality_then, 11,
    optional: true,
    type: CMsgSteamDatagramClientSwitchedPrimary.RouterQuality

  field :to_quality_then, 12,
    optional: true,
    type: CMsgSteamDatagramClientSwitchedPrimary.RouterQuality
end

defmodule CMsgSteamDatagramConnectRequest do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :connection_id, 1, optional: true, type: :fixed32
  field :my_timestamp, 4, optional: true, type: :fixed64
  field :ping_est_ms, 5, optional: true, type: :uint32
  field :virtual_port, 9, optional: true, type: :uint32
  field :gameserver_relay_session_id, 2, optional: true, type: :uint32
  field :crypt, 6, optional: true, type: CMsgSteamDatagramSessionCryptInfoSigned
  field :cert, 7, optional: true, type: CMsgSteamDatagramCertificateSigned
  field :routing_secret, 10, optional: true, type: :fixed64
  field :legacy_client_steam_id, 3, optional: true, type: :fixed64
end

defmodule CMsgSteamDatagramConnectOK do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :client_connection_id, 1, optional: true, type: :fixed32
  field :server_connection_id, 7, optional: true, type: :fixed32
  field :your_timestamp, 3, optional: true, type: :fixed64
  field :delay_time_usec, 4, optional: true, type: :uint32
  field :gameserver_relay_session_id, 2, optional: true, type: :uint32
  field :crypt, 5, optional: true, type: CMsgSteamDatagramSessionCryptInfoSigned
  field :cert, 6, optional: true, type: CMsgSteamDatagramCertificateSigned
end

defmodule CMsgSteamNetworkingP2PSDRRoutingSummary do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :initial_ping, 1, optional: true, type: :uint32
  field :initial_ping_front_local, 2, optional: true, type: :uint32
  field :initial_ping_front_remote, 3, optional: true, type: :uint32
  field :initial_score, 4, optional: true, type: :uint32
  field :initial_pop_local, 5, optional: true, type: :fixed32
  field :initial_pop_remote, 6, optional: true, type: :fixed32
  field :best_ping, 11, optional: true, type: :uint32
  field :best_ping_front_local, 12, optional: true, type: :uint32
  field :best_ping_front_remote, 13, optional: true, type: :uint32
  field :best_score, 14, optional: true, type: :uint32
  field :best_pop_local, 15, optional: true, type: :fixed32
  field :best_pop_remote, 16, optional: true, type: :fixed32
  field :best_time, 17, optional: true, type: :uint32
  field :negotiation_ms, 7, optional: true, type: :uint32
  field :selected_seconds, 8, optional: true, type: :uint32
end

defmodule CMsgSteamDatagramP2PRoutingSummary do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :ice, 2, optional: true, type: CMsgSteamNetworkingICESessionSummary
  field :sdr, 3, optional: true, type: CMsgSteamNetworkingP2PSDRRoutingSummary
end

defmodule CMsgSteamDatagramConnectionClosed do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :to_connection_id, 7, optional: true, type: :fixed32
  field :from_connection_id, 8, optional: true, type: :fixed32
  field :from_identity_string, 15, optional: true, type: :string

  field :legacy_from_identity_binary, 13,
    optional: true,
    type: CMsgSteamNetworkingIdentityLegacyBinary

  field :legacy_from_steam_id, 3, optional: true, type: :fixed64
  field :legacy_gameserver_relay_session_id, 2, optional: true, type: :uint32
  field :to_relay_session_id, 9, optional: true, type: :fixed32
  field :from_relay_session_id, 10, optional: true, type: :fixed32
  field :forward_target_relay_routing_token, 11, optional: true, type: :bytes
  field :forward_target_revision, 12, optional: true, type: :uint32

  field :relay_mode, 4,
    optional: true,
    type: CMsgSteamDatagramConnectionClosed.ERelayMode,
    default: :None,
    enum: true

  field :debug, 5, optional: true, type: :string
  field :reason_code, 6, optional: true, type: :uint32
  field :routing_secret, 14, optional: true, type: :fixed64
  field :not_primary_session, 16, optional: true, type: :bool
  field :not_primary_transport, 19, optional: true, type: :bool
  field :relay_override_active, 22, optional: true, type: :bool
  field :quality_relay, 17, optional: true, type: CMsgSteamDatagramConnectionQuality
  field :quality_e2e, 18, optional: true, type: CMsgSteamDatagramConnectionQuality
  field :p2p_routing_summary, 21, optional: true, type: CMsgSteamDatagramP2PRoutingSummary
end

defmodule CMsgSteamDatagramNoConnection do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :to_connection_id, 5, optional: true, type: :fixed32
  field :from_connection_id, 6, optional: true, type: :fixed32
  field :legacy_gameserver_relay_session_id, 2, optional: true, type: :uint32
  field :to_relay_session_id, 9, optional: true, type: :fixed32
  field :from_relay_session_id, 10, optional: true, type: :fixed32
  field :from_identity_string, 7, optional: true, type: :string
  field :legacy_from_steam_id, 3, optional: true, type: :fixed64
  field :end_to_end, 4, optional: true, type: :bool
  field :not_primary_session, 12, optional: true, type: :bool
  field :not_primary_transport, 15, optional: true, type: :bool
  field :relay_override_active, 17, optional: true, type: :bool
  field :quality_relay, 13, optional: true, type: CMsgSteamDatagramConnectionQuality
  field :quality_e2e, 14, optional: true, type: CMsgSteamDatagramConnectionQuality
  field :p2p_routing_summary, 16, optional: true, type: CMsgSteamDatagramP2PRoutingSummary
  field :routing_secret, 11, optional: true, type: :fixed64
  field :dummy_pad, 1023, optional: true, type: :fixed32
end

defmodule CMsgSteamDatagramGameserverSessionRequest do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :ticket, 1, optional: true, type: :bytes
  field :challenge_time, 3, optional: true, type: :fixed32
  field :challenge, 4, optional: true, type: :fixed64
  field :client_connection_id, 5, optional: true, type: :fixed32
  field :server_connection_id, 8, optional: true, type: :fixed32
  field :network_config_version, 6, optional: true, type: :uint64
  field :protocol_version, 7, optional: true, type: :uint32
  field :platform, 9, optional: true, type: :string
  field :build, 10, optional: true, type: :string
  field :dev_gameserver_identity, 100, optional: true, type: :string
  field :dev_client_cert, 101, optional: true, type: CMsgSteamDatagramCertificateSigned
end

defmodule CMsgSteamDatagramGameserverSessionEstablished do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :connection_id, 1, optional: true, type: :fixed32
  field :gameserver_identity_string, 2, optional: true, type: :string
  field :seconds_until_shutdown, 4, optional: true, type: :uint32
  field :seq_num_r2c, 6, optional: true, type: :uint32
  field :dummy_legacy_identity_binary, 7, optional: true, type: :bytes
  field :legacy_gameserver_steamid, 3, optional: true, type: :fixed64
end

defmodule CMsgSteamDatagramConnectionStatsClientToRouter do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :quality_relay, 1, optional: true, type: CMsgSteamDatagramConnectionQuality
  field :quality_e2e, 2, optional: true, type: CMsgSteamDatagramConnectionQuality
  field :ack_relay, 4, repeated: true, type: :fixed32
  field :legacy_ack_e2e, 5, repeated: true, type: :fixed32
  field :flags, 6, optional: true, type: :uint32
  field :client_connection_id, 8, optional: true, type: :fixed32
  field :seq_num_c2r, 9, optional: true, type: :uint32
  field :seq_num_e2e, 10, optional: true, type: :uint32
end

defmodule CMsgSteamDatagramConnectionStatsRouterToClient do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :quality_relay, 1, optional: true, type: CMsgSteamDatagramConnectionQuality
  field :quality_e2e, 2, optional: true, type: CMsgSteamDatagramConnectionQuality
  field :seconds_until_shutdown, 6, optional: true, type: :uint32
  field :migrate_request_ip, 10, optional: true, type: :fixed32
  field :migrate_request_port, 11, optional: true, type: :uint32
  field :scoring_penalty_relay_cluster, 12, optional: true, type: :uint32
  field :ack_relay, 13, repeated: true, type: :fixed32
  field :legacy_ack_e2e, 14, repeated: true, type: :fixed32
  field :flags, 15, optional: true, type: :uint32
  field :client_connection_id, 7, optional: true, type: :fixed32
  field :seq_num_r2c, 8, optional: true, type: :uint32
  field :seq_num_e2e, 9, optional: true, type: :uint32
end

defmodule CMsgSteamDatagramConnectionStatsRouterToServer do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :quality_relay, 1, optional: true, type: CMsgSteamDatagramConnectionQuality
  field :quality_e2e, 2, optional: true, type: CMsgSteamDatagramConnectionQuality
  field :ack_relay, 10, repeated: true, type: :fixed32
  field :legacy_ack_e2e, 11, repeated: true, type: :fixed32
  field :flags, 12, optional: true, type: :uint32
  field :seq_num_r2s, 5, optional: true, type: :uint32
  field :seq_num_e2e, 6, optional: true, type: :uint32
  field :client_identity_string, 15, optional: true, type: :string
  field :legacy_client_steam_id, 7, optional: true, type: :fixed64
  field :relay_session_id, 8, optional: true, type: :uint32
  field :client_connection_id, 9, optional: true, type: :fixed32
  field :server_connection_id, 13, optional: true, type: :fixed32
  field :routing_secret, 14, optional: true, type: :fixed64
end

defmodule CMsgSteamDatagramConnectionStatsServerToRouter do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :quality_relay, 1, optional: true, type: CMsgSteamDatagramConnectionQuality
  field :quality_e2e, 2, optional: true, type: CMsgSteamDatagramConnectionQuality
  field :ack_relay, 8, repeated: true, type: :fixed32
  field :legacy_ack_e2e, 9, repeated: true, type: :fixed32
  field :flags, 10, optional: true, type: :uint32
  field :seq_num_s2r, 3, optional: true, type: :uint32
  field :seq_num_e2e, 4, optional: true, type: :uint32
  field :relay_session_id, 6, optional: true, type: :uint32
  field :client_connection_id, 7, optional: true, type: :fixed32
  field :server_connection_id, 11, optional: true, type: :fixed32
end

defmodule CMsgSteamDatagramP2PSessionRequestBody.EncryptedData do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :peer_identity_string, 1, optional: true, type: :string
end

defmodule CMsgSteamDatagramP2PSessionRequestBody do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :challenge_time, 1, optional: true, type: :fixed32
  field :challenge, 2, optional: true, type: :fixed64
  field :client_connection_id, 3, optional: true, type: :fixed32
  field :legacy_peer_steam_id, 4, optional: true, type: :fixed64
  field :peer_identity_string, 11, optional: true, type: :string
  field :peer_connection_id, 5, optional: true, type: :fixed32
  field :encrypted_data, 14, optional: true, type: :bytes
  field :encryption_your_public_key_lead_byte, 15, optional: true, type: :uint32
  field :encryption_my_ephemeral_public_key, 16, optional: true, type: :bytes
  field :protocol_version, 8, optional: true, type: :uint32
  field :network_config_version, 9, optional: true, type: :uint64
  field :platform, 12, optional: true, type: :string
  field :build, 13, optional: true, type: :string
end

defmodule CMsgSteamDatagramP2PSessionRequest do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :cert, 1, optional: true, type: CMsgSteamDatagramCertificateSigned
  field :body, 2, optional: true, type: :bytes
  field :signature, 3, optional: true, type: :bytes
end

defmodule CMsgSteamDatagramP2PSessionEstablished do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :connection_id, 1, optional: true, type: :fixed32
  field :seconds_until_shutdown, 3, optional: true, type: :uint32
  field :relay_routing_token, 4, optional: true, type: :bytes
  field :seq_num_r2c, 5, optional: true, type: :uint32
end

defmodule CMsgSteamDatagramConnectionStatsP2PClientToRouter do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :quality_relay, 1, optional: true, type: CMsgSteamDatagramConnectionQuality
  field :quality_e2e, 2, optional: true, type: CMsgSteamDatagramConnectionQuality
  field :p2p_routing_summary, 14, optional: true, type: CMsgSteamDatagramP2PRoutingSummary
  field :ack_relay, 3, repeated: true, type: :fixed32
  field :legacy_ack_e2e, 4, repeated: true, type: :fixed32
  field :flags, 5, optional: true, type: :uint32
  field :forward_target_relay_routing_token, 6, optional: true, type: :bytes
  field :forward_target_revision, 7, optional: true, type: :uint32
  field :routes, 8, optional: true, type: :bytes
  field :ack_peer_routes_revision, 9, optional: true, type: :uint32
  field :connection_id, 10, optional: true, type: :fixed32
  field :seq_num_c2r, 11, optional: true, type: :uint32
  field :seq_num_e2e, 12, optional: true, type: :uint32
end

defmodule CMsgSteamDatagramConnectionStatsP2PRouterToClient do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :quality_relay, 1, optional: true, type: CMsgSteamDatagramConnectionQuality
  field :quality_e2e, 2, optional: true, type: CMsgSteamDatagramConnectionQuality
  field :seconds_until_shutdown, 3, optional: true, type: :uint32
  field :migrate_request_ip, 4, optional: true, type: :fixed32
  field :migrate_request_port, 5, optional: true, type: :uint32
  field :scoring_penalty_relay_cluster, 6, optional: true, type: :uint32
  field :ack_relay, 7, repeated: true, type: :fixed32
  field :legacy_ack_e2e, 8, repeated: true, type: :fixed32
  field :flags, 9, optional: true, type: :uint32
  field :ack_forward_target_revision, 10, optional: true, type: :uint32
  field :routes, 11, optional: true, type: :bytes
  field :ack_peer_routes_revision, 12, optional: true, type: :uint32
  field :connection_id, 13, optional: true, type: :fixed32
  field :seq_num_r2c, 14, optional: true, type: :uint32
  field :seq_num_e2e, 15, optional: true, type: :uint32
end

defmodule CMsgSteamDatagramP2PBadRouteRouterToClient do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :connection_id, 1, optional: true, type: :fixed32
  field :failed_relay_routing_token, 2, optional: true, type: :bytes
  field :ack_forward_target_revision, 3, optional: true, type: :uint32
  field :kludge_pad, 99, optional: true, type: :fixed64
end

defmodule CMsgSteamDatagramP2PRoutes.RelayCluster do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :pop_id, 1, optional: true, type: :fixed32
  field :ping_ms, 2, optional: true, type: :uint32
  field :score_penalty, 3, optional: true, type: :uint32
  field :session_relay_routing_token, 4, optional: true, type: :bytes
end

defmodule CMsgSteamDatagramP2PRoutes.Route do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :my_pop_id, 1, optional: true, type: :fixed32
  field :your_pop_id, 2, optional: true, type: :fixed32
  field :legacy_score, 3, optional: true, type: :uint32
  field :interior_score, 4, optional: true, type: :uint32
end

defmodule CMsgSteamDatagramP2PRoutes do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :relay_clusters, 1, repeated: true, type: CMsgSteamDatagramP2PRoutes.RelayCluster
  field :routes, 2, repeated: true, type: CMsgSteamDatagramP2PRoutes.Route
  field :revision, 3, optional: true, type: :uint32
end

defmodule CMsgSteamDatagramSetSecondaryAddressRequest do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :client_main_ip, 1, optional: true, type: :fixed32
  field :client_main_port, 2, optional: true, type: :fixed32
  field :client_connection_id, 3, optional: true, type: :fixed32
  field :client_identity, 4, optional: true, type: :string
  field :request_send_duplication, 5, optional: true, type: :bool
  field :kludge_pad, 99, optional: true, type: :bytes
end

defmodule CMsgSteamDatagramSetSecondaryAddressResult do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :success, 1, optional: true, type: :bool
  field :message, 2, optional: true, type: :string
end