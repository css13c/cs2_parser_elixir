defmodule ECstrike15UserMessages do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :CS_UM_VGUIMenu, 301
  field :CS_UM_Geiger, 302
  field :CS_UM_Train, 303
  field :CS_UM_HudText, 304
  field :CS_UM_SayText, 305
  field :CS_UM_SayText2, 306
  field :CS_UM_TextMsg, 307
  field :CS_UM_HudMsg, 308
  field :CS_UM_ResetHud, 309
  field :CS_UM_GameTitle, 310
  field :CS_UM_Shake, 312
  field :CS_UM_Fade, 313
  field :CS_UM_Rumble, 314
  field :CS_UM_CloseCaption, 315
  field :CS_UM_CloseCaptionDirect, 316
  field :CS_UM_SendAudio, 317
  field :CS_UM_RawAudio, 318
  field :CS_UM_VoiceMask, 319
  field :CS_UM_RequestState, 320
  field :CS_UM_Damage, 321
  field :CS_UM_RadioText, 322
  field :CS_UM_HintText, 323
  field :CS_UM_KeyHintText, 324
  field :CS_UM_ProcessSpottedEntityUpdate, 325
  field :CS_UM_ReloadEffect, 326
  field :CS_UM_AdjustMoney, 327
  field :CS_UM_UpdateTeamMoney, 328
  field :CS_UM_StopSpectatorMode, 329
  field :CS_UM_KillCam, 330
  field :CS_UM_DesiredTimescale, 331
  field :CS_UM_CurrentTimescale, 332
  field :CS_UM_AchievementEvent, 333
  field :CS_UM_MatchEndConditions, 334
  field :CS_UM_DisconnectToLobby, 335
  field :CS_UM_PlayerStatsUpdate, 336
  field :CS_UM_WarmupHasEnded, 338
  field :CS_UM_ClientInfo, 339
  field :CS_UM_XRankGet, 340
  field :CS_UM_XRankUpd, 341
  field :CS_UM_CallVoteFailed, 345
  field :CS_UM_VoteStart, 346
  field :CS_UM_VotePass, 347
  field :CS_UM_VoteFailed, 348
  field :CS_UM_VoteSetup, 349
  field :CS_UM_ServerRankRevealAll, 350
  field :CS_UM_SendLastKillerDamageToClient, 351
  field :CS_UM_ServerRankUpdate, 352
  field :CS_UM_ItemPickup, 353
  field :CS_UM_ShowMenu, 354
  field :CS_UM_BarTime, 355
  field :CS_UM_AmmoDenied, 356
  field :CS_UM_MarkAchievement, 357
  field :CS_UM_MatchStatsUpdate, 358
  field :CS_UM_ItemDrop, 359
  field :CS_UM_GlowPropTurnOff, 360
  field :CS_UM_SendPlayerItemDrops, 361
  field :CS_UM_RoundBackupFilenames, 362
  field :CS_UM_SendPlayerItemFound, 363
  field :CS_UM_ReportHit, 364
  field :CS_UM_XpUpdate, 365
  field :CS_UM_QuestProgress, 366
  field :CS_UM_ScoreLeaderboardData, 367
  field :CS_UM_PlayerDecalDigitalSignature, 368
  field :CS_UM_WeaponSound, 369
  field :CS_UM_UpdateScreenHealthBar, 370
  field :CS_UM_EntityOutlineHighlight, 371
  field :CS_UM_SSUI, 372
  field :CS_UM_SurvivalStats, 373
  field :CS_UM_DisconnectToLobby2, 374
  field :CS_UM_EndOfMatchAllPlayersData, 375
  field :CS_UM_PostRoundDamageReport, 376
  field :CS_UM_RoundEndReportData, 379
  field :CS_UM_CurrentRoundOdds, 380
  field :CS_UM_DeepStats, 381
  field :CS_UM_UtilMsg, 382
  field :CS_UM_ShootInfo, 383
end

defmodule ECSUsrMsg_DisconnectToLobby_Action do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :k_ECSUsrMsg_DisconnectToLobby_Action_Default, 0
  field :k_ECSUsrMsg_DisconnectToLobby_Action_GoQueue, 1
end

defmodule CCSUsrMsg_VGUIMenu.Keys do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :name, 1, optional: true, type: :string
  field :value, 2, optional: true, type: :string
end

defmodule CCSUsrMsg_VGUIMenu do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :name, 1, optional: true, type: :string
  field :show, 2, optional: true, type: :bool
  field :keys, 3, repeated: true, type: CCSUsrMsg_VGUIMenu.Keys
end

defmodule CCSUsrMsg_Geiger do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :range, 1, optional: true, type: :int32
end

defmodule CCSUsrMsg_Train do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :train, 1, optional: true, type: :int32
end

defmodule CCSUsrMsg_HudText do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :text, 1, optional: true, type: :string
end

defmodule CCSUsrMsg_HudMsg do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :channel, 1, optional: true, type: :int32
  field :pos, 2, optional: true, type: CMsgVector2D
  field :clr1, 3, optional: true, type: CMsgRGBA
  field :clr2, 4, optional: true, type: CMsgRGBA
  field :effect, 5, optional: true, type: :int32
  field :fade_in_time, 6, optional: true, type: :float
  field :fade_out_time, 7, optional: true, type: :float
  field :hold_time, 9, optional: true, type: :float
  field :fx_time, 10, optional: true, type: :float
  field :text, 11, optional: true, type: :string
end

defmodule CCSUsrMsg_Shake do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :command, 1, optional: true, type: :int32
  field :local_amplitude, 2, optional: true, type: :float
  field :frequency, 3, optional: true, type: :float
  field :duration, 4, optional: true, type: :float
end

defmodule CCSUsrMsg_Fade do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :duration, 1, optional: true, type: :int32
  field :hold_time, 2, optional: true, type: :int32
  field :flags, 3, optional: true, type: :int32
  field :clr, 4, optional: true, type: CMsgRGBA
end

defmodule CCSUsrMsg_Rumble do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :index, 1, optional: true, type: :int32
  field :data, 2, optional: true, type: :int32
  field :flags, 3, optional: true, type: :int32
end

defmodule CCSUsrMsg_CloseCaption do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :hash, 1, optional: true, type: :uint32
  field :duration, 2, optional: true, type: :int32
  field :from_player, 3, optional: true, type: :bool
  field :cctoken, 4, optional: true, type: :string
end

defmodule CCSUsrMsg_CloseCaptionDirect do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :hash, 1, optional: true, type: :uint32
  field :duration, 2, optional: true, type: :int32
  field :from_player, 3, optional: true, type: :bool
end

defmodule CCSUsrMsg_SendAudio do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :radio_sound, 1, optional: true, type: :string
end

defmodule CCSUsrMsg_RawAudio do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :pitch, 1, optional: true, type: :int32
  field :entidx, 2, optional: true, type: :int32, default: -1
  field :duration, 3, optional: true, type: :float
  field :voice_filename, 4, optional: true, type: :string
end

defmodule CCSUsrMsg_VoiceMask.PlayerMask do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :game_rules_mask, 1, optional: true, type: :int32
  field :ban_masks, 2, optional: true, type: :int32
end

defmodule CCSUsrMsg_VoiceMask do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :player_masks, 1, repeated: true, type: CCSUsrMsg_VoiceMask.PlayerMask
  field :player_mod_enable, 2, optional: true, type: :bool
end

defmodule CCSUsrMsg_Damage do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :amount, 1, optional: true, type: :int32
  field :inflictor_world_pos, 2, optional: true, type: CMsgVector
  field :victim_entindex, 3, optional: true, type: :int32, default: -1
end

defmodule CCSUsrMsg_RadioText do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :msg_dst, 1, optional: true, type: :int32
  field :client, 2, optional: true, type: :int32, default: -1
  field :msg_name, 3, optional: true, type: :string
  field :params, 4, repeated: true, type: :string
end

defmodule CCSUsrMsg_HintText do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :message, 1, optional: true, type: :string
end

defmodule CCSUsrMsg_KeyHintText do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :messages, 1, repeated: true, type: :string
end

defmodule CCSUsrMsg_ProcessSpottedEntityUpdate.SpottedEntityUpdate do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :entity_idx, 1, optional: true, type: :int32, default: -1
  field :class_id, 2, optional: true, type: :int32
  field :origin_x, 3, optional: true, type: :int32
  field :origin_y, 4, optional: true, type: :int32
  field :origin_z, 5, optional: true, type: :int32
  field :angle_y, 6, optional: true, type: :int32
  field :defuser, 7, optional: true, type: :bool
  field :player_has_defuser, 8, optional: true, type: :bool
  field :player_has_c4, 9, optional: true, type: :bool
end

defmodule CCSUsrMsg_ProcessSpottedEntityUpdate do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :new_update, 1, optional: true, type: :bool

  field :entity_updates, 2,
    repeated: true,
    type: CCSUsrMsg_ProcessSpottedEntityUpdate.SpottedEntityUpdate
end

defmodule CCSUsrMsg_SendPlayerItemDrops do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :entity_updates, 1, repeated: true, type: CEconItemPreviewDataBlock
end

defmodule CCSUsrMsg_SendPlayerItemFound do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :iteminfo, 1, optional: true, type: CEconItemPreviewDataBlock
  field :playerslot, 2, optional: true, type: :int32, default: -1
end

defmodule CCSUsrMsg_ReloadEffect do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :entidx, 1, optional: true, type: :int32, default: -1
  field :actanim, 2, optional: true, type: :int32
  field :origin_x, 3, optional: true, type: :float
  field :origin_y, 4, optional: true, type: :float
  field :origin_z, 5, optional: true, type: :float
end

defmodule CCSUsrMsg_WeaponSound do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :entidx, 1, optional: true, type: :int32, default: -1
  field :origin_x, 2, optional: true, type: :float
  field :origin_y, 3, optional: true, type: :float
  field :origin_z, 4, optional: true, type: :float
  field :sound, 5, optional: true, type: :string
  field :game_timestamp, 6, optional: true, type: :float
  field :source_soundscapeid, 7, optional: true, type: :fixed32
end

defmodule CCSUsrMsg_UpdateScreenHealthBar do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :entidx, 1, optional: true, type: :int32, default: -1
  field :healthratio_old, 2, optional: true, type: :float
  field :healthratio_new, 3, optional: true, type: :float
  field :style, 4, optional: true, type: :int32
end

defmodule CCSUsrMsg_EntityOutlineHighlight do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :entidx, 1, optional: true, type: :int32, default: -1
  field :removehighlight, 2, optional: true, type: :bool
end

defmodule CCSUsrMsg_AdjustMoney do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :amount, 1, optional: true, type: :int32
end

defmodule CCSUsrMsg_ReportHit do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :pos_x, 1, optional: true, type: :float
  field :pos_y, 2, optional: true, type: :float
  field :timestamp, 4, optional: true, type: :float
  field :pos_z, 3, optional: true, type: :float
end

defmodule CCSUsrMsg_KillCam do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :obs_mode, 1, optional: true, type: :int32
  field :first_target, 2, optional: true, type: :int32, default: -1
  field :second_target, 3, optional: true, type: :int32, default: -1
end

defmodule CCSUsrMsg_DesiredTimescale do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :desired_timescale, 1, optional: true, type: :float
  field :duration_realtime_sec, 2, optional: true, type: :float
  field :interpolator_type, 3, optional: true, type: :int32
  field :start_blend_time, 4, optional: true, type: :float
end

defmodule CCSUsrMsg_CurrentTimescale do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :cur_timescale, 1, optional: true, type: :float
end

defmodule CCSUsrMsg_AchievementEvent do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :achievement, 1, optional: true, type: :int32
  field :count, 2, optional: true, type: :int32
  field :user_id, 3, optional: true, type: :int32
end

defmodule CCSUsrMsg_MatchEndConditions do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :fraglimit, 1, optional: true, type: :int32
  field :mp_maxrounds, 2, optional: true, type: :int32
  field :mp_winlimit, 3, optional: true, type: :int32
  field :mp_timelimit, 4, optional: true, type: :float
end

defmodule CCSUsrMsg_PlayerStatsUpdate.Stat do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :idx, 1, optional: true, type: :int32
  field :delta, 2, optional: true, type: :int32
end

defmodule CCSUsrMsg_PlayerStatsUpdate do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :version, 1, optional: true, type: :int32
  field :stats, 4, repeated: true, type: CCSUsrMsg_PlayerStatsUpdate.Stat
  field :ehandle, 5, optional: true, type: :uint32
  field :crc, 6, optional: true, type: :int32
end

defmodule CCSUsrMsg_QuestProgress do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :quest_id, 1, optional: true, type: :uint32
  field :normal_points, 2, optional: true, type: :uint32
  field :bonus_points, 3, optional: true, type: :uint32
  field :is_event_quest, 4, optional: true, type: :bool
end

defmodule CCSUsrMsg_ScoreLeaderboardData do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :data, 1, optional: true, type: ScoreLeaderboardData
end

defmodule CCSUsrMsg_PlayerDecalDigitalSignature do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :data, 1, optional: true, type: PlayerDecalDigitalSignature
end

defmodule CCSUsrMsg_XRankGet do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :mode_idx, 1, optional: true, type: :int32
  field :controller, 2, optional: true, type: :int32
end

defmodule CCSUsrMsg_XRankUpd do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :mode_idx, 1, optional: true, type: :int32
  field :controller, 2, optional: true, type: :int32
  field :ranking, 3, optional: true, type: :int32
end

defmodule CCSUsrMsg_CallVoteFailed do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :reason, 1, optional: true, type: :int32
  field :time, 2, optional: true, type: :int32
end

defmodule CCSUsrMsg_VoteStart do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :team, 1, optional: true, type: :int32
  field :player_slot, 2, optional: true, type: :int32, default: -1
  field :vote_type, 3, optional: true, type: :int32
  field :disp_str, 4, optional: true, type: :string
  field :details_str, 5, optional: true, type: :string
  field :other_team_str, 6, optional: true, type: :string
  field :is_yes_no_vote, 7, optional: true, type: :bool
  field :player_slot_target, 8, optional: true, type: :int32, default: -1
end

defmodule CCSUsrMsg_VotePass do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :team, 1, optional: true, type: :int32
  field :vote_type, 2, optional: true, type: :int32
  field :disp_str, 3, optional: true, type: :string
  field :details_str, 4, optional: true, type: :string
end

defmodule CCSUsrMsg_VoteFailed do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :team, 1, optional: true, type: :int32
  field :reason, 2, optional: true, type: :int32
end

defmodule CCSUsrMsg_VoteSetup do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :potential_issues, 1, repeated: true, type: :string
end

defmodule CCSUsrMsg_SendLastKillerDamageToClient do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :num_hits_given, 1, optional: true, type: :int32
  field :damage_given, 2, optional: true, type: :int32
  field :num_hits_taken, 3, optional: true, type: :int32
  field :damage_taken, 4, optional: true, type: :int32
  field :actual_damage_given, 5, optional: true, type: :int32
  field :actual_damage_taken, 6, optional: true, type: :int32
end

defmodule CCSUsrMsg_ServerRankUpdate.RankUpdate do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :account_id, 1, optional: true, type: :int32
  field :rank_old, 2, optional: true, type: :int32
  field :rank_new, 3, optional: true, type: :int32
  field :num_wins, 4, optional: true, type: :int32
  field :rank_change, 5, optional: true, type: :float
  field :rank_type_id, 6, optional: true, type: :int32
end

defmodule CCSUsrMsg_ServerRankUpdate do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :rank_update, 1, repeated: true, type: CCSUsrMsg_ServerRankUpdate.RankUpdate
end

defmodule CCSUsrMsg_XpUpdate do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :data, 1, optional: true, type: CMsgGCCstrike15V2_GC2ServerNotifyXPRewarded
end

defmodule CCSUsrMsg_ItemPickup do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :item, 1, optional: true, type: :string
end

defmodule CCSUsrMsg_ShowMenu do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :bits_valid_slots, 1, optional: true, type: :int32
  field :display_time, 2, optional: true, type: :int32
  field :menu_string, 3, optional: true, type: :string
end

defmodule CCSUsrMsg_BarTime do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :time, 1, optional: true, type: :string
end

defmodule CCSUsrMsg_AmmoDenied do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :ammoidx, 1, optional: true, type: :int32
end

defmodule CCSUsrMsg_MarkAchievement do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :achievement, 1, optional: true, type: :string
end

defmodule CCSUsrMsg_MatchStatsUpdate do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :update, 1, optional: true, type: :string
end

defmodule CCSUsrMsg_ItemDrop do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :itemid, 1, optional: true, type: :int64
  field :death, 2, optional: true, type: :bool
end

defmodule CCSUsrMsg_GlowPropTurnOff do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :entidx, 1, optional: true, type: :int32, default: -1
end

defmodule CCSUsrMsg_RoundBackupFilenames do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :count, 1, optional: true, type: :int32
  field :index, 2, optional: true, type: :int32
  field :filename, 3, optional: true, type: :string
  field :nicename, 4, optional: true, type: :string
end

defmodule CCSUsrMsg_SSUI do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :show, 1, optional: true, type: :bool
  field :start_time, 2, optional: true, type: :float
  field :end_time, 3, optional: true, type: :float
end

defmodule CCSUsrMsg_SurvivalStats.Fact do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :type, 1, optional: true, type: :int32
  field :display, 2, optional: true, type: :int32
  field :value, 3, optional: true, type: :int32
  field :interestingness, 4, optional: true, type: :float
end

defmodule CCSUsrMsg_SurvivalStats.Placement do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :xuid, 1, optional: true, type: :uint64
  field :teamnumber, 2, optional: true, type: :int32
  field :placement, 3, optional: true, type: :int32
end

defmodule CCSUsrMsg_SurvivalStats.Damage do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :xuid, 1, optional: true, type: :uint64
  field :to, 2, optional: true, type: :int32
  field :to_hits, 3, optional: true, type: :int32
  field :from, 4, optional: true, type: :int32
  field :from_hits, 5, optional: true, type: :int32
end

defmodule CCSUsrMsg_SurvivalStats do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :xuid, 1, optional: true, type: :uint64
  field :facts, 2, repeated: true, type: CCSUsrMsg_SurvivalStats.Fact
  field :users, 3, repeated: true, type: CCSUsrMsg_SurvivalStats.Placement
  field :damages, 5, repeated: true, type: CCSUsrMsg_SurvivalStats.Damage
  field :ticknumber, 4, optional: true, type: :int32
end

defmodule CCSUsrMsg_EndOfMatchAllPlayersData.Accolade do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :eaccolade, 1, optional: true, type: :int32
  field :value, 2, optional: true, type: :float
  field :position, 3, optional: true, type: :int32
end

defmodule CCSUsrMsg_EndOfMatchAllPlayersData.PlayerData do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :slot, 1, optional: true, type: :int32, default: -1
  field :xuid, 2, optional: true, type: :uint64
  field :name, 3, optional: true, type: :string
  field :teamnumber, 4, optional: true, type: :int32
  field :nomination, 5, optional: true, type: CCSUsrMsg_EndOfMatchAllPlayersData.Accolade
  field :items, 6, repeated: true, type: CEconItemPreviewDataBlock
  field :playercolor, 7, optional: true, type: :int32
  field :isbot, 8, optional: true, type: :bool
end

defmodule CCSUsrMsg_EndOfMatchAllPlayersData do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :allplayerdata, 1, repeated: true, type: CCSUsrMsg_EndOfMatchAllPlayersData.PlayerData
  field :scene, 2, optional: true, type: :int32
end

defmodule CCSUsrMsg_RoundEndReportData.RerEvent.Victim do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :team_number, 1, optional: true, type: :int32
  field :playerslot, 2, optional: true, type: :int32, default: -1
  field :xuid, 3, optional: true, type: :uint64
  field :color, 4, optional: true, type: :int32
  field :is_bot, 5, optional: true, type: :bool
  field :is_dead, 6, optional: true, type: :bool
end

defmodule CCSUsrMsg_RoundEndReportData.RerEvent.Objective do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :type, 1, optional: true, type: :int32
end

defmodule CCSUsrMsg_RoundEndReportData.RerEvent.Damage do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :other_playerslot, 1, optional: true, type: :int32, default: -1
  field :other_xuid, 2, optional: true, type: :uint64
  field :health_removed, 3, optional: true, type: :int32
  field :num_hits, 4, optional: true, type: :int32
  field :return_health_removed, 5, optional: true, type: :int32
  field :return_num_hits, 6, optional: true, type: :int32
end

defmodule CCSUsrMsg_RoundEndReportData.RerEvent do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :timestamp, 1, optional: true, type: :float
  field :terrorist_odds, 2, optional: true, type: :int32
  field :ct_alive, 3, optional: true, type: :int32
  field :t_alive, 4, optional: true, type: :int32
  field :victim_data, 5, optional: true, type: CCSUsrMsg_RoundEndReportData.RerEvent.Victim
  field :objective_data, 6, optional: true, type: CCSUsrMsg_RoundEndReportData.RerEvent.Objective
  field :all_damage_data, 7, repeated: true, type: CCSUsrMsg_RoundEndReportData.RerEvent.Damage
end

defmodule CCSUsrMsg_RoundEndReportData.InitialConditions do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :ct_equip_value, 1, optional: true, type: :int32
  field :t_equip_value, 2, optional: true, type: :int32
  field :terrorist_odds, 3, optional: true, type: :int32
end

defmodule CCSUsrMsg_RoundEndReportData do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :init_conditions, 1, optional: true, type: CCSUsrMsg_RoundEndReportData.InitialConditions
  field :all_rer_event_data, 2, repeated: true, type: CCSUsrMsg_RoundEndReportData.RerEvent
end

defmodule CCSUsrMsg_PostRoundDamageReport do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :other_xuid, 1, optional: true, type: :uint64
  field :given_kill_type, 2, optional: true, type: :int32
  field :given_health_removed, 3, optional: true, type: :int32
  field :given_num_hits, 4, optional: true, type: :int32
  field :taken_kill_type, 5, optional: true, type: :int32
  field :taken_health_removed, 6, optional: true, type: :int32
  field :taken_num_hits, 7, optional: true, type: :int32
end

defmodule CCSUsrMsg_CurrentRoundOdds do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :odds, 1, optional: true, type: :int32
end

defmodule CCSUsrMsg_DeepStats do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :stats, 1, optional: true, type: CMsgGCCStrike15_ClientDeepStats
end

defmodule CCSUsrMsg_ShootInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :frame_number, 1, optional: true, type: :int32
  field :hitbox_transforms, 2, repeated: true, type: CMsgTransform
  field :shoot_pos, 3, optional: true, type: CMsgVector
  field :shoot_dir, 4, optional: true, type: CMsgQAngle
end

defmodule CCSUsrMsg_ResetHud do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :reset, 1, optional: true, type: :bool
end

defmodule CCSUsrMsg_GameTitle do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :dummy, 1, optional: true, type: :int32
end

defmodule CCSUsrMsg_RequestState do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :dummy, 1, optional: true, type: :int32
end

defmodule CCSUsrMsg_StopSpectatorMode do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :dummy, 1, optional: true, type: :int32
end

defmodule CCSUsrMsg_DisconnectToLobby do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :dummy, 1, optional: true, type: :int32
end

defmodule CCSUsrMsg_WarmupHasEnded do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :dummy, 1, optional: true, type: :int32
end

defmodule CCSUsrMsg_ClientInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :dummy, 1, optional: true, type: :int32
end

defmodule CCSUsrMsg_ServerRankRevealAll do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :seconds_till_shutdown, 1, optional: true, type: :int32
  field :reservation, 2, optional: true, type: CMsgGCCStrike15V2_MatchmakingGC2ServerReserve
end

defmodule CCSUsrMsgPreMatchSayText do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :account_id, 1, optional: true, type: :uint32
  field :text, 2, optional: true, type: :string
  field :all_chat, 3, optional: true, type: :bool
end