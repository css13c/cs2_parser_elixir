defmodule SignonStateT do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :SIGNONSTATE_NONE, 0
  field :SIGNONSTATE_CHALLENGE, 1
  field :SIGNONSTATE_CONNECTED, 2
  field :SIGNONSTATE_NEW, 3
  field :SIGNONSTATE_PRESPAWN, 4
  field :SIGNONSTATE_SPAWN, 5
  field :SIGNONSTATE_FULL, 6
  field :SIGNONSTATE_CHANGELEVEL, 7
end

defmodule NET_Messages do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :net_NOP, 0
  field :net_Disconnect, 1
  field :net_SplitScreenUser, 3
  field :net_Tick, 4
  field :net_StringCmd, 5
  field :net_SetConVar, 6
  field :net_SignonState, 7
  field :net_SpawnGroup_Load, 8
  field :net_SpawnGroup_ManifestUpdate, 9
  field :net_SpawnGroup_SetCreationTick, 11
  field :net_SpawnGroup_Unload, 12
  field :net_SpawnGroup_LoadCompleted, 13
  field :net_DebugOverlay, 15
end

defmodule SpawnGroupFlagsT do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :SPAWN_GROUP_LOAD_ENTITIES_FROM_SAVE, 1
  field :SPAWN_GROUP_DONT_SPAWN_ENTITIES, 2
  field :SPAWN_GROUP_SYNCHRONOUS_SPAWN, 4
  field :SPAWN_GROUP_IS_INITIAL_SPAWN_GROUP, 8
  field :SPAWN_GROUP_CREATE_CLIENT_ONLY_ENTITIES, 16
  field :SPAWN_GROUP_BLOCK_UNTIL_LOADED, 64
  field :SPAWN_GROUP_LOAD_STREAMING_DATA, 128
  field :SPAWN_GROUP_CREATE_NEW_SCENE_WORLD, 256
end

defmodule CMsgVector do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :x, 1, optional: true, type: :float
  field :y, 2, optional: true, type: :float
  field :z, 3, optional: true, type: :float
  field :w, 4, optional: true, type: :float
end

defmodule CMsgVector2D do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :x, 1, optional: true, type: :float
  field :y, 2, optional: true, type: :float
end

defmodule CMsgQAngle do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :x, 1, optional: true, type: :float
  field :y, 2, optional: true, type: :float
  field :z, 3, optional: true, type: :float
end

defmodule CMsgQuaternion do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :x, 1, optional: true, type: :float
  field :y, 2, optional: true, type: :float
  field :z, 3, optional: true, type: :float
  field :w, 4, optional: true, type: :float
end

defmodule CMsgTransform do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :position, 1, optional: true, type: CMsgVector
  field :scale, 2, optional: true, type: :float
  field :orientation, 3, optional: true, type: CMsgQuaternion
end

defmodule CMsgRGBA do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :r, 1, optional: true, type: :int32
  field :g, 2, optional: true, type: :int32
  field :b, 3, optional: true, type: :int32
  field :a, 4, optional: true, type: :int32
end

defmodule CMsgPlayerInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :name, 1, optional: true, type: :string
  field :xuid, 2, optional: true, type: :fixed64
  field :userid, 3, optional: true, type: :int32
  field :steamid, 4, optional: true, type: :fixed64
  field :fakeplayer, 5, optional: true, type: :bool
  field :ishltv, 6, optional: true, type: :bool
end

defmodule CEntityMsg do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :target_entity, 1, optional: true, type: :uint32, default: 16_777_215
end

defmodule CMsg_CVars.CVar do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :name, 1, optional: true, type: :string
  field :value, 2, optional: true, type: :string
end

defmodule CMsg_CVars do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :cvars, 1, repeated: true, type: CMsg_CVars.CVar
end

defmodule CNETMsg_NOP do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CNETMsg_SplitScreenUser do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :slot, 1, optional: true, type: :int32
end

defmodule CNETMsg_Disconnect do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :reason, 2,
    optional: true,
    type: ENetworkDisconnectionReason,
    default: :NETWORK_DISCONNECT_INVALID,
    enum: true
end

defmodule CNETMsg_Tick do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :tick, 1, optional: true, type: :uint32
  field :host_frametime, 2, optional: true, type: :uint32
  field :host_frametime_std_deviation, 3, optional: true, type: :uint32
  field :host_computationtime, 4, optional: true, type: :uint32
  field :host_computationtime_std_deviation, 5, optional: true, type: :uint32
  field :host_framestarttime_std_deviation, 6, optional: true, type: :uint32
  field :host_loss, 7, optional: true, type: :uint32
  field :host_unfiltered_frametime, 8, optional: true, type: :uint32
  field :hltv_replay_flags, 9, optional: true, type: :uint32
end

defmodule CNETMsg_StringCmd do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :command, 1, optional: true, type: :string
  field :prediction_sync, 2, optional: true, type: :uint32
end

defmodule CNETMsg_SetConVar do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :convars, 1, optional: true, type: CMsg_CVars
end

defmodule CNETMsg_SignonState do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :signon_state, 1,
    optional: true,
    type: SignonStateT,
    default: :SIGNONSTATE_NONE,
    enum: true

  field :spawn_count, 2, optional: true, type: :uint32
  field :num_server_players, 3, optional: true, type: :uint32
  field :players_networkids, 4, repeated: true, type: :string
  field :map_name, 5, optional: true, type: :string
  field :addons, 6, optional: true, type: :string
end

defmodule CSVCMsg_GameEvent.KeyT do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :type, 1, optional: true, type: :int32
  field :val_string, 2, optional: true, type: :string
  field :val_float, 3, optional: true, type: :float
  field :val_long, 4, optional: true, type: :int32
  field :val_short, 5, optional: true, type: :int32
  field :val_byte, 6, optional: true, type: :int32
  field :val_bool, 7, optional: true, type: :bool
  field :val_uint64, 8, optional: true, type: :uint64
end

defmodule CSVCMsg_GameEvent do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :event_name, 1, optional: true, type: :string
  field :eventid, 2, optional: true, type: :int32
  field :keys, 3, repeated: true, type: CSVCMsg_GameEvent.KeyT
end

defmodule CSVCMsgList_GameEvents.EventT do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :tick, 1, optional: true, type: :int32
  field :event, 2, optional: true, type: CSVCMsg_GameEvent
end

defmodule CSVCMsgList_GameEvents do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :events, 1, repeated: true, type: CSVCMsgList_GameEvents.EventT
end

defmodule CNETMsg_SpawnGroup_Load do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :worldname, 1, optional: true, type: :string
  field :entitylumpname, 2, optional: true, type: :string
  field :entityfiltername, 3, optional: true, type: :string
  field :spawngrouphandle, 4, optional: true, type: :uint32
  field :spawngroupownerhandle, 5, optional: true, type: :uint32
  field :world_offset_pos, 6, optional: true, type: CMsgVector
  field :world_offset_angle, 7, optional: true, type: CMsgQAngle
  field :spawngroupmanifest, 8, optional: true, type: :bytes
  field :flags, 9, optional: true, type: :uint32
  field :tickcount, 10, optional: true, type: :int32
  field :manifestincomplete, 11, optional: true, type: :bool
  field :localnamefixup, 12, optional: true, type: :string
  field :parentnamefixup, 13, optional: true, type: :string
  field :manifestloadpriority, 14, optional: true, type: :int32
  field :worldgroupid, 15, optional: true, type: :uint32
  field :creationsequence, 16, optional: true, type: :uint32
  field :savegamefilename, 17, optional: true, type: :string
  field :spawngroupparenthandle, 18, optional: true, type: :uint32
  field :leveltransition, 19, optional: true, type: :bool
  field :worldgroupname, 20, optional: true, type: :string
end

defmodule CNETMsg_SpawnGroup_ManifestUpdate do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :spawngrouphandle, 1, optional: true, type: :uint32
  field :spawngroupmanifest, 2, optional: true, type: :bytes
  field :manifestincomplete, 3, optional: true, type: :bool
end

defmodule CNETMsg_SpawnGroup_SetCreationTick do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :spawngrouphandle, 1, optional: true, type: :uint32
  field :tickcount, 2, optional: true, type: :int32
  field :creationsequence, 3, optional: true, type: :uint32
end

defmodule CNETMsg_SpawnGroup_Unload do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :spawngrouphandle, 1, optional: true, type: :uint32
  field :flags, 2, optional: true, type: :uint32
  field :tickcount, 3, optional: true, type: :int32
end

defmodule CNETMsg_SpawnGroup_LoadCompleted do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :spawngrouphandle, 1, optional: true, type: :uint32
end

defmodule CSVCMsg_GameSessionConfiguration do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :is_multiplayer, 1, optional: true, type: :bool
  field :is_loadsavegame, 2, optional: true, type: :bool
  field :is_background_map, 3, optional: true, type: :bool
  field :is_headless, 4, optional: true, type: :bool
  field :min_client_limit, 5, optional: true, type: :uint32
  field :max_client_limit, 6, optional: true, type: :uint32
  field :max_clients, 7, optional: true, type: :uint32
  field :tick_interval, 8, optional: true, type: :fixed32
  field :hostname, 9, optional: true, type: :string
  field :savegamename, 10, optional: true, type: :string
  field :s1_mapname, 11, optional: true, type: :string
  field :gamemode, 12, optional: true, type: :string
  field :server_ip_address, 13, optional: true, type: :string
  field :data, 14, optional: true, type: :bytes
  field :is_localonly, 15, optional: true, type: :bool
  field :no_steam_server, 19, optional: true, type: :bool
  field :is_transition, 16, optional: true, type: :bool
  field :previouslevel, 17, optional: true, type: :string
  field :landmarkname, 18, optional: true, type: :string
end

defmodule CNETMsg_DebugOverlay do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :etype, 1, optional: true, type: :int32
  field :vectors, 2, repeated: true, type: CMsgVector
  field :colors, 3, repeated: true, type: CMsgRGBA
  field :dimensions, 4, repeated: true, type: :float
  field :times, 5, repeated: true, type: :float
  field :bools, 6, repeated: true, type: :bool
  field :uint64s, 7, repeated: true, type: :uint64
  field :strings, 8, repeated: true, type: :string
end