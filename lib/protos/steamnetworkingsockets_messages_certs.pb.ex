defmodule CMsgSteamDatagramCertificate.EKeyType do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :INVALID, 0
  field :ED25519, 1
end

defmodule CMsgSteamNetworkingIdentityLegacyBinary do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steam_id, 16, optional: true, type: :fixed64
  field :xbox_pairwise_id, 17, optional: true, type: :string
  field :generic_bytes, 2, optional: true, type: :bytes
  field :generic_string, 3, optional: true, type: :string
  field :ipv6_and_port, 4, optional: true, type: :bytes
end

defmodule CMsgSteamDatagramCertificate do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :key_type, 1,
    optional: true,
    type: CMsgSteamDatagramCertificate.EKeyType,
    default: :INVALID,
    enum: true

  field :key_data, 2, optional: true, type: :bytes
  field :legacy_steam_id, 4, optional: true, type: :fixed64
  field :legacy_identity_binary, 11, optional: true, type: CMsgSteamNetworkingIdentityLegacyBinary
  field :identity_string, 12, optional: true, type: :string
  field :gameserver_datacenter_ids, 5, repeated: true, type: :fixed32
  field :time_created, 8, optional: true, type: :fixed32
  field :time_expiry, 9, optional: true, type: :fixed32
  field :app_ids, 10, repeated: true, type: :uint32
  field :ip_addresses, 13, repeated: true, type: :string
end

defmodule CMsgSteamDatagramCertificateSigned do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :cert, 4, optional: true, type: :bytes
  field :ca_key_id, 5, optional: true, type: :fixed64
  field :ca_signature, 6, optional: true, type: :bytes
  field :private_key_data, 1, optional: true, type: :bytes
end

defmodule CMsgSteamDatagramCertificateRequest do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :cert, 1, optional: true, type: CMsgSteamDatagramCertificate
end