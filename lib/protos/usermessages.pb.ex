defmodule EBaseUserMessages do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :UM_AchievementEvent, 101
  field :UM_CloseCaption, 102
  field :UM_CloseCaptionDirect, 103
  field :UM_CurrentTimescale, 104
  field :UM_DesiredTimescale, 105
  field :UM_Fade, 106
  field :UM_GameTitle, 107
  field :UM_HudMsg, 110
  field :UM_HudText, 111
  field :UM_ColoredText, 113
  field :UM_RequestState, 114
  field :UM_ResetHUD, 115
  field :UM_Rumble, 116
  field :UM_SayText, 117
  field :UM_SayText2, 118
  field :UM_SayTextChannel, 119
  field :UM_Shake, 120
  field :UM_ShakeDir, 121
  field :UM_TextMsg, 124
  field :UM_ScreenTilt, 125
  field :UM_VoiceMask, 128
  field :UM_SendAudio, 130
  field :UM_ItemPickup, 131
  field :UM_AmmoDenied, 132
  field :UM_ShowMenu, 134
  field :UM_CreditsMsg, 135
  field :UM_CloseCaptionPlaceholder, 142
  field :UM_CameraTransition, 143
  field :UM_AudioParameter, 144
  field :UM_ParticleManager, 145
  field :UM_HudError, 146
  field :UM_CustomGameEvent, 148
  field :UM_AnimGraphUpdate, 149
  field :UM_HapticsManagerPulse, 150
  field :UM_HapticsManagerEffect, 151
  field :UM_CommandQueueState, 152
  field :UM_UpdateCssClasses, 153
  field :UM_ServerFrameTime, 154
  field :UM_LagCompensationError, 155
  field :UM_RequestDllStatus, 156
  field :UM_RequestUtilAction, 157
  field :UM_UtilActionResponse, 158
  field :UM_DllStatusResponse, 159
  field :UM_RequestInventory, 160
  field :UM_InventoryResponse, 161
  field :UM_RequestDiagnostic, 162
  field :UM_DiagnosticResponse, 163
  field :UM_ExtraUserData, 164
  field :UM_MAX_BASE, 200
end

defmodule EBaseEntityMessages do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :EM_PlayJingle, 136
  field :EM_ScreenOverlay, 137
  field :EM_RemoveAllDecals, 138
  field :EM_PropagateForce, 139
  field :EM_DoSpark, 140
  field :EM_FixAngle, 141
end

defmodule ERollType do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :ROLL_NONE, -1
  field :ROLL_STATS, 0
  field :ROLL_CREDITS, 1
  field :ROLL_LATE_JOIN_LOGO, 2
  field :ROLL_OUTTRO, 3
end

defmodule PARTICLE_MESSAGE do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :GAME_PARTICLE_MANAGER_EVENT_CREATE, 0
  field :GAME_PARTICLE_MANAGER_EVENT_UPDATE, 1
  field :GAME_PARTICLE_MANAGER_EVENT_UPDATE_FORWARD, 2
  field :GAME_PARTICLE_MANAGER_EVENT_UPDATE_ORIENTATION, 3
  field :GAME_PARTICLE_MANAGER_EVENT_UPDATE_FALLBACK, 4
  field :GAME_PARTICLE_MANAGER_EVENT_UPDATE_ENT, 5
  field :GAME_PARTICLE_MANAGER_EVENT_UPDATE_OFFSET, 6
  field :GAME_PARTICLE_MANAGER_EVENT_DESTROY, 7
  field :GAME_PARTICLE_MANAGER_EVENT_DESTROY_INVOLVING, 8
  field :GAME_PARTICLE_MANAGER_EVENT_RELEASE, 9
  field :GAME_PARTICLE_MANAGER_EVENT_LATENCY, 10
  field :GAME_PARTICLE_MANAGER_EVENT_SHOULD_DRAW, 11
  field :GAME_PARTICLE_MANAGER_EVENT_FROZEN, 12
  field :GAME_PARTICLE_MANAGER_EVENT_CHANGE_CONTROL_POINT_ATTACHMENT, 13
  field :GAME_PARTICLE_MANAGER_EVENT_UPDATE_ENTITY_POSITION, 14
  field :GAME_PARTICLE_MANAGER_EVENT_SET_FOW_PROPERTIES, 15
  field :GAME_PARTICLE_MANAGER_EVENT_SET_TEXT, 16
  field :GAME_PARTICLE_MANAGER_EVENT_SET_SHOULD_CHECK_FOW, 17
  field :GAME_PARTICLE_MANAGER_EVENT_SET_CONTROL_POINT_MODEL, 18
  field :GAME_PARTICLE_MANAGER_EVENT_SET_CONTROL_POINT_SNAPSHOT, 19
  field :GAME_PARTICLE_MANAGER_EVENT_SET_TEXTURE_ATTRIBUTE, 20
  field :GAME_PARTICLE_MANAGER_EVENT_SET_SCENE_OBJECT_GENERIC_FLAG, 21
  field :GAME_PARTICLE_MANAGER_EVENT_SET_SCENE_OBJECT_TINT_AND_DESAT, 22
  field :GAME_PARTICLE_MANAGER_EVENT_DESTROY_NAMED, 23
  field :GAME_PARTICLE_MANAGER_EVENT_SKIP_TO_TIME, 24
  field :GAME_PARTICLE_MANAGER_EVENT_CAN_FREEZE, 25
  field :GAME_PARTICLE_MANAGER_EVENT_SET_NAMED_VALUE_CONTEXT, 26
  field :GAME_PARTICLE_MANAGER_EVENT_UPDATE_TRANSFORM, 27
  field :GAME_PARTICLE_MANAGER_EVENT_FREEZE_TRANSITION_OVERRIDE, 28
  field :GAME_PARTICLE_MANAGER_EVENT_FREEZE_INVOLVING, 29
end

defmodule EHapticPulseType do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :VR_HAND_HAPTIC_PULSE_LIGHT, 0
  field :VR_HAND_HAPTIC_PULSE_MEDIUM, 1
  field :VR_HAND_HAPTIC_PULSE_STRONG, 2
end

defmodule CUserMessageAchievementEvent do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :achievement, 1, optional: true, type: :uint32
end

defmodule CUserMessageCloseCaption do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :hash, 1, optional: true, type: :fixed32
  field :duration, 2, optional: true, type: :float
  field :from_player, 3, optional: true, type: :bool
  field :ent_index, 4, optional: true, type: :int32, default: -1
end

defmodule CUserMessageCloseCaptionDirect do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :hash, 1, optional: true, type: :fixed32
  field :duration, 2, optional: true, type: :float
  field :from_player, 3, optional: true, type: :bool
  field :ent_index, 4, optional: true, type: :int32, default: -1
end

defmodule CUserMessageCloseCaptionPlaceholder do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :string, 1, optional: true, type: :string
  field :duration, 2, optional: true, type: :float
  field :from_player, 3, optional: true, type: :bool
  field :ent_index, 4, optional: true, type: :int32, default: -1
end

defmodule CUserMessageCurrentTimescale do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :current, 1, optional: true, type: :float
end

defmodule CUserMessageDesiredTimescale do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :desired, 1, optional: true, type: :float
  field :acceleration, 2, optional: true, type: :float
  field :minblendrate, 3, optional: true, type: :float
  field :blenddeltamultiplier, 4, optional: true, type: :float
end

defmodule CUserMessageFade do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :duration, 1, optional: true, type: :uint32
  field :hold_time, 2, optional: true, type: :uint32
  field :flags, 3, optional: true, type: :uint32
  field :color, 4, optional: true, type: :fixed32
end

defmodule CUserMessageShake do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :command, 1, optional: true, type: :uint32
  field :amplitude, 2, optional: true, type: :float
  field :frequency, 3, optional: true, type: :float
  field :duration, 4, optional: true, type: :float
end

defmodule CUserMessageShakeDir do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :shake, 1, optional: true, type: CUserMessageShake
  field :direction, 2, optional: true, type: CMsgVector
end

defmodule CUserMessageScreenTilt do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :command, 1, optional: true, type: :uint32
  field :ease_in_out, 2, optional: true, type: :bool
  field :angle, 3, optional: true, type: CMsgVector
  field :duration, 4, optional: true, type: :float
  field :time, 5, optional: true, type: :float
end

defmodule CUserMessageSayText do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :playerindex, 1, optional: true, type: :int32, default: -1
  field :text, 2, optional: true, type: :string
  field :chat, 3, optional: true, type: :bool
end

defmodule CUserMessageSayText2 do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :entityindex, 1, optional: true, type: :int32, default: -1
  field :chat, 2, optional: true, type: :bool
  field :messagename, 3, optional: true, type: :string
  field :param1, 4, optional: true, type: :string
  field :param2, 5, optional: true, type: :string
  field :param3, 6, optional: true, type: :string
  field :param4, 7, optional: true, type: :string
end

defmodule CUserMessageHudMsg do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :channel, 1, optional: true, type: :uint32
  field :x, 2, optional: true, type: :float
  field :y, 3, optional: true, type: :float
  field :color1, 4, optional: true, type: :fixed32
  field :color2, 5, optional: true, type: :fixed32
  field :effect, 6, optional: true, type: :uint32
  field :message, 11, optional: true, type: :string
end

defmodule CUserMessageHudText do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :message, 1, optional: true, type: :string
end

defmodule CUserMessageTextMsg do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :dest, 1, optional: true, type: :uint32
  field :param, 2, repeated: true, type: :string
end

defmodule CUserMessageGameTitle do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CUserMessageResetHUD do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CUserMessageSendAudio do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :soundname, 1, optional: true, type: :string
  field :stop, 2, optional: true, type: :bool
end

defmodule CUserMessageAudioParameter do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :parameter_type, 1, optional: true, type: :uint32
  field :name_hash_code, 2, optional: true, type: :uint32
  field :value, 3, optional: true, type: :float
  field :int_value, 4, optional: true, type: :uint32
end

defmodule CUserMessageVoiceMask do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :gamerules_masks, 1, repeated: true, type: :uint32
  field :ban_masks, 2, repeated: true, type: :uint32
  field :mod_enable, 3, optional: true, type: :bool
end

defmodule CUserMessageRequestState do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CUserMessageRumble do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :index, 1, optional: true, type: :int32
  field :data, 2, optional: true, type: :int32
  field :flags, 3, optional: true, type: :int32
end

defmodule CUserMessageSayTextChannel do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :player, 1, optional: true, type: :int32
  field :channel, 2, optional: true, type: :int32
  field :text, 3, optional: true, type: :string
end

defmodule CUserMessageColoredText do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :color, 1, optional: true, type: :uint32
  field :text, 2, optional: true, type: :string
  field :reset, 3, optional: true, type: :bool
  field :context_player_slot, 4, optional: true, type: :int32, default: -1
  field :context_value, 5, optional: true, type: :int32
  field :context_team_id, 6, optional: true, type: :int32
end

defmodule CUserMessageItemPickup do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :itemname, 1, optional: true, type: :string
end

defmodule CUserMessageAmmoDenied do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :ammo_id, 1, optional: true, type: :uint32
end

defmodule CUserMessageShowMenu do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :validslots, 1, optional: true, type: :uint32
  field :displaytime, 2, optional: true, type: :uint32
  field :needmore, 3, optional: true, type: :bool
  field :menustring, 4, optional: true, type: :string
end

defmodule CUserMessageCreditsMsg do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :rolltype, 1, optional: true, type: ERollType, default: :ROLL_NONE, enum: true
  field :logo_length, 2, optional: true, type: :float
end

defmodule CEntityMessagePlayJingle do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :entity_msg, 1, optional: true, type: CEntityMsg
end

defmodule CEntityMessageScreenOverlay do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :start_effect, 1, optional: true, type: :bool
  field :entity_msg, 2, optional: true, type: CEntityMsg
end

defmodule CEntityMessageRemoveAllDecals do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :remove_decals, 1, optional: true, type: :bool
  field :entity_msg, 2, optional: true, type: CEntityMsg
end

defmodule CEntityMessagePropagateForce do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :impulse, 1, optional: true, type: CMsgVector
  field :entity_msg, 2, optional: true, type: CEntityMsg
end

defmodule CEntityMessageDoSpark do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :origin, 1, optional: true, type: CMsgVector
  field :entityindex, 2, optional: true, type: :int32, default: -1
  field :radius, 3, optional: true, type: :float
  field :color, 4, optional: true, type: :fixed32
  field :beams, 5, optional: true, type: :uint32
  field :thick, 6, optional: true, type: :float
  field :duration, 7, optional: true, type: :float
  field :entity_msg, 8, optional: true, type: CEntityMsg
end

defmodule CEntityMessageFixAngle do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :relative, 1, optional: true, type: :bool
  field :angle, 2, optional: true, type: CMsgQAngle
  field :entity_msg, 3, optional: true, type: CEntityMsg
end

defmodule CUserMessageCameraTransition.Transition_DataDriven do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :filename, 1, optional: true, type: :string
  field :attach_ent_index, 2, optional: true, type: :int32, default: -1
  field :duration, 3, optional: true, type: :float
end

defmodule CUserMessageCameraTransition do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :camera_type, 1, optional: true, type: :uint32
  field :duration, 2, optional: true, type: :float

  field :params_data_driven, 3,
    optional: true,
    type: CUserMessageCameraTransition.Transition_DataDriven
end

defmodule CUserMsg_ParticleManager.ReleaseParticleIndex do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CUserMsg_ParticleManager.CreateParticle do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :particle_name_index, 1, optional: true, type: :fixed64
  field :attach_type, 2, optional: true, type: :int32
  field :entity_handle, 3, optional: true, type: :uint32, default: 16_777_215
  field :entity_handle_for_modifiers, 4, optional: true, type: :uint32, default: 16_777_215
  field :apply_voice_ban_rules, 5, optional: true, type: :bool
  field :team_behavior, 6, optional: true, type: :int32
  field :control_point_configuration, 7, optional: true, type: :string
end

defmodule CUserMsg_ParticleManager.DestroyParticle do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :destroy_immediately, 1, optional: true, type: :bool
end

defmodule CUserMsg_ParticleManager.DestroyParticleInvolving do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :destroy_immediately, 1, optional: true, type: :bool
  field :entity_handle, 3, optional: true, type: :uint32, default: 16_777_215
end

defmodule CUserMsg_ParticleManager.DestroyParticleNamed do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :particle_name_index, 1, optional: true, type: :fixed64
  field :entity_handle, 2, optional: true, type: :uint32, default: 16_777_215
  field :destroy_immediately, 3, optional: true, type: :bool
  field :play_endcap, 4, optional: true, type: :bool
end

defmodule CUserMsg_ParticleManager.UpdateParticle_OBSOLETE do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :control_point, 1, optional: true, type: :int32
  field :position, 2, optional: true, type: CMsgVector
end

defmodule CUserMsg_ParticleManager.UpdateParticleFwd_OBSOLETE do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :control_point, 1, optional: true, type: :int32
  field :forward, 2, optional: true, type: CMsgVector
end

defmodule CUserMsg_ParticleManager.UpdateParticleOrient_OBSOLETE do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :control_point, 1, optional: true, type: :int32
  field :forward, 2, optional: true, type: CMsgVector
  field :deprecated_right, 3, optional: true, type: CMsgVector
  field :up, 4, optional: true, type: CMsgVector
  field :left, 5, optional: true, type: CMsgVector
end

defmodule CUserMsg_ParticleManager.UpdateParticleTransform do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :control_point, 1, optional: true, type: :int32
  field :position, 2, optional: true, type: CMsgVector
  field :orientation, 3, optional: true, type: CMsgQuaternion
  field :interpolation_interval, 4, optional: true, type: :float
end

defmodule CUserMsg_ParticleManager.UpdateParticleFallback do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :control_point, 1, optional: true, type: :int32
  field :position, 2, optional: true, type: CMsgVector
end

defmodule CUserMsg_ParticleManager.UpdateParticleOffset do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :control_point, 1, optional: true, type: :int32
  field :origin_offset, 2, optional: true, type: CMsgVector
  field :angle_offset, 3, optional: true, type: CMsgQAngle
end

defmodule CUserMsg_ParticleManager.UpdateParticleEnt do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :control_point, 1, optional: true, type: :int32
  field :entity_handle, 2, optional: true, type: :uint32, default: 16_777_215
  field :attach_type, 3, optional: true, type: :int32
  field :attachment, 4, optional: true, type: :int32
  field :fallback_position, 5, optional: true, type: CMsgVector
  field :include_wearables, 6, optional: true, type: :bool
  field :offset_position, 7, optional: true, type: CMsgVector
  field :offset_angles, 8, optional: true, type: CMsgQAngle
end

defmodule CUserMsg_ParticleManager.UpdateParticleSetFrozen do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :set_frozen, 1, optional: true, type: :bool
  field :transition_duration, 2, optional: true, type: :float
end

defmodule CUserMsg_ParticleManager.UpdateParticleShouldDraw do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :should_draw, 1, optional: true, type: :bool
end

defmodule CUserMsg_ParticleManager.ChangeControlPointAttachment do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :attachment_old, 1, optional: true, type: :int32
  field :attachment_new, 2, optional: true, type: :int32
  field :entity_handle, 3, optional: true, type: :uint32, default: 16_777_215
end

defmodule CUserMsg_ParticleManager.UpdateEntityPosition do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :entity_handle, 1, optional: true, type: :uint32, default: 16_777_215
  field :position, 2, optional: true, type: CMsgVector
end

defmodule CUserMsg_ParticleManager.SetParticleFoWProperties do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :fow_control_point, 1, optional: true, type: :int32
  field :fow_control_point2, 2, optional: true, type: :int32
  field :fow_radius, 3, optional: true, type: :float
end

defmodule CUserMsg_ParticleManager.SetParticleShouldCheckFoW do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :check_fow, 1, optional: true, type: :bool
end

defmodule CUserMsg_ParticleManager.SetControlPointModel do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :control_point, 1, optional: true, type: :int32
  field :model_name, 2, optional: true, type: :string
end

defmodule CUserMsg_ParticleManager.SetControlPointSnapshot do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :control_point, 1, optional: true, type: :int32
  field :snapshot_name, 2, optional: true, type: :string
end

defmodule CUserMsg_ParticleManager.SetParticleText do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :text, 1, optional: true, type: :string
end

defmodule CUserMsg_ParticleManager.SetTextureAttribute do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :attribute_name, 1, optional: true, type: :string
  field :texture_name, 2, optional: true, type: :string
end

defmodule CUserMsg_ParticleManager.SetSceneObjectGenericFlag do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :flag_value, 1, optional: true, type: :bool
end

defmodule CUserMsg_ParticleManager.SetSceneObjectTintAndDesat do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :tint, 1, optional: true, type: :fixed32
  field :desat, 2, optional: true, type: :float
end

defmodule CUserMsg_ParticleManager.ParticleSkipToTime do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :skip_to_time, 1, optional: true, type: :float
end

defmodule CUserMsg_ParticleManager.ParticleCanFreeze do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :can_freeze, 1, optional: true, type: :bool
end

defmodule CUserMsg_ParticleManager.ParticleFreezeTransitionOverride do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :freeze_transition_override, 1, optional: true, type: :float
end

defmodule CUserMsg_ParticleManager.FreezeParticleInvolving do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :set_frozen, 1, optional: true, type: :bool
  field :transition_duration, 2, optional: true, type: :float
  field :entity_handle, 3, optional: true, type: :uint32, default: 16_777_215
end

defmodule CUserMsg_ParticleManager.SetParticleNamedValueContext.FloatContextValue do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :value_name_hash, 1, optional: true, type: :uint32
  field :value, 2, optional: true, type: :float
end

defmodule CUserMsg_ParticleManager.SetParticleNamedValueContext.VectorContextValue do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :value_name_hash, 1, optional: true, type: :uint32
  field :value, 2, optional: true, type: CMsgVector
end

defmodule CUserMsg_ParticleManager.SetParticleNamedValueContext.TransformContextValue do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :value_name_hash, 1, optional: true, type: :uint32
  field :angles, 2, optional: true, type: CMsgQAngle
  field :translation, 3, optional: true, type: CMsgVector
end

defmodule CUserMsg_ParticleManager.SetParticleNamedValueContext.EHandleContext do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :value_name_hash, 1, optional: true, type: :uint32
  field :ent_index, 2, optional: true, type: :uint32, default: 16_777_215
end

defmodule CUserMsg_ParticleManager.SetParticleNamedValueContext do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :float_values, 1,
    repeated: true,
    type: CUserMsg_ParticleManager.SetParticleNamedValueContext.FloatContextValue

  field :vector_values, 2,
    repeated: true,
    type: CUserMsg_ParticleManager.SetParticleNamedValueContext.VectorContextValue

  field :transform_values, 3,
    repeated: true,
    type: CUserMsg_ParticleManager.SetParticleNamedValueContext.TransformContextValue

  field :ehandle_values, 4,
    repeated: true,
    type: CUserMsg_ParticleManager.SetParticleNamedValueContext.EHandleContext
end

defmodule CUserMsg_ParticleManager do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :type, 1,
    required: true,
    type: PARTICLE_MESSAGE,
    default: :GAME_PARTICLE_MANAGER_EVENT_CREATE,
    enum: true

  field :index, 2, required: true, type: :uint32

  field :release_particle_index, 3,
    optional: true,
    type: CUserMsg_ParticleManager.ReleaseParticleIndex

  field :create_particle, 4, optional: true, type: CUserMsg_ParticleManager.CreateParticle
  field :destroy_particle, 5, optional: true, type: CUserMsg_ParticleManager.DestroyParticle

  field :destroy_particle_involving, 6,
    optional: true,
    type: CUserMsg_ParticleManager.DestroyParticleInvolving

  field :update_particle, 7,
    optional: true,
    type: CUserMsg_ParticleManager.UpdateParticle_OBSOLETE

  field :update_particle_fwd, 8,
    optional: true,
    type: CUserMsg_ParticleManager.UpdateParticleFwd_OBSOLETE

  field :update_particle_orient, 9,
    optional: true,
    type: CUserMsg_ParticleManager.UpdateParticleOrient_OBSOLETE

  field :update_particle_fallback, 10,
    optional: true,
    type: CUserMsg_ParticleManager.UpdateParticleFallback

  field :update_particle_offset, 11,
    optional: true,
    type: CUserMsg_ParticleManager.UpdateParticleOffset

  field :update_particle_ent, 12, optional: true, type: CUserMsg_ParticleManager.UpdateParticleEnt

  field :update_particle_should_draw, 14,
    optional: true,
    type: CUserMsg_ParticleManager.UpdateParticleShouldDraw

  field :update_particle_set_frozen, 15,
    optional: true,
    type: CUserMsg_ParticleManager.UpdateParticleSetFrozen

  field :change_control_point_attachment, 16,
    optional: true,
    type: CUserMsg_ParticleManager.ChangeControlPointAttachment

  field :update_entity_position, 17,
    optional: true,
    type: CUserMsg_ParticleManager.UpdateEntityPosition

  field :set_particle_fow_properties, 18,
    optional: true,
    type: CUserMsg_ParticleManager.SetParticleFoWProperties

  field :set_particle_text, 19, optional: true, type: CUserMsg_ParticleManager.SetParticleText

  field :set_particle_should_check_fow, 20,
    optional: true,
    type: CUserMsg_ParticleManager.SetParticleShouldCheckFoW

  field :set_control_point_model, 21,
    optional: true,
    type: CUserMsg_ParticleManager.SetControlPointModel

  field :set_control_point_snapshot, 22,
    optional: true,
    type: CUserMsg_ParticleManager.SetControlPointSnapshot

  field :set_texture_attribute, 23,
    optional: true,
    type: CUserMsg_ParticleManager.SetTextureAttribute

  field :set_scene_object_generic_flag, 24,
    optional: true,
    type: CUserMsg_ParticleManager.SetSceneObjectGenericFlag

  field :set_scene_object_tint_and_desat, 25,
    optional: true,
    type: CUserMsg_ParticleManager.SetSceneObjectTintAndDesat

  field :destroy_particle_named, 26,
    optional: true,
    type: CUserMsg_ParticleManager.DestroyParticleNamed

  field :particle_skip_to_time, 27,
    optional: true,
    type: CUserMsg_ParticleManager.ParticleSkipToTime

  field :particle_can_freeze, 28, optional: true, type: CUserMsg_ParticleManager.ParticleCanFreeze

  field :set_named_value_context, 29,
    optional: true,
    type: CUserMsg_ParticleManager.SetParticleNamedValueContext

  field :update_particle_transform, 30,
    optional: true,
    type: CUserMsg_ParticleManager.UpdateParticleTransform

  field :particle_freeze_transition_override, 31,
    optional: true,
    type: CUserMsg_ParticleManager.ParticleFreezeTransitionOverride

  field :freeze_particle_involving, 32,
    optional: true,
    type: CUserMsg_ParticleManager.FreezeParticleInvolving

  extensions [{100, 202}]
end

defmodule CUserMsg_HudError do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :order_id, 1, optional: true, type: :int32
end

defmodule CUserMsg_CustomGameEvent do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :event_name, 1, optional: true, type: :string
  field :data, 2, optional: true, type: :bytes
end

defmodule CUserMessageHapticsManagerPulse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :hand_id, 1, optional: true, type: :int32
  field :effect_amplitude, 2, optional: true, type: :float
  field :effect_frequency, 3, optional: true, type: :float
  field :effect_duration, 4, optional: true, type: :float
end

defmodule CUserMessageHapticsManagerEffect do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :hand_id, 1, optional: true, type: :int32
  field :effect_name_hash_code, 2, optional: true, type: :uint32
  field :effect_scale, 3, optional: true, type: :float
end

defmodule CUserMessageAnimStateGraphState do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :entity_index, 1, optional: true, type: :int32
  field :data, 2, optional: true, type: :bytes
end

defmodule CUserMessageCommandQueueState.CommandQueueInfoT do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :commands_queued, 1, optional: true, type: :uint32
  field :command_queue_desired_size, 2, optional: true, type: :uint32
  field :starved_command_ticks, 3, optional: true, type: :uint32
  field :time_dilation_percent, 4, optional: true, type: :int32
end

defmodule CUserMessageCommandQueueState do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :player_slot, 1, optional: true, type: :int32, default: -1

  field :command_queue_info, 2,
    optional: true,
    type: CUserMessageCommandQueueState.CommandQueueInfoT
end

defmodule CUserMessageUpdateCssClasses do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :target_world_panel, 1, optional: true, type: :int32
  field :css_classes, 2, optional: true, type: :string
  field :is_add, 3, optional: true, type: :bool
end

defmodule CUserMessageServerFrameTime do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :frame_time, 1, optional: true, type: :float
end

defmodule CUserMessageLagCompensationError do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :distance, 1, optional: true, type: :float
end

defmodule CUserMessageRequestDllStatus do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :dll_action, 1, optional: true, type: :string
  field :full_report, 2, optional: true, type: :bool
end

defmodule CUserMessageRequestUtilAction do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :util1, 2, optional: true, type: :int32
  field :util2, 3, optional: true, type: :int32
  field :util3, 4, optional: true, type: :int32
  field :util4, 5, optional: true, type: :int32
  field :util5, 6, optional: true, type: :int32
end

defmodule CUserMessage_UtilMsg_Response.ItemDetail do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :index, 1, optional: true, type: :int32
  field :hash, 2, optional: true, type: :int32
  field :crc, 3, optional: true, type: :int32
  field :name, 4, optional: true, type: :string
end

defmodule CUserMessage_UtilMsg_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :crc, 1, optional: true, type: :fixed32
  field :item_count, 2, optional: true, type: :int32
  field :crc2, 3, optional: true, type: :fixed32
  field :item_count2, 4, optional: true, type: :int32
  field :crc_part, 5, repeated: true, type: :int32
  field :crc_part2, 6, repeated: true, type: :int32
  field :client_timestamp, 7, optional: true, type: :int32
  field :platform, 8, optional: true, type: :int32
  field :itemdetails, 9, repeated: true, type: CUserMessage_UtilMsg_Response.ItemDetail
  field :itemgroup, 10, optional: true, type: :int32
  field :total_count, 11, optional: true, type: :int32
  field :total_count2, 12, optional: true, type: :int32
end

defmodule CUserMessage_DllStatus.CVDiagnostic do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :id, 1, optional: true, type: :uint32
  field :extended, 2, optional: true, type: :uint32
  field :value, 3, optional: true, type: :uint64
  field :string_value, 4, optional: true, type: :string
end

defmodule CUserMessage_DllStatus.CModule do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :base_addr, 1, optional: true, type: :uint64
  field :name, 2, optional: true, type: :string
  field :size, 3, optional: true, type: :uint32
  field :timestamp, 4, optional: true, type: :uint32
end

defmodule CUserMessage_DllStatus do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :file_report, 1, optional: true, type: :string
  field :command_line, 2, optional: true, type: :string
  field :total_files, 3, optional: true, type: :uint32
  field :process_id, 4, optional: true, type: :uint32
  field :osversion, 5, optional: true, type: :int32
  field :client_time, 6, optional: true, type: :uint64
  field :diagnostics, 7, repeated: true, type: CUserMessage_DllStatus.CVDiagnostic
  field :modules, 8, repeated: true, type: CUserMessage_DllStatus.CModule
end

defmodule CUserMessageRequestInventory do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :inventory, 1, optional: true, type: :int32
  field :offset, 2, optional: true, type: :int32
  field :options, 3, optional: true, type: :int32
end

defmodule CUserMessage_Inventory_Response.InventoryDetail do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :index, 1, optional: true, type: :int32
  field :primary, 2, optional: true, type: :int64
  field :offset, 3, optional: true, type: :int64
  field :first, 4, optional: true, type: :int64
  field :base, 5, optional: true, type: :int64
  field :name, 6, optional: true, type: :string
  field :base_name, 7, optional: true, type: :string
  field :base_detail, 8, optional: true, type: :int32
  field :base_time, 9, optional: true, type: :int32
  field :base_hash, 10, optional: true, type: :int32
end

defmodule CUserMessage_Inventory_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :crc, 1, optional: true, type: :fixed32
  field :item_count, 2, optional: true, type: :int32
  field :osversion, 5, optional: true, type: :int32
  field :perf_time, 6, optional: true, type: :int32
  field :client_timestamp, 7, optional: true, type: :int32
  field :platform, 8, optional: true, type: :int32
  field :inventories, 9, repeated: true, type: CUserMessage_Inventory_Response.InventoryDetail
  field :inventories2, 10, repeated: true, type: CUserMessage_Inventory_Response.InventoryDetail
  field :inventories3, 14, repeated: true, type: CUserMessage_Inventory_Response.InventoryDetail
  field :inv_type, 11, optional: true, type: :int32
  field :build_version, 12, optional: true, type: :int32
  field :instance, 13, optional: true, type: :int32
  field :start_time, 15, optional: true, type: :int64
end

defmodule CUserMessageRequestDiagnostic.Diagnostic do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :index, 1, optional: true, type: :int32
  field :offset, 2, optional: true, type: :int64
  field :param, 3, optional: true, type: :int32
  field :length, 4, optional: true, type: :int32
  field :type, 5, optional: true, type: :int32
  field :base, 6, optional: true, type: :int64
  field :range, 7, optional: true, type: :int64
  field :extent, 8, optional: true, type: :int64
  field :detail, 9, optional: true, type: :int64
  field :name, 10, optional: true, type: :string
  field :alias, 11, optional: true, type: :string
  field :vardetail, 12, optional: true, type: :bytes
  field :context, 13, optional: true, type: :int32
end

defmodule CUserMessageRequestDiagnostic do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :diagnostics, 1, repeated: true, type: CUserMessageRequestDiagnostic.Diagnostic
end

defmodule CUserMessage_Diagnostic_Response.Diagnostic do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :index, 1, optional: true, type: :int32
  field :offset, 2, optional: true, type: :int64
  field :param, 3, optional: true, type: :int32
  field :length, 4, optional: true, type: :int32
  field :detail, 5, optional: true, type: :bytes
  field :base, 6, optional: true, type: :int64
  field :range, 7, optional: true, type: :int64
  field :type, 8, optional: true, type: :int32
  field :name, 10, optional: true, type: :string
  field :alias, 11, optional: true, type: :string
  field :backup, 12, optional: true, type: :bytes
  field :context, 13, optional: true, type: :int32
end

defmodule CUserMessage_Diagnostic_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :diagnostics, 1, repeated: true, type: CUserMessage_Diagnostic_Response.Diagnostic
  field :build_version, 2, optional: true, type: :int32
  field :instance, 3, optional: true, type: :int32
  field :start_time, 4, optional: true, type: :int64
  field :osversion, 5, optional: true, type: :int32
  field :platform, 6, optional: true, type: :int32
end

defmodule CUserMessage_ExtraUserData do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :item, 1, optional: true, type: :int32
  field :value1, 2, optional: true, type: :int64
  field :value2, 3, optional: true, type: :int64
  field :detail1, 4, repeated: true, type: :bytes
  field :detail2, 5, repeated: true, type: :bytes
end