defmodule ESteamNetworkingSocketsCipher do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :k_ESteamNetworkingSocketsCipher_INVALID, 0
  field :k_ESteamNetworkingSocketsCipher_NULL, 1
  field :k_ESteamNetworkingSocketsCipher_AES_256_GCM, 2
end

defmodule CMsgSteamDatagramSessionCryptInfo.EKeyType do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :INVALID, 0
  field :CURVE25519, 1
end

defmodule CMsgSteamDatagramSessionCryptInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :key_type, 1,
    optional: true,
    type: CMsgSteamDatagramSessionCryptInfo.EKeyType,
    default: :INVALID,
    enum: true

  field :key_data, 2, optional: true, type: :bytes
  field :nonce, 3, optional: true, type: :fixed64
  field :protocol_version, 4, optional: true, type: :uint32
  field :ciphers, 5, repeated: true, type: ESteamNetworkingSocketsCipher, enum: true
end

defmodule CMsgSteamDatagramSessionCryptInfoSigned do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :info, 1, optional: true, type: :bytes
  field :signature, 2, optional: true, type: :bytes
end

defmodule CMsgSteamDatagramDiagnostic do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :severity, 1, optional: true, type: :uint32
  field :text, 2, optional: true, type: :string
end

defmodule CMsgSteamDatagramLinkInstantaneousStats do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :out_packets_per_sec_x10, 1, optional: true, type: :uint32
  field :out_bytes_per_sec, 2, optional: true, type: :uint32
  field :in_packets_per_sec_x10, 3, optional: true, type: :uint32
  field :in_bytes_per_sec, 4, optional: true, type: :uint32
  field :ping_ms, 5, optional: true, type: :uint32
  field :packets_dropped_pct, 6, optional: true, type: :uint32
  field :packets_weird_sequence_pct, 7, optional: true, type: :uint32
  field :peak_jitter_usec, 8, optional: true, type: :uint32
end

defmodule CMsgSteamDatagramLinkLifetimeStats do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :connected_seconds, 2, optional: true, type: :uint32
  field :packets_sent, 3, optional: true, type: :uint64
  field :kb_sent, 4, optional: true, type: :uint64
  field :packets_recv, 5, optional: true, type: :uint64
  field :kb_recv, 6, optional: true, type: :uint64
  field :packets_recv_sequenced, 7, optional: true, type: :uint64
  field :packets_recv_dropped, 8, optional: true, type: :uint64
  field :packets_recv_out_of_order, 9, optional: true, type: :uint64
  field :packets_recv_out_of_order_corrected, 15, optional: true, type: :uint64
  field :packets_recv_duplicate, 10, optional: true, type: :uint64
  field :packets_recv_lurch, 11, optional: true, type: :uint64
  field :multipath_packets_recv_sequenced, 12, repeated: true, type: :uint64
  field :multipath_packets_recv_later, 13, repeated: true, type: :uint64
  field :multipath_send_enabled, 14, optional: true, type: :uint32
  field :quality_histogram_100, 21, optional: true, type: :uint32
  field :quality_histogram_99, 22, optional: true, type: :uint32
  field :quality_histogram_97, 23, optional: true, type: :uint32
  field :quality_histogram_95, 24, optional: true, type: :uint32
  field :quality_histogram_90, 25, optional: true, type: :uint32
  field :quality_histogram_75, 26, optional: true, type: :uint32
  field :quality_histogram_50, 27, optional: true, type: :uint32
  field :quality_histogram_1, 28, optional: true, type: :uint32
  field :quality_histogram_dead, 29, optional: true, type: :uint32
  field :quality_ntile_2nd, 30, optional: true, type: :uint32
  field :quality_ntile_5th, 31, optional: true, type: :uint32
  field :quality_ntile_25th, 32, optional: true, type: :uint32
  field :quality_ntile_50th, 33, optional: true, type: :uint32
  field :ping_histogram_25, 41, optional: true, type: :uint32
  field :ping_histogram_50, 42, optional: true, type: :uint32
  field :ping_histogram_75, 43, optional: true, type: :uint32
  field :ping_histogram_100, 44, optional: true, type: :uint32
  field :ping_histogram_125, 45, optional: true, type: :uint32
  field :ping_histogram_150, 46, optional: true, type: :uint32
  field :ping_histogram_200, 47, optional: true, type: :uint32
  field :ping_histogram_300, 48, optional: true, type: :uint32
  field :ping_histogram_max, 49, optional: true, type: :uint32
  field :ping_ntile_5th, 50, optional: true, type: :uint32
  field :ping_ntile_50th, 51, optional: true, type: :uint32
  field :ping_ntile_75th, 52, optional: true, type: :uint32
  field :ping_ntile_95th, 53, optional: true, type: :uint32
  field :ping_ntile_98th, 54, optional: true, type: :uint32
  field :jitter_histogram_negligible, 61, optional: true, type: :uint32
  field :jitter_histogram_1, 62, optional: true, type: :uint32
  field :jitter_histogram_2, 63, optional: true, type: :uint32
  field :jitter_histogram_5, 64, optional: true, type: :uint32
  field :jitter_histogram_10, 65, optional: true, type: :uint32
  field :jitter_histogram_20, 66, optional: true, type: :uint32
  field :txspeed_max, 67, optional: true, type: :uint32
  field :txspeed_histogram_16, 68, optional: true, type: :uint32
  field :txspeed_histogram_32, 69, optional: true, type: :uint32
  field :txspeed_histogram_64, 70, optional: true, type: :uint32
  field :txspeed_histogram_128, 71, optional: true, type: :uint32
  field :txspeed_histogram_256, 72, optional: true, type: :uint32
  field :txspeed_histogram_512, 73, optional: true, type: :uint32
  field :txspeed_histogram_1024, 74, optional: true, type: :uint32
  field :txspeed_histogram_max, 75, optional: true, type: :uint32
  field :txspeed_ntile_5th, 76, optional: true, type: :uint32
  field :txspeed_ntile_50th, 77, optional: true, type: :uint32
  field :txspeed_ntile_75th, 78, optional: true, type: :uint32
  field :txspeed_ntile_95th, 79, optional: true, type: :uint32
  field :txspeed_ntile_98th, 80, optional: true, type: :uint32
  field :rxspeed_max, 81, optional: true, type: :uint32
  field :rxspeed_histogram_16, 82, optional: true, type: :uint32
  field :rxspeed_histogram_32, 83, optional: true, type: :uint32
  field :rxspeed_histogram_64, 84, optional: true, type: :uint32
  field :rxspeed_histogram_128, 85, optional: true, type: :uint32
  field :rxspeed_histogram_256, 86, optional: true, type: :uint32
  field :rxspeed_histogram_512, 87, optional: true, type: :uint32
  field :rxspeed_histogram_1024, 88, optional: true, type: :uint32
  field :rxspeed_histogram_max, 89, optional: true, type: :uint32
  field :rxspeed_ntile_5th, 90, optional: true, type: :uint32
  field :rxspeed_ntile_50th, 91, optional: true, type: :uint32
  field :rxspeed_ntile_75th, 92, optional: true, type: :uint32
  field :rxspeed_ntile_95th, 93, optional: true, type: :uint32
  field :rxspeed_ntile_98th, 94, optional: true, type: :uint32
end

defmodule CMsgSteamDatagramConnectionQuality do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :instantaneous, 1, optional: true, type: CMsgSteamDatagramLinkInstantaneousStats
  field :lifetime, 2, optional: true, type: CMsgSteamDatagramLinkLifetimeStats
end

defmodule CMsgICECandidate do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :candidate, 3, optional: true, type: :string
end

defmodule CMsgICERendezvous.Auth do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :pwd_frag, 1, optional: true, type: :string
end

defmodule CMsgICERendezvous do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :auth, 2, optional: true, type: CMsgICERendezvous.Auth
  field :add_candidate, 1, optional: true, type: CMsgICECandidate
end

defmodule CMsgSteamNetworkingP2PRendezvous.ConnectRequest do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :crypt, 6, optional: true, type: CMsgSteamDatagramSessionCryptInfoSigned
  field :cert, 7, optional: true, type: CMsgSteamDatagramCertificateSigned
  field :to_virtual_port, 9, optional: true, type: :uint32
  field :from_virtual_port, 10, optional: true, type: :uint32
  field :from_fakeip, 11, optional: true, type: :string
end

defmodule CMsgSteamNetworkingP2PRendezvous.ConnectOK do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :crypt, 5, optional: true, type: CMsgSteamDatagramSessionCryptInfoSigned
  field :cert, 6, optional: true, type: CMsgSteamDatagramCertificateSigned
end

defmodule CMsgSteamNetworkingP2PRendezvous.ConnectionClosed do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :debug, 5, optional: true, type: :string
  field :reason_code, 6, optional: true, type: :uint32
end

defmodule CMsgSteamNetworkingP2PRendezvous.ReliableMessage do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :ice, 1, optional: true, type: CMsgICERendezvous
end

defmodule CMsgSteamNetworkingP2PRendezvous.ApplicationMessage do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :data, 1, optional: true, type: :bytes
  field :msg_num, 2, optional: true, type: :uint64
  field :flags, 3, optional: true, type: :uint32
  field :lane_idx, 4, optional: true, type: :uint32
end

defmodule CMsgSteamNetworkingP2PRendezvous do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :from_identity, 8, optional: true, type: :string
  field :from_connection_id, 9, optional: true, type: :fixed32
  field :to_identity, 10, optional: true, type: :string
  field :to_connection_id, 1, optional: true, type: :fixed32
  field :sdr_routes, 2, optional: true, type: :bytes
  field :ack_peer_routes_revision, 3, optional: true, type: :uint32
  field :ice_enabled, 7, optional: true, type: :bool
  field :hosted_server_ticket, 14, optional: true, type: :bytes
  field :connect_request, 4, optional: true, type: CMsgSteamNetworkingP2PRendezvous.ConnectRequest
  field :connect_ok, 5, optional: true, type: CMsgSteamNetworkingP2PRendezvous.ConnectOK

  field :connection_closed, 6,
    optional: true,
    type: CMsgSteamNetworkingP2PRendezvous.ConnectionClosed

  field :ack_reliable_msg, 11, optional: true, type: :uint32
  field :first_reliable_msg, 12, optional: true, type: :uint32

  field :reliable_messages, 13,
    repeated: true,
    type: CMsgSteamNetworkingP2PRendezvous.ReliableMessage

  field :application_messages, 15,
    repeated: true,
    type: CMsgSteamNetworkingP2PRendezvous.ApplicationMessage
end

defmodule CMsgSteamNetworkingICESessionSummary do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :failure_reason_code, 7, optional: true, type: :uint32
  field :local_candidate_types, 1, optional: true, type: :uint32
  field :remote_candidate_types, 2, optional: true, type: :uint32
  field :initial_route_kind, 3, optional: true, type: :uint32
  field :initial_ping, 4, optional: true, type: :uint32
  field :initial_score, 6, optional: true, type: :uint32
  field :negotiation_ms, 5, optional: true, type: :uint32
  field :best_route_kind, 16, optional: true, type: :uint32
  field :best_ping, 17, optional: true, type: :uint32
  field :best_score, 18, optional: true, type: :uint32
  field :best_time, 19, optional: true, type: :uint32
  field :selected_seconds, 12, optional: true, type: :uint32
  field :user_settings, 13, optional: true, type: :uint32
  field :ice_enable_var, 14, optional: true, type: :uint32
  field :local_candidate_types_allowed, 15, optional: true, type: :uint32
end