defmodule CLC_Messages do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :clc_ClientInfo, 20
  field :clc_Move, 21
  field :clc_VoiceData, 22
  field :clc_BaselineAck, 23
  field :clc_ListenEvents, 24
  field :clc_RespondCvarValue, 25
  field :clc_FileCRCCheck, 26
  field :clc_LoadingProgress, 27
  field :clc_SplitPlayerConnect, 28
  field :clc_ClientMessage, 29
  field :clc_SplitPlayerDisconnect, 30
  field :clc_ServerStatus, 31
  field :clc_ServerPing, 32
  field :clc_RequestPause, 33
  field :clc_CmdKeyValues, 34
  field :clc_RconServerDetails, 35
  field :clc_HltvReplay, 36
end

defmodule SVC_Messages do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :svc_ServerInfo, 40
  field :svc_FlattenedSerializer, 41
  field :svc_ClassInfo, 42
  field :svc_SetPause, 43
  field :svc_CreateStringTable, 44
  field :svc_UpdateStringTable, 45
  field :svc_VoiceInit, 46
  field :svc_VoiceData, 47
  field :svc_Print, 48
  field :svc_Sounds, 49
  field :svc_SetView, 50
  field :svc_ClearAllStringTables, 51
  field :svc_CmdKeyValues, 52
  field :svc_BSPDecal, 53
  field :svc_SplitScreen, 54
  field :svc_PacketEntities, 55
  field :svc_Prefetch, 56
  field :svc_Menu, 57
  field :svc_GetCvarValue, 58
  field :svc_StopSound, 59
  field :svc_PeerList, 60
  field :svc_PacketReliable, 61
  field :svc_HLTVStatus, 62
  field :svc_ServerSteamID, 63
  field :svc_FullFrameSplit, 70
  field :svc_RconServerDetails, 71
  field :svc_UserMessage, 72
  field :svc_HltvReplay, 73
  field :svc_Broadcast_Command, 74
  field :svc_HltvFixupOperatorStatus, 75
end

defmodule VoiceDataFormatT do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :VOICEDATA_FORMAT_STEAM, 0
  field :VOICEDATA_FORMAT_ENGINE, 1
end

defmodule RequestPauseT do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :RP_PAUSE, 0
  field :RP_UNPAUSE, 1
  field :RP_TOGGLEPAUSE, 2
end

defmodule PrefetchType do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :PFT_SOUND, 0
end

defmodule ESplitScreenMessageType do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :MSG_SPLITSCREEN_ADDUSER, 0
  field :MSG_SPLITSCREEN_REMOVEUSER, 1
end

defmodule EQueryCvarValueStatus do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :eQueryCvarValueStatus_ValueIntact, 0
  field :eQueryCvarValueStatus_CvarNotFound, 1
  field :eQueryCvarValueStatus_NotACvar, 2
  field :eQueryCvarValueStatus_CvarProtected, 3
end

defmodule DIALOG_TYPE do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :DIALOG_MSG, 0
  field :DIALOG_MENU, 1
  field :DIALOG_TEXT, 2
  field :DIALOG_ENTRY, 3
  field :DIALOG_ASKCONNECT, 4
end

defmodule SVC_Messages_LowFrequency do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :svc_dummy, 600
end

defmodule Bidirectional_Messages do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :bi_RebroadcastGameEvent, 16
  field :bi_RebroadcastSource, 17
  field :bi_GameEvent, 18
end

defmodule Bidirectional_Messages_LowFrequency do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :bi_RelayInfo, 700
  field :bi_RelayPacket, 701
end

defmodule ReplayEventTypeT do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :REPLAY_EVENT_CANCEL, 0
  field :REPLAY_EVENT_DEATH, 1
  field :REPLAY_EVENT_GENERIC, 2
  field :REPLAY_EVENT_STUCK_NEED_FULL_UPDATE, 3
  field :REPLAY_EVENT_VICTORY, 4
end

defmodule CCLCMsg_ClientInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :send_table_crc, 1, optional: true, type: :fixed32
  field :server_count, 2, optional: true, type: :uint32
  field :is_hltv, 3, optional: true, type: :bool
  field :friends_id, 5, optional: true, type: :uint32
  field :friends_name, 6, optional: true, type: :string
end

defmodule CCLCMsg_Move do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :data, 3, optional: true, type: :bytes
  field :command_number, 4, optional: true, type: :uint32
  field :num_commands, 5, optional: true, type: :uint32
end

defmodule CMsgVoiceAudio do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :format, 1,
    optional: true,
    type: VoiceDataFormatT,
    default: :VOICEDATA_FORMAT_STEAM,
    enum: true

  field :voice_data, 2, optional: true, type: :bytes
  field :sequence_bytes, 3, optional: true, type: :int32
  field :section_number, 4, optional: true, type: :uint32
  field :sample_rate, 5, optional: true, type: :uint32
  field :uncompressed_sample_offset, 6, optional: true, type: :uint32
end

defmodule CCLCMsg_VoiceData do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :audio, 1, optional: true, type: CMsgVoiceAudio
  field :xuid, 2, optional: true, type: :fixed64
  field :tick, 3, optional: true, type: :uint32
end

defmodule CCLCMsg_BaselineAck do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :baseline_tick, 1, optional: true, type: :int32
  field :baseline_nr, 2, optional: true, type: :int32
end

defmodule CCLCMsg_ListenEvents do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :event_mask, 1, repeated: true, type: :fixed32
end

defmodule CCLCMsg_RespondCvarValue do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :cookie, 1, optional: true, type: :int32
  field :status_code, 2, optional: true, type: :int32
  field :name, 3, optional: true, type: :string
  field :value, 4, optional: true, type: :string
end

defmodule CCLCMsg_FileCRCCheck do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :code_path, 1, optional: true, type: :int32
  field :path, 2, optional: true, type: :string
  field :code_filename, 3, optional: true, type: :int32
  field :filename, 4, optional: true, type: :string
  field :crc, 5, optional: true, type: :fixed32
end

defmodule CCLCMsg_LoadingProgress do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :progress, 1, optional: true, type: :int32
end

defmodule CCLCMsg_SplitPlayerConnect do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :playername, 1, optional: true, type: :string
end

defmodule CCLCMsg_ClientMessage do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :msg_type, 1, optional: true, type: :int32
  field :data, 2, optional: true, type: :bytes
end

defmodule CCLCMsg_SplitPlayerDisconnect do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :slot, 1, optional: true, type: :int32
end

defmodule CCLCMsg_ServerStatus do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :simplified, 1, optional: true, type: :bool
end

defmodule CCLCMsg_ServerPing do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CCLCMsg_RequestPause do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :pause_type, 1, optional: true, type: RequestPauseT, default: :RP_PAUSE, enum: true
  field :pause_group, 2, optional: true, type: :int32
end

defmodule CCLCMsg_CmdKeyValues do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :data, 1, optional: true, type: :bytes
end

defmodule CCLCMsg_RconServerDetails do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :token, 1, optional: true, type: :bytes
end

defmodule CSVCMsg_ServerInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :protocol, 1, optional: true, type: :int32
  field :server_count, 2, optional: true, type: :int32
  field :is_dedicated, 3, optional: true, type: :bool
  field :is_hltv, 4, optional: true, type: :bool
  field :c_os, 6, optional: true, type: :int32
  field :max_clients, 10, optional: true, type: :int32
  field :max_classes, 11, optional: true, type: :int32
  field :player_slot, 12, optional: true, type: :int32, default: -1
  field :tick_interval, 13, optional: true, type: :float
  field :game_dir, 14, optional: true, type: :string
  field :map_name, 15, optional: true, type: :string
  field :sky_name, 16, optional: true, type: :string
  field :host_name, 17, optional: true, type: :string
  field :addon_name, 18, optional: true, type: :string
  field :game_session_config, 19, optional: true, type: CSVCMsg_GameSessionConfiguration
  field :game_session_manifest, 20, optional: true, type: :bytes
end

defmodule CSVCMsg_ClassInfo.ClassT do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :class_id, 1, optional: true, type: :int32
  field :class_name, 3, optional: true, type: :string
end

defmodule CSVCMsg_ClassInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :create_on_client, 1, optional: true, type: :bool
  field :classes, 2, repeated: true, type: CSVCMsg_ClassInfo.ClassT
end

defmodule CSVCMsg_SetPause do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :paused, 1, optional: true, type: :bool
end

defmodule CSVCMsg_VoiceInit do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :quality, 1, optional: true, type: :int32
  field :codec, 2, optional: true, type: :string
  field :version, 3, optional: true, type: :int32, default: 0
end

defmodule CSVCMsg_Print do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :text, 1, optional: true, type: :string
end

defmodule CSVCMsg_Sounds.SounddataT do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :origin_x, 1, optional: true, type: :sint32
  field :origin_y, 2, optional: true, type: :sint32
  field :origin_z, 3, optional: true, type: :sint32
  field :volume, 4, optional: true, type: :uint32
  field :delay_value, 5, optional: true, type: :float
  field :sequence_number, 6, optional: true, type: :int32
  field :entity_index, 7, optional: true, type: :int32, default: -1
  field :channel, 8, optional: true, type: :int32
  field :pitch, 9, optional: true, type: :int32
  field :flags, 10, optional: true, type: :int32
  field :sound_num, 11, optional: true, type: :uint32
  field :sound_num_handle, 12, optional: true, type: :fixed32
  field :speaker_entity, 13, optional: true, type: :int32
  field :random_seed, 14, optional: true, type: :int32
  field :sound_level, 15, optional: true, type: :int32
  field :is_sentence, 16, optional: true, type: :bool
  field :is_ambient, 17, optional: true, type: :bool
  field :guid, 18, optional: true, type: :uint32
  field :sound_resource_id, 19, optional: true, type: :fixed64
end

defmodule CSVCMsg_Sounds do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :reliable_sound, 1, optional: true, type: :bool
  field :sounds, 2, repeated: true, type: CSVCMsg_Sounds.SounddataT
end

defmodule CSVCMsg_Prefetch do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :sound_index, 1, optional: true, type: :int32
  field :resource_type, 2, optional: true, type: PrefetchType, default: :PFT_SOUND, enum: true
end

defmodule CSVCMsg_SetView do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :entity_index, 1, optional: true, type: :int32, default: -1
  field :slot, 2, optional: true, type: :int32, default: -1
end

defmodule CSVCMsg_FixAngle do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :relative, 1, optional: true, type: :bool
  field :angle, 2, optional: true, type: CMsgQAngle
end

defmodule CSVCMsg_CrosshairAngle do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :angle, 1, optional: true, type: CMsgQAngle
end

defmodule CSVCMsg_BSPDecal do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :pos, 1, optional: true, type: CMsgVector
  field :decal_texture_index, 2, optional: true, type: :int32
  field :entity_index, 3, optional: true, type: :int32, default: -1
  field :model_index, 4, optional: true, type: :int32
  field :low_priority, 5, optional: true, type: :bool
end

defmodule CSVCMsg_SplitScreen do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :type, 1,
    optional: true,
    type: ESplitScreenMessageType,
    default: :MSG_SPLITSCREEN_ADDUSER,
    enum: true

  field :slot, 2, optional: true, type: :int32
  field :player_index, 3, optional: true, type: :int32, default: -1
end

defmodule CSVCMsg_GetCvarValue do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :cookie, 1, optional: true, type: :int32
  field :cvar_name, 2, optional: true, type: :string
end

defmodule CSVCMsg_Menu do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :dialog_type, 1, optional: true, type: :int32
  field :menu_key_values, 2, optional: true, type: :bytes
end

defmodule CSVCMsg_UserMessage do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :msg_type, 1, optional: true, type: :int32
  field :msg_data, 2, optional: true, type: :bytes
  field :passthrough, 3, optional: true, type: :int32
end

defmodule CSVCMsg_SendTable.SendpropT do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :type, 1, optional: true, type: :int32
  field :var_name, 2, optional: true, type: :string
  field :flags, 3, optional: true, type: :int32
  field :priority, 4, optional: true, type: :int32
  field :dt_name, 5, optional: true, type: :string
  field :num_elements, 6, optional: true, type: :int32
  field :low_value, 7, optional: true, type: :float
  field :high_value, 8, optional: true, type: :float
  field :num_bits, 9, optional: true, type: :int32
end

defmodule CSVCMsg_SendTable do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :is_end, 1, optional: true, type: :bool
  field :net_table_name, 2, optional: true, type: :string
  field :needs_decoder, 3, optional: true, type: :bool
  field :props, 4, repeated: true, type: CSVCMsg_SendTable.SendpropT
end

defmodule CSVCMsg_GameEventList.KeyT do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :type, 1, optional: true, type: :int32
  field :name, 2, optional: true, type: :string
end

defmodule CSVCMsg_GameEventList.DescriptorT do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :eventid, 1, optional: true, type: :int32
  field :name, 2, optional: true, type: :string
  field :keys, 3, repeated: true, type: CSVCMsg_GameEventList.KeyT
end

defmodule CSVCMsg_GameEventList do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :descriptors, 1, repeated: true, type: CSVCMsg_GameEventList.DescriptorT
end

defmodule CSVCMsg_PacketEntities.CommandQueueInfoT do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :commands_queued, 1, optional: true, type: :uint32
  field :command_queue_desired_size, 2, optional: true, type: :uint32
  field :starved_command_ticks, 3, optional: true, type: :uint32
  field :time_dilation_percent, 4, optional: true, type: :float
  field :discarded_command_ticks, 5, optional: true, type: :uint32
end

defmodule CSVCMsg_PacketEntities.AlternateBaselineT do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :entity_index, 1, optional: true, type: :int32
  field :baseline_index, 2, optional: true, type: :int32
end

defmodule CSVCMsg_PacketEntities do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :max_entries, 1, optional: true, type: :int32
  field :updated_entries, 2, optional: true, type: :int32
  field :is_delta, 3, optional: true, type: :bool
  field :update_baseline, 4, optional: true, type: :bool
  field :baseline, 5, optional: true, type: :int32
  field :delta_from, 6, optional: true, type: :int32
  field :entity_data, 7, optional: true, type: :bytes
  field :pending_full_frame, 8, optional: true, type: :bool
  field :active_spawngroup_handle, 9, optional: true, type: :uint32
  field :max_spawngroup_creationsequence, 10, optional: true, type: :uint32
  field :last_cmd_number, 11, optional: true, type: :uint32
  field :server_tick, 12, optional: true, type: :uint32
  field :serialized_entities, 13, optional: true, type: :bytes
  field :command_queue_info, 14, optional: true, type: CSVCMsg_PacketEntities.CommandQueueInfoT
  field :alternate_baselines, 15, repeated: true, type: CSVCMsg_PacketEntities.AlternateBaselineT
end

defmodule CSVCMsg_TempEntities do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :reliable, 1, optional: true, type: :bool
  field :num_entries, 2, optional: true, type: :int32
  field :entity_data, 3, optional: true, type: :bytes
end

defmodule CSVCMsg_CreateStringTable do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :name, 1, optional: true, type: :string
  field :num_entries, 2, optional: true, type: :int32
  field :user_data_fixed_size, 3, optional: true, type: :bool
  field :user_data_size, 4, optional: true, type: :int32
  field :user_data_size_bits, 5, optional: true, type: :int32
  field :flags, 6, optional: true, type: :int32
  field :string_data, 7, optional: true, type: :bytes
  field :uncompressed_size, 8, optional: true, type: :int32
  field :data_compressed, 9, optional: true, type: :bool
  field :using_varint_bitcounts, 10, optional: true, type: :bool
end

defmodule CSVCMsg_UpdateStringTable do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :table_id, 1, optional: true, type: :int32
  field :num_changed_entries, 2, optional: true, type: :int32
  field :string_data, 3, optional: true, type: :bytes
end

defmodule CSVCMsg_VoiceData do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :audio, 1, optional: true, type: CMsgVoiceAudio
  field :client, 2, optional: true, type: :int32, default: -1
  field :proximity, 3, optional: true, type: :bool
  field :xuid, 4, optional: true, type: :fixed64
  field :audible_mask, 5, optional: true, type: :int32
  field :tick, 6, optional: true, type: :uint32
  field :passthrough, 7, optional: true, type: :int32
end

defmodule CSVCMsg_PacketReliable do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :tick, 1, optional: true, type: :int32
  field :messagessize, 2, optional: true, type: :int32
  field :state, 3, optional: true, type: :bool
end

defmodule CSVCMsg_FullFrameSplit do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :tick, 1, optional: true, type: :int32
  field :section, 2, optional: true, type: :int32
  field :total, 3, optional: true, type: :int32
  field :data, 4, optional: true, type: :bytes
end

defmodule CSVCMsg_HLTVStatus do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :master, 1, optional: true, type: :string
  field :clients, 2, optional: true, type: :int32
  field :slots, 3, optional: true, type: :int32
  field :proxies, 4, optional: true, type: :int32
end

defmodule CSVCMsg_ServerSteamID do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steam_id, 1, optional: true, type: :uint64
end

defmodule CSVCMsg_CmdKeyValues do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :data, 1, optional: true, type: :bytes
end

defmodule CSVCMsg_RconServerDetails do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :token, 1, optional: true, type: :bytes
  field :details, 2, optional: true, type: :string
end

defmodule CMsgIPCAddress do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :computer_guid, 1, optional: true, type: :fixed64
  field :process_id, 2, optional: true, type: :uint32
end

defmodule CMsgServerPeer do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :player_slot, 1, optional: true, type: :int32, default: -1
  field :steamid, 2, optional: true, type: :fixed64
  field :ipc, 3, optional: true, type: CMsgIPCAddress
  field :they_hear_you, 4, optional: true, type: :bool
  field :you_hear_them, 5, optional: true, type: :bool
  field :is_listenserver_host, 6, optional: true, type: :bool
end

defmodule CSVCMsg_PeerList do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :peer, 1, repeated: true, type: CMsgServerPeer
end

defmodule CSVCMsg_ClearAllStringTables do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :mapname, 1, optional: true, type: :string
  field :create_tables_skipped, 3, optional: true, type: :bool
end

defmodule ProtoFlattenedSerializerFieldT.PolymorphicFieldT do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :polymorphic_field_serializer_name_sym, 1, optional: true, type: :int32
  field :polymorphic_field_serializer_version, 2, optional: true, type: :int32
end

defmodule ProtoFlattenedSerializerFieldT do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :var_type_sym, 1, optional: true, type: :int32
  field :var_name_sym, 2, optional: true, type: :int32
  field :bit_count, 3, optional: true, type: :int32
  field :low_value, 4, optional: true, type: :float
  field :high_value, 5, optional: true, type: :float
  field :encode_flags, 6, optional: true, type: :int32
  field :field_serializer_name_sym, 7, optional: true, type: :int32
  field :field_serializer_version, 8, optional: true, type: :int32
  field :send_node_sym, 9, optional: true, type: :int32
  field :var_encoder_sym, 10, optional: true, type: :int32

  field :polymorphic_types, 11,
    repeated: true,
    type: ProtoFlattenedSerializerFieldT.PolymorphicFieldT
end

defmodule ProtoFlattenedSerializerT do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :serializer_name_sym, 1, optional: true, type: :int32
  field :serializer_version, 2, optional: true, type: :int32
  field :fields_index, 3, repeated: true, type: :int32
end

defmodule CSVCMsg_FlattenedSerializer do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :serializers, 1, repeated: true, type: ProtoFlattenedSerializerT
  field :symbols, 2, repeated: true, type: :string
  field :fields, 3, repeated: true, type: ProtoFlattenedSerializerFieldT
end

defmodule CSVCMsg_StopSound do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :guid, 1, optional: true, type: :fixed32
end

defmodule CBidirMsg_RebroadcastGameEvent do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :posttoserver, 1, optional: true, type: :bool
  field :buftype, 2, optional: true, type: :int32
  field :clientbitcount, 3, optional: true, type: :uint32
  field :receivingclients, 4, optional: true, type: :uint64
end

defmodule CBidirMsg_RebroadcastSource do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :eventsource, 1, optional: true, type: :int32
end

defmodule CMsgServerNetworkStats.Port do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :port, 1, optional: true, type: :int32
  field :name, 2, optional: true, type: :string
end

defmodule CMsgServerNetworkStats.Player do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steamid, 1, optional: true, type: :uint64
  field :remote_addr, 2, optional: true, type: :string
  field :ping_stddev_ms, 3, optional: true, type: :int32
  field :ping_avg_ms, 4, optional: true, type: :int32
  field :packet_loss_pct, 5, optional: true, type: :float
  field :is_bot, 6, optional: true, type: :bool
end

defmodule CMsgServerNetworkStats do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :dedicated, 1, optional: true, type: :bool
  field :cpu_usage, 2, optional: true, type: :int32
  field :memory_used_mb, 3, optional: true, type: :int32
  field :memory_free_mb, 4, optional: true, type: :int32
  field :uptime, 5, optional: true, type: :int32
  field :spawn_count, 6, optional: true, type: :int32
  field :num_clients, 8, optional: true, type: :int32
  field :num_bots, 9, optional: true, type: :int32
  field :num_spectators, 10, optional: true, type: :int32
  field :num_tv_relays, 11, optional: true, type: :int32
  field :fps, 12, optional: true, type: :float
  field :ports, 17, repeated: true, type: CMsgServerNetworkStats.Port
  field :avg_latency_out, 18, optional: true, type: :float
  field :avg_latency_in, 19, optional: true, type: :float
  field :avg_packets_out, 20, optional: true, type: :float
  field :avg_packets_in, 21, optional: true, type: :float
  field :avg_loss_out, 22, optional: true, type: :float
  field :avg_loss_in, 23, optional: true, type: :float
  field :avg_data_out, 24, optional: true, type: :float
  field :avg_data_in, 25, optional: true, type: :float
  field :total_data_in, 26, optional: true, type: :uint64
  field :total_packets_in, 27, optional: true, type: :uint64
  field :total_data_out, 28, optional: true, type: :uint64
  field :total_packets_out, 29, optional: true, type: :uint64
  field :players, 30, repeated: true, type: CMsgServerNetworkStats.Player
end

defmodule CSVCMsg_HltvReplay do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :delay, 1, optional: true, type: :int32
  field :primary_target, 2, optional: true, type: :int32, default: -1
  field :replay_stop_at, 3, optional: true, type: :int32
  field :replay_start_at, 4, optional: true, type: :int32
  field :replay_slowdown_begin, 5, optional: true, type: :int32
  field :replay_slowdown_end, 6, optional: true, type: :int32
  field :replay_slowdown_rate, 7, optional: true, type: :float
  field :reason, 8, optional: true, type: :int32
end

defmodule CCLCMsg_HltvReplay do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :request, 1, optional: true, type: :int32
  field :slowdown_length, 2, optional: true, type: :float
  field :slowdown_rate, 3, optional: true, type: :float
  field :primary_target, 4, optional: true, type: :int32, default: -1
  field :event_time, 5, optional: true, type: :float
end

defmodule CSVCMsg_Broadcast_Command do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :cmd, 1, optional: true, type: :string
end

defmodule CCLCMsg_HltvFixupOperatorTick do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :tick, 1, optional: true, type: :int32
  field :props_data, 2, optional: true, type: :bytes
  field :origin, 3, optional: true, type: CMsgVector
  field :eye_angles, 4, optional: true, type: CMsgQAngle
  field :observer_mode, 5, optional: true, type: :int32
  field :cameraman_scoreboard, 6, optional: true, type: :bool
  field :observer_target, 7, optional: true, type: :int32
  field :view_offset, 8, optional: true, type: CMsgVector
end

defmodule CSVCMsg_HltvFixupOperatorStatus do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :mode, 1, optional: true, type: :uint32
  field :override_operator_name, 2, optional: true, type: :string
end