defmodule EDemoCommands do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :DEM_Error, -1
  field :DEM_Stop, 0
  field :DEM_FileHeader, 1
  field :DEM_FileInfo, 2
  field :DEM_SyncTick, 3
  field :DEM_SendTables, 4
  field :DEM_ClassInfo, 5
  field :DEM_StringTables, 6
  field :DEM_Packet, 7
  field :DEM_SignonPacket, 8
  field :DEM_ConsoleCmd, 9
  field :DEM_CustomData, 10
  field :DEM_CustomDataCallbacks, 11
  field :DEM_UserCmd, 12
  field :DEM_FullPacket, 13
  field :DEM_SaveGame, 14
  field :DEM_SpawnGroups, 15
  field :DEM_AnimationData, 16
  field :DEM_Max, 17
  field :DEM_IsCompressed, 64
end

defmodule CDemoFileHeader do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :demo_file_stamp, 1, required: true, type: :string
  field :network_protocol, 2, optional: true, type: :int32
  field :server_name, 3, optional: true, type: :string
  field :client_name, 4, optional: true, type: :string
  field :map_name, 5, optional: true, type: :string
  field :game_directory, 6, optional: true, type: :string
  field :fullpackets_version, 7, optional: true, type: :int32
  field :allow_clientside_entities, 8, optional: true, type: :bool
  field :allow_clientside_particles, 9, optional: true, type: :bool
  field :addons, 10, optional: true, type: :string
  field :demo_version_name, 11, optional: true, type: :string
  field :demo_version_guid, 12, optional: true, type: :string
  field :build_num, 13, optional: true, type: :int32
  field :game, 14, optional: true, type: :string
end

defmodule CGameInfo.CDotaGameInfo.CPlayerInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :hero_name, 1, optional: true, type: :string
  field :player_name, 2, optional: true, type: :string
  field :is_fake_client, 3, optional: true, type: :bool
  field :steamid, 4, optional: true, type: :uint64
  field :game_team, 5, optional: true, type: :int32
end

defmodule CGameInfo.CDotaGameInfo.CHeroSelectEvent do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :is_pick, 1, optional: true, type: :bool
  field :team, 2, optional: true, type: :uint32
  field :hero_id, 3, optional: true, type: :uint32
end

defmodule CGameInfo.CDotaGameInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :match_id, 1, optional: true, type: :uint64
  field :game_mode, 2, optional: true, type: :int32
  field :game_winner, 3, optional: true, type: :int32
  field :player_info, 4, repeated: true, type: CGameInfo.CDotaGameInfo.CPlayerInfo
  field :leagueid, 5, optional: true, type: :uint32
  field :picks_bans, 6, repeated: true, type: CGameInfo.CDotaGameInfo.CHeroSelectEvent
  field :radiant_team_id, 7, optional: true, type: :uint32
  field :dire_team_id, 8, optional: true, type: :uint32
  field :radiant_team_tag, 9, optional: true, type: :string
  field :dire_team_tag, 10, optional: true, type: :string
  field :end_time, 11, optional: true, type: :uint32
end

defmodule CGameInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :dota, 4, optional: true, type: CGameInfo.CDotaGameInfo
end

defmodule CDemoFileInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :playback_time, 1, optional: true, type: :float
  field :playback_ticks, 2, optional: true, type: :int32
  field :playback_frames, 3, optional: true, type: :int32
  field :game_info, 4, optional: true, type: CGameInfo
end

defmodule CDemoPacket do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :data, 3, optional: true, type: :bytes
end

defmodule CDemoFullPacket do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :string_table, 1, optional: true, type: CDemoStringTables
  field :packet, 2, optional: true, type: CDemoPacket
end

defmodule CDemoSaveGame do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :data, 1, optional: true, type: :bytes
  field :steam_id, 2, optional: true, type: :fixed64
  field :signature, 3, optional: true, type: :fixed64
  field :version, 4, optional: true, type: :int32
end

defmodule CDemoSyncTick do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CDemoConsoleCmd do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :cmdstring, 1, optional: true, type: :string
end

defmodule CDemoSendTables do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :data, 1, optional: true, type: :bytes
end

defmodule CDemoClassInfo.ClassT do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :class_id, 1, optional: true, type: :int32
  field :network_name, 2, optional: true, type: :string
  field :table_name, 3, optional: true, type: :string
end

defmodule CDemoClassInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :classes, 1, repeated: true, type: CDemoClassInfo.ClassT
end

defmodule CDemoCustomData do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :callback_index, 1, optional: true, type: :int32
  field :data, 2, optional: true, type: :bytes
end

defmodule CDemoCustomDataCallbacks do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :save_id, 1, repeated: true, type: :string
end

defmodule CDemoAnimationData do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :entity_id, 1, optional: true, type: :sint32
  field :start_tick, 2, optional: true, type: :int32
  field :end_tick, 3, optional: true, type: :int32
  field :data, 4, optional: true, type: :bytes
  field :data_checksum, 5, optional: true, type: :int64
end

defmodule CDemoStringTables.ItemsT do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :str, 1, optional: true, type: :string
  field :data, 2, optional: true, type: :bytes
end

defmodule CDemoStringTables.TableT do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :table_name, 1, optional: true, type: :string
  field :items, 2, repeated: true, type: CDemoStringTables.ItemsT
  field :items_clientside, 3, repeated: true, type: CDemoStringTables.ItemsT
  field :table_flags, 4, optional: true, type: :int32
end

defmodule CDemoStringTables do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :tables, 1, repeated: true, type: CDemoStringTables.TableT
end

defmodule CDemoStop do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CDemoUserCmd do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :cmd_number, 1, optional: true, type: :int32
  field :data, 2, optional: true, type: :bytes
end

defmodule CDemoSpawnGroups do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :msgs, 3, repeated: true, type: :bytes
end