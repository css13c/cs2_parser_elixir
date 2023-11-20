defmodule CMsgSteamDatagramRelayAuthTicket.ExtraField do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :name, 1, optional: true, type: :string
  field :string_value, 2, optional: true, type: :string
  field :int64_value, 3, optional: true, type: :sint64
  field :fixed64_value, 5, optional: true, type: :fixed64
end

defmodule CMsgSteamDatagramRelayAuthTicket do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :time_expiry, 1, optional: true, type: :fixed32
  field :authorized_client_identity_string, 14, optional: true, type: :string
  field :gameserver_identity_string, 15, optional: true, type: :string
  field :authorized_public_ip, 3, optional: true, type: :fixed32
  field :gameserver_address, 11, optional: true, type: :bytes
  field :app_id, 7, optional: true, type: :uint32
  field :virtual_port, 10, optional: true, type: :uint32
  field :extra_fields, 8, repeated: true, type: CMsgSteamDatagramRelayAuthTicket.ExtraField
  field :legacy_authorized_steam_id, 2, optional: true, type: :fixed64
  field :legacy_gameserver_steam_id, 4, optional: true, type: :fixed64
  field :legacy_gameserver_pop_id, 9, optional: true, type: :fixed32
  field :legacy_authorized_client_identity_binary, 12, optional: true, type: :bytes
  field :legacy_gameserver_identity_binary, 13, optional: true, type: :bytes
end

defmodule CMsgSteamDatagramSignedRelayAuthTicket do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :reserved_do_not_use, 1, optional: true, type: :fixed64
  field :ticket, 3, optional: true, type: :bytes
  field :signature, 4, optional: true, type: :bytes
  field :key_id, 2, optional: true, type: :fixed64
  field :certs, 5, repeated: true, type: CMsgSteamDatagramCertificateSigned
end

defmodule CMsgSteamDatagramCachedCredentialsForApp do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :private_key, 1, optional: true, type: :bytes
  field :cert, 2, optional: true, type: :bytes
  field :relay_tickets, 3, repeated: true, type: :bytes
end

defmodule CMsgSteamDatagramGameCoordinatorServerLogin do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :time_generated, 1, optional: true, type: :uint32
  field :appid, 2, optional: true, type: :uint32
  field :routing, 3, optional: true, type: :bytes
  field :appdata, 4, optional: true, type: :bytes
  field :legacy_identity_binary, 5, optional: true, type: :bytes
  field :identity_string, 6, optional: true, type: :string
  field :dummy_steam_id, 99, optional: true, type: :fixed64
end

defmodule CMsgSteamDatagramSignedGameCoordinatorServerLogin do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :cert, 1, optional: true, type: CMsgSteamDatagramCertificateSigned
  field :login, 2, optional: true, type: :bytes
  field :signature, 3, optional: true, type: :bytes
end

defmodule CMsgSteamDatagramHostedServerAddressPlaintext do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :ipv4, 1, optional: true, type: :fixed32
  field :ipv6, 2, optional: true, type: :bytes
  field :port, 3, optional: true, type: :uint32
  field :routing_secret, 4, optional: true, type: :fixed64
  field :protocol_version, 5, optional: true, type: :uint32
end