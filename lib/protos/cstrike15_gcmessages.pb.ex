defmodule ECsgoGCMsg do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :k_EMsgGCCStrike15_v2_Base, 9100
  field :k_EMsgGCCStrike15_v2_MatchmakingStart, 9101
  field :k_EMsgGCCStrike15_v2_MatchmakingStop, 9102
  field :k_EMsgGCCStrike15_v2_MatchmakingClient2ServerPing, 9103
  field :k_EMsgGCCStrike15_v2_MatchmakingGC2ClientUpdate, 9104
  field :k_EMsgGCCStrike15_v2_MatchmakingServerReservationResponse, 9106
  field :k_EMsgGCCStrike15_v2_MatchmakingGC2ClientReserve, 9107
  field :k_EMsgGCCStrike15_v2_MatchmakingClient2GCHello, 9109
  field :k_EMsgGCCStrike15_v2_MatchmakingGC2ClientHello, 9110
  field :k_EMsgGCCStrike15_v2_MatchmakingGC2ClientAbandon, 9112
  field :k_EMsgGCCStrike15_v2_MatchmakingOperator2GCBlogUpdate, 9117
  field :k_EMsgGCCStrike15_v2_ServerNotificationForUserPenalty, 9118
  field :k_EMsgGCCStrike15_v2_ClientReportPlayer, 9119
  field :k_EMsgGCCStrike15_v2_ClientReportServer, 9120
  field :k_EMsgGCCStrike15_v2_ClientCommendPlayer, 9121
  field :k_EMsgGCCStrike15_v2_ClientReportResponse, 9122
  field :k_EMsgGCCStrike15_v2_ClientCommendPlayerQuery, 9123
  field :k_EMsgGCCStrike15_v2_ClientCommendPlayerQueryResponse, 9124
  field :k_EMsgGCCStrike15_v2_WatchInfoUsers, 9126
  field :k_EMsgGCCStrike15_v2_ClientRequestPlayersProfile, 9127
  field :k_EMsgGCCStrike15_v2_PlayersProfile, 9128
  field :k_EMsgGCCStrike15_v2_PlayerOverwatchCaseUpdate, 9131
  field :k_EMsgGCCStrike15_v2_PlayerOverwatchCaseAssignment, 9132
  field :k_EMsgGCCStrike15_v2_PlayerOverwatchCaseStatus, 9133
  field :k_EMsgGCCStrike15_v2_GC2ClientTextMsg, 9134
  field :k_EMsgGCCStrike15_v2_Client2GCTextMsg, 9135
  field :k_EMsgGCCStrike15_v2_MatchEndRunRewardDrops, 9136
  field :k_EMsgGCCStrike15_v2_MatchEndRewardDropsNotification, 9137
  field :k_EMsgGCCStrike15_v2_ClientRequestWatchInfoFriends2, 9138
  field :k_EMsgGCCStrike15_v2_MatchList, 9139
  field :k_EMsgGCCStrike15_v2_MatchListRequestCurrentLiveGames, 9140
  field :k_EMsgGCCStrike15_v2_MatchListRequestRecentUserGames, 9141
  field :k_EMsgGCCStrike15_v2_GC2ServerReservationUpdate, 9142
  field :k_EMsgGCCStrike15_v2_ClientVarValueNotificationInfo, 9144
  field :k_EMsgGCCStrike15_v2_MatchListRequestTournamentGames, 9146
  field :k_EMsgGCCStrike15_v2_MatchListRequestFullGameInfo, 9147
  field :k_EMsgGCCStrike15_v2_GiftsLeaderboardRequest, 9148
  field :k_EMsgGCCStrike15_v2_GiftsLeaderboardResponse, 9149
  field :k_EMsgGCCStrike15_v2_ServerVarValueNotificationInfo, 9150
  field :k_EMsgGCCStrike15_v2_ClientSubmitSurveyVote, 9152
  field :k_EMsgGCCStrike15_v2_Server2GCClientValidate, 9153
  field :k_EMsgGCCStrike15_v2_MatchListRequestLiveGameForUser, 9154
  field :k_EMsgGCCStrike15_v2_Client2GCEconPreviewDataBlockRequest, 9156
  field :k_EMsgGCCStrike15_v2_Client2GCEconPreviewDataBlockResponse, 9157
  field :k_EMsgGCCStrike15_v2_AccountPrivacySettings, 9158
  field :k_EMsgGCCStrike15_v2_SetMyActivityInfo, 9159
  field :k_EMsgGCCStrike15_v2_MatchListRequestTournamentPredictions, 9160
  field :k_EMsgGCCStrike15_v2_MatchListUploadTournamentPredictions, 9161
  field :k_EMsgGCCStrike15_v2_DraftSummary, 9162
  field :k_EMsgGCCStrike15_v2_ClientRequestJoinFriendData, 9163
  field :k_EMsgGCCStrike15_v2_ClientRequestJoinServerData, 9164
  field :k_EMsgGCCStrike15_v2_ClientRequestNewMission, 9165
  field :k_EMsgGCCStrike15_v2_GC2ClientTournamentInfo, 9167
  field :k_EMsgGC_GlobalGame_Subscribe, 9168
  field :k_EMsgGC_GlobalGame_Unsubscribe, 9169
  field :k_EMsgGC_GlobalGame_Play, 9170
  field :k_EMsgGCCStrike15_v2_AcknowledgePenalty, 9171
  field :k_EMsgGCCStrike15_v2_Client2GCRequestPrestigeCoin, 9172
  field :k_EMsgGCCStrike15_v2_GC2ClientGlobalStats, 9173
  field :k_EMsgGCCStrike15_v2_Client2GCStreamUnlock, 9174
  field :k_EMsgGCCStrike15_v2_FantasyRequestClientData, 9175
  field :k_EMsgGCCStrike15_v2_FantasyUpdateClientData, 9176
  field :k_EMsgGCCStrike15_v2_GCToClientSteamdatagramTicket, 9177
  field :k_EMsgGCCStrike15_v2_ClientToGCRequestTicket, 9178
  field :k_EMsgGCCStrike15_v2_ClientToGCRequestElevate, 9179
  field :k_EMsgGCCStrike15_v2_GlobalChat, 9180
  field :k_EMsgGCCStrike15_v2_GlobalChat_Subscribe, 9181
  field :k_EMsgGCCStrike15_v2_GlobalChat_Unsubscribe, 9182
  field :k_EMsgGCCStrike15_v2_ClientAuthKeyCode, 9183
  field :k_EMsgGCCStrike15_v2_GotvSyncPacket, 9184
  field :k_EMsgGCCStrike15_v2_ClientPlayerDecalSign, 9185
  field :k_EMsgGCCStrike15_v2_ClientLogonFatalError, 9187
  field :k_EMsgGCCStrike15_v2_ClientPollState, 9188
  field :k_EMsgGCCStrike15_v2_Party_Register, 9189
  field :k_EMsgGCCStrike15_v2_Party_Unregister, 9190
  field :k_EMsgGCCStrike15_v2_Party_Search, 9191
  field :k_EMsgGCCStrike15_v2_Party_Invite, 9192
  field :k_EMsgGCCStrike15_v2_Account_RequestCoPlays, 9193
  field :k_EMsgGCCStrike15_v2_ClientGCRankUpdate, 9194
  field :k_EMsgGCCStrike15_v2_ClientRequestOffers, 9195
  field :k_EMsgGCCStrike15_v2_ClientAccountBalance, 9196
  field :k_EMsgGCCStrike15_v2_ClientPartyJoinRelay, 9197
  field :k_EMsgGCCStrike15_v2_ClientPartyWarning, 9198
  field :k_EMsgGCCStrike15_v2_SetEventFavorite, 9200
  field :k_EMsgGCCStrike15_v2_GetEventFavorites_Request, 9201
  field :k_EMsgGCCStrike15_v2_ClientPerfReport, 9202
  field :k_EMsgGCCStrike15_v2_GetEventFavorites_Response, 9203
  field :k_EMsgGCCStrike15_v2_ClientRequestSouvenir, 9204
  field :k_EMsgGCCStrike15_v2_ClientReportValidation, 9205
  field :k_EMsgGCCStrike15_v2_GC2ClientRefuseSecureMode, 9206
  field :k_EMsgGCCStrike15_v2_GC2ClientRequestValidation, 9207
  field :k_EMsgGCCStrike15_v2_ClientRedeemMissionReward, 9209
  field :k_EMsgGCCStrike15_ClientDeepStats, 9210
  field :k_EMsgGCCStrike15_StartAgreementSessionInGame, 9211
  field :k_EMsgGCCStrike15_v2_GC2ClientInitSystem, 9212
  field :k_EMsgGCCStrike15_v2_GC2ClientInitSystem_Response, 9213
  field :k_EMsgGCCStrike15_v2_PrivateQueues, 9214
  field :k_EMsgGCCStrike15_v2_MatchListTournamentOperatorMgmt, 9215
  field :k_EMsgGCCStrike15_v2_SetPlayerLeaderboardSafeName, 9218
  field :k_EMsgGCCStrike15_v2_ClientRedeemFreeReward, 9219
  field :k_EMsgGCCStrike15_v2_ClientNetworkConfig, 9220
end

defmodule ECsgoSteamUserStat do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :k_ECsgoSteamUserStat_XpEarnedGames, 1
  field :k_ECsgoSteamUserStat_MatchWinsCompetitive, 2
  field :k_ECsgoSteamUserStat_SurvivedDangerZone, 3
end

defmodule EClientReportingVersion do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :k_EClientReportingVersion_OldVersion, 0
  field :k_EClientReportingVersion_BetaVersion, 1
  field :k_EClientReportingVersion_SupportsTrustedMode, 2
end

defmodule EInitSystemResult do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :k_EInitSystemResult_Invalid, 0
  field :k_EInitSystemResult_Success, 1
  field :k_EInitSystemResult_None, 2
  field :k_EInitSystemResult_NotFound, 3
  field :k_EInitSystemResult_Existing, 4
  field :k_EInitSystemResult_FailedOpen, 5
  field :k_EInitSystemResult_Mismatch, 6
  field :k_EInitSystemResult_FailedInit, 7
  field :k_EInitSystemResult_Max, 8
end

defmodule GameServerPing do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :ping, 2, optional: true, type: :int32
  field :ip, 3, optional: true, type: :uint32
  field :instances, 5, optional: true, type: :uint32
end

defmodule DataCenterPing do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :data_center_id, 1, optional: true, type: :fixed32
  field :ping, 2, optional: true, type: :sint32
end

defmodule DetailedSearchStatistic do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :game_type, 1, optional: true, type: :uint32
  field :search_time_avg, 2, optional: true, type: :uint32
  field :players_searching, 4, optional: true, type: :uint32
end

defmodule TournamentPlayer do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :account_id, 1, optional: true, type: :uint32
  field :player_nick, 2, optional: true, type: :string
  field :player_name, 3, optional: true, type: :string
  field :player_dob, 4, optional: true, type: :uint32
  field :player_flag, 5, optional: true, type: :string
  field :player_location, 6, optional: true, type: :string
  field :player_desc, 7, optional: true, type: :string
end

defmodule TournamentTeam do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :team_id, 1, optional: true, type: :int32
  field :team_tag, 2, optional: true, type: :string
  field :team_flag, 3, optional: true, type: :string
  field :team_name, 4, optional: true, type: :string
  field :players, 5, repeated: true, type: TournamentPlayer
end

defmodule TournamentEvent do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :event_id, 1, optional: true, type: :int32
  field :event_tag, 2, optional: true, type: :string
  field :event_name, 3, optional: true, type: :string
  field :event_time_start, 4, optional: true, type: :uint32
  field :event_time_end, 5, optional: true, type: :uint32
  field :event_public, 6, optional: true, type: :int32
  field :event_stage_id, 7, optional: true, type: :int32
  field :event_stage_name, 8, optional: true, type: :string
  field :active_section_id, 9, optional: true, type: :uint32
end

defmodule GlobalStatistics do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :players_online, 1, optional: true, type: :uint32
  field :servers_online, 2, optional: true, type: :uint32
  field :players_searching, 3, optional: true, type: :uint32
  field :servers_available, 4, optional: true, type: :uint32
  field :ongoing_matches, 5, optional: true, type: :uint32
  field :search_time_avg, 6, optional: true, type: :uint32
  field :search_statistics, 7, repeated: true, type: DetailedSearchStatistic
  field :main_post_url, 8, optional: true, type: :string
  field :required_appid_version, 9, optional: true, type: :uint32
  field :pricesheet_version, 10, optional: true, type: :uint32
  field :twitch_streams_version, 11, optional: true, type: :uint32
  field :active_tournament_eventid, 12, optional: true, type: :uint32
  field :active_survey_id, 13, optional: true, type: :uint32
  field :rtime32_cur, 14, optional: true, type: :uint32
  field :rtime32_event_start, 15, optional: true, type: :uint32
  field :required_appid_version2, 16, optional: true, type: :uint32
end

defmodule OperationalStatisticDescription do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :name, 1, optional: true, type: :string
  field :idkey, 2, optional: true, type: :uint32
end

defmodule OperationalStatisticElement do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :idkey, 1, optional: true, type: :uint32
  field :values, 2, repeated: true, type: :int32
end

defmodule OperationalStatisticsPacket do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :packetid, 1, optional: true, type: :int32
  field :mstimestamp, 2, optional: true, type: :int32
  field :values, 3, repeated: true, type: OperationalStatisticElement
end

defmodule OperationalVarValue do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :name, 1, optional: true, type: :string
  field :ivalue, 2, optional: true, type: :int32
  field :fvalue, 3, optional: true, type: :float
  field :svalue, 4, optional: true, type: :bytes
end

defmodule PlayerRankingInfo.PerMapRank do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :map_id, 1, optional: true, type: :uint32
  field :rank_id, 2, optional: true, type: :uint32
  field :wins, 3, optional: true, type: :uint32
end

defmodule PlayerRankingInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :account_id, 1, optional: true, type: :uint32
  field :rank_id, 2, optional: true, type: :uint32
  field :wins, 3, optional: true, type: :uint32
  field :rank_change, 4, optional: true, type: :float
  field :rank_type_id, 6, optional: true, type: :uint32
  field :tv_control, 7, optional: true, type: :uint32
  field :rank_window_stats, 8, optional: true, type: :uint64
  field :leaderboard_name, 9, optional: true, type: :string
  field :rank_if_win, 10, optional: true, type: :uint32
  field :rank_if_lose, 11, optional: true, type: :uint32
  field :rank_if_tie, 12, optional: true, type: :uint32
  field :per_map_rank, 13, repeated: true, type: PlayerRankingInfo.PerMapRank
  field :leaderboard_name_status, 14, optional: true, type: :uint32
end

defmodule PlayerCommendationInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :cmd_friendly, 1, optional: true, type: :uint32
  field :cmd_teaching, 2, optional: true, type: :uint32
  field :cmd_leader, 4, optional: true, type: :uint32
end

defmodule PlayerMedalsInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :display_items_defidx, 7, repeated: true, type: :uint32
  field :featured_display_item_defidx, 8, optional: true, type: :uint32
end

defmodule AccountActivity do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :activity, 1, optional: true, type: :uint32
  field :mode, 2, optional: true, type: :uint32
  field :map, 3, optional: true, type: :uint32
  field :matchid, 4, optional: true, type: :uint64
end

defmodule TournamentMatchSetup do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :event_id, 1, optional: true, type: :int32
  field :team_id_ct, 2, optional: true, type: :int32
  field :team_id_t, 3, optional: true, type: :int32
  field :event_stage_id, 4, optional: true, type: :int32
end

defmodule ServerHltvInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :tv_udp_port, 1, optional: true, type: :uint32
  field :tv_watch_key, 2, optional: true, type: :uint64
  field :tv_slots, 3, optional: true, type: :uint32
  field :tv_clients, 4, optional: true, type: :uint32
  field :tv_proxies, 5, optional: true, type: :uint32
  field :tv_time, 6, optional: true, type: :uint32
  field :game_type, 8, optional: true, type: :uint32
  field :game_mapgroup, 9, optional: true, type: :string
  field :game_map, 10, optional: true, type: :string
  field :tv_master_steamid, 11, optional: true, type: :uint64
  field :tv_local_slots, 12, optional: true, type: :uint32
  field :tv_local_clients, 13, optional: true, type: :uint32
  field :tv_local_proxies, 14, optional: true, type: :uint32
  field :tv_relay_slots, 15, optional: true, type: :uint32
  field :tv_relay_clients, 16, optional: true, type: :uint32
  field :tv_relay_proxies, 17, optional: true, type: :uint32
  field :tv_relay_address, 18, optional: true, type: :uint32
  field :tv_relay_port, 19, optional: true, type: :uint32
  field :tv_relay_steamid, 20, optional: true, type: :uint64
  field :flags, 21, optional: true, type: :uint32
end

defmodule IpAddressMask do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :a, 1, optional: true, type: :uint32
  field :b, 2, optional: true, type: :uint32
  field :c, 3, optional: true, type: :uint32
  field :d, 4, optional: true, type: :uint32
  field :bits, 5, optional: true, type: :uint32
  field :token, 6, optional: true, type: :uint32
end

defmodule CMsgCsgoSteamUserStatChange do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :ecsgosteamuserstat, 1, optional: true, type: :int32
  field :delta, 2, optional: true, type: :int32
  field :absolute, 3, optional: true, type: :bool
end

defmodule XpProgressData do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :xp_points, 1, optional: true, type: :uint32
  field :xp_category, 2, optional: true, type: :int32
end

defmodule MatchEndItemUpdates do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :item_id, 1, optional: true, type: :uint64
  field :item_attr_defidx, 2, optional: true, type: :uint32
  field :item_attr_delta_value, 3, optional: true, type: :uint32
end

defmodule ScoreLeaderboardData.Entry do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :tag, 1, optional: true, type: :uint32
  field :val, 2, optional: true, type: :uint32
end

defmodule ScoreLeaderboardData.AccountEntries do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :accountid, 1, optional: true, type: :uint32
  field :entries, 2, repeated: true, type: ScoreLeaderboardData.Entry
end

defmodule ScoreLeaderboardData do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :quest_id, 1, optional: true, type: :uint64
  field :score, 2, optional: true, type: :uint32
  field :accountentries, 3, repeated: true, type: ScoreLeaderboardData.AccountEntries
  field :matchentries, 5, repeated: true, type: ScoreLeaderboardData.Entry
  field :leaderboard_name, 6, optional: true, type: :string
end

defmodule PlayerQuestData.QuestItemData do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :quest_id, 1, optional: true, type: :uint64
  field :quest_normal_points_earned, 2, optional: true, type: :int32
  field :quest_bonus_points_earned, 3, optional: true, type: :int32
end

defmodule PlayerQuestData do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :quester_account_id, 1, optional: true, type: :uint32
  field :quest_item_data, 2, repeated: true, type: PlayerQuestData.QuestItemData
  field :xp_progress_data, 3, repeated: true, type: XpProgressData
  field :time_played, 4, optional: true, type: :uint32
  field :mm_game_mode, 5, optional: true, type: :uint32
  field :item_updates, 6, repeated: true, type: MatchEndItemUpdates
  field :operation_points_eligible, 7, optional: true, type: :bool
  field :userstatchanges, 8, repeated: true, type: CMsgCsgoSteamUserStatChange
end

defmodule DeepPlayerStatsEntry do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :accountid, 1, optional: true, type: :uint32
  field :match_id, 2, optional: true, type: :uint64
  field :mm_game_mode, 3, optional: true, type: :uint32
  field :mapid, 4, optional: true, type: :uint32
  field :b_starting_ct, 5, optional: true, type: :bool
  field :match_outcome, 6, optional: true, type: :uint32
  field :rounds_won, 7, optional: true, type: :uint32
  field :rounds_lost, 8, optional: true, type: :uint32
  field :stat_score, 9, optional: true, type: :uint32
  field :stat_deaths, 12, optional: true, type: :uint32
  field :stat_mvps, 13, optional: true, type: :uint32
  field :enemy_kills, 14, optional: true, type: :uint32
  field :enemy_headshots, 15, optional: true, type: :uint32
  field :enemy_2ks, 16, optional: true, type: :uint32
  field :enemy_3ks, 17, optional: true, type: :uint32
  field :enemy_4ks, 18, optional: true, type: :uint32
  field :total_damage, 19, optional: true, type: :uint32
  field :engagements_entry_count, 23, optional: true, type: :uint32
  field :engagements_entry_wins, 24, optional: true, type: :uint32
  field :engagements_1v1_count, 25, optional: true, type: :uint32
  field :engagements_1v1_wins, 26, optional: true, type: :uint32
  field :engagements_1v2_count, 27, optional: true, type: :uint32
  field :engagements_1v2_wins, 28, optional: true, type: :uint32
  field :utility_count, 29, optional: true, type: :uint32
  field :utility_success, 30, optional: true, type: :uint32
  field :flash_count, 32, optional: true, type: :uint32
  field :flash_success, 33, optional: true, type: :uint32
  field :mates, 34, repeated: true, type: :uint32
end

defmodule DeepPlayerMatchEvent do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :accountid, 1, optional: true, type: :uint32
  field :match_id, 2, optional: true, type: :uint64
  field :event_id, 3, optional: true, type: :uint32
  field :event_type, 4, optional: true, type: :uint32
  field :b_playing_ct, 5, optional: true, type: :bool
  field :user_pos_x, 6, optional: true, type: :int32
  field :user_pos_y, 7, optional: true, type: :int32
  field :user_pos_z, 12, optional: true, type: :int32
  field :user_defidx, 8, optional: true, type: :uint32
  field :other_pos_x, 9, optional: true, type: :int32
  field :other_pos_y, 10, optional: true, type: :int32
  field :other_pos_z, 13, optional: true, type: :int32
  field :other_defidx, 11, optional: true, type: :uint32
  field :event_data, 14, optional: true, type: :int32
end

defmodule CMsgGC_ServerQuestUpdateData do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :player_quest_data, 1, repeated: true, type: PlayerQuestData
  field :binary_data, 2, optional: true, type: :bytes
  field :mm_game_mode, 3, optional: true, type: :uint32
  field :missionlbsdata, 4, optional: true, type: ScoreLeaderboardData
end

defmodule CMsgGCCStrike15V2_MatchmakingGC2ServerConfirm do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :token, 1, optional: true, type: :uint32
  field :stamp, 2, optional: true, type: :uint32
  field :exchange, 3, optional: true, type: :uint64
  field :retry, 4, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_GC2ServerReservationUpdate do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :viewers_external_total, 1, optional: true, type: :uint32
  field :viewers_external_steam, 2, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_MatchmakingStart do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :account_ids, 1, repeated: true, type: :uint32
  field :game_type, 2, optional: true, type: :uint32
  field :ticket_data, 3, optional: true, type: :string
  field :client_version, 4, optional: true, type: :uint32
  field :tournament_match, 5, optional: true, type: TournamentMatchSetup
  field :prime_only, 6, optional: true, type: :bool
  field :tv_control, 7, optional: true, type: :uint32
  field :lobby_id, 8, optional: true, type: :uint64
end

defmodule CMsgGCCStrike15V2_MatchmakingStop do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :abandon, 1, optional: true, type: :int32
end

defmodule CMsgGCCStrike15V2_MatchmakingGC2ClientUpdate_Note do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :type, 1, optional: true, type: :int32
  field :region_id, 2, optional: true, type: :int32
  field :region_r, 3, optional: true, type: :float
  field :distance, 4, optional: true, type: :float
end

defmodule CMsgGCCStrike15V2_MatchmakingClient2ServerPing do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :gameserverpings, 1, repeated: true, type: GameServerPing
  field :offset_index, 2, optional: true, type: :int32
  field :final_batch, 3, optional: true, type: :int32
  field :data_center_pings, 4, repeated: true, type: DataCenterPing
  field :max_ping, 5, optional: true, type: :uint32
  field :test_token, 6, optional: true, type: :fixed32
  field :search_key, 7, optional: true, type: :bytes
  field :notes, 8, repeated: true, type: CMsgGCCStrike15V2_MatchmakingGC2ClientUpdate_Note
  field :debug_message, 9, optional: true, type: :string
end

defmodule CMsgGCCStrike15V2_MatchmakingGC2ClientUpdate do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :matchmaking, 1, optional: true, type: :int32
  field :waiting_account_id_sessions, 2, repeated: true, type: :uint32
  field :error, 3, optional: true, type: :string
  field :ongoingmatch_account_id_sessions, 6, repeated: true, type: :uint32
  field :global_stats, 7, optional: true, type: GlobalStatistics
  field :failping_account_id_sessions, 8, repeated: true, type: :uint32
  field :penalty_account_id_sessions, 9, repeated: true, type: :uint32
  field :failready_account_id_sessions, 10, repeated: true, type: :uint32
  field :vacbanned_account_id_sessions, 11, repeated: true, type: :uint32
  field :server_ipaddress_mask, 12, optional: true, type: IpAddressMask
  field :notes, 13, repeated: true, type: CMsgGCCStrike15V2_MatchmakingGC2ClientUpdate_Note
  field :penalty_account_id_sessions_green, 14, repeated: true, type: :uint32
  field :insufficientlevel_sessions, 15, repeated: true, type: :uint32
  field :vsncheck_account_id_sessions, 16, repeated: true, type: :uint32
  field :launcher_mismatch_sessions, 17, repeated: true, type: :uint32
  field :insecure_account_id_sessions, 18, repeated: true, type: :uint32
end

defmodule CDataGCCStrike15V2_TournamentMatchDraft.Entry do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :mapid, 1, optional: true, type: :int32
  field :team_id_ct, 2, optional: true, type: :int32
end

defmodule CDataGCCStrike15V2_TournamentMatchDraft do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :event_id, 1, optional: true, type: :int32
  field :event_stage_id, 2, optional: true, type: :int32
  field :team_id_0, 3, optional: true, type: :int32
  field :team_id_1, 4, optional: true, type: :int32
  field :maps_count, 5, optional: true, type: :int32
  field :maps_current, 6, optional: true, type: :int32
  field :team_id_start, 7, optional: true, type: :int32
  field :team_id_veto1, 8, optional: true, type: :int32
  field :team_id_pickn, 9, optional: true, type: :int32
  field :drafts, 10, repeated: true, type: CDataGCCStrike15V2_TournamentMatchDraft.Entry
  field :vote_mapid_0, 11, repeated: true, type: :int32
  field :vote_mapid_1, 12, repeated: true, type: :int32
  field :vote_mapid_2, 13, repeated: true, type: :int32
  field :vote_mapid_3, 14, repeated: true, type: :int32
  field :vote_mapid_4, 15, repeated: true, type: :int32
  field :vote_mapid_5, 16, repeated: true, type: :int32
  field :vote_starting_side, 17, repeated: true, type: :int32
  field :vote_phase, 18, optional: true, type: :int32
  field :vote_phase_start, 19, optional: true, type: :float
  field :vote_phase_length, 20, optional: true, type: :float
end

defmodule CPreMatchInfoData.TeamStats do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :match_info_idxtxt, 1, optional: true, type: :int32
  field :match_info_txt, 2, optional: true, type: :string
  field :match_info_teams, 3, repeated: true, type: :string
end

defmodule CPreMatchInfoData do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :predictions_pct, 1, optional: true, type: :int32
  field :draft, 4, optional: true, type: CDataGCCStrike15V2_TournamentMatchDraft
  field :stats, 5, repeated: true, type: CPreMatchInfoData.TeamStats
  field :wins, 6, repeated: true, type: :int32
end

defmodule CMsgGCCStrike15V2_MatchmakingGC2ServerReserve do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :account_ids, 1, repeated: true, type: :uint32
  field :game_type, 2, optional: true, type: :uint32
  field :match_id, 3, optional: true, type: :uint64
  field :server_version, 4, optional: true, type: :uint32
  field :flags, 18, optional: true, type: :uint32
  field :rankings, 5, repeated: true, type: PlayerRankingInfo
  field :encryption_key, 6, optional: true, type: :uint64
  field :encryption_key_pub, 7, optional: true, type: :uint64
  field :party_ids, 8, repeated: true, type: :uint32
  field :whitelist, 9, repeated: true, type: IpAddressMask
  field :tv_master_steamid, 10, optional: true, type: :uint64
  field :tournament_event, 11, optional: true, type: TournamentEvent
  field :tournament_teams, 12, repeated: true, type: TournamentTeam
  field :tournament_casters_account_ids, 13, repeated: true, type: :uint32
  field :tv_relay_steamid, 14, optional: true, type: :uint64
  field :pre_match_data, 15, optional: true, type: CPreMatchInfoData
  field :rtime32_event_start, 16, optional: true, type: :uint32
  field :tv_control, 17, optional: true, type: :uint32
  field :op_var_values, 19, repeated: true, type: OperationalVarValue
end

defmodule CMsgGCCStrike15V2_MatchmakingServerReservationResponse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :reservationid, 1, optional: true, type: :uint64
  field :reservation, 2, optional: true, type: CMsgGCCStrike15V2_MatchmakingGC2ServerReserve
  field :map, 3, optional: true, type: :string
  field :gc_reservation_sent, 4, optional: true, type: :uint64
  field :server_version, 5, optional: true, type: :uint32
  field :tv_info, 6, optional: true, type: ServerHltvInfo
  field :reward_player_accounts, 7, repeated: true, type: :uint32
  field :idle_player_accounts, 8, repeated: true, type: :uint32
  field :reward_item_attr_def_idx, 9, optional: true, type: :uint32
  field :reward_item_attr_value, 10, optional: true, type: :uint32
  field :reward_item_attr_reward_idx, 11, optional: true, type: :uint32
  field :reward_drop_list, 12, optional: true, type: :uint32
  field :tournament_tag, 13, optional: true, type: :string
  field :legacy_steamdatagram_port, 14, optional: true, type: :uint32
  field :steamdatagram_routing, 17, optional: true, type: :uint32
  field :test_token, 15, optional: true, type: :fixed32
  field :flags, 16, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_MatchmakingGC2ClientReserve do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :serverid, 1, optional: true, type: :uint64
  field :direct_udp_ip, 2, optional: true, type: :uint32
  field :direct_udp_port, 3, optional: true, type: :uint32
  field :reservationid, 4, optional: true, type: :uint64
  field :reservation, 5, optional: true, type: CMsgGCCStrike15V2_MatchmakingGC2ServerReserve
  field :map, 6, optional: true, type: :string
  field :server_address, 7, optional: true, type: :string
  field :gs_ping, 8, optional: true, type: DataCenterPing
  field :gs_location_id, 9, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_MatchmakingServerRoundStats.DropInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :account_mvp, 1, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_MatchmakingServerRoundStats do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :reservationid, 1, optional: true, type: :uint64
  field :reservation, 2, optional: true, type: CMsgGCCStrike15V2_MatchmakingGC2ServerReserve
  field :map, 3, optional: true, type: :string
  field :round, 4, optional: true, type: :int32
  field :kills, 5, repeated: true, type: :int32
  field :assists, 6, repeated: true, type: :int32
  field :deaths, 7, repeated: true, type: :int32
  field :scores, 8, repeated: true, type: :int32
  field :pings, 9, repeated: true, type: :int32
  field :round_result, 10, optional: true, type: :int32
  field :match_result, 11, optional: true, type: :int32
  field :team_scores, 12, repeated: true, type: :int32
  field :confirm, 13, optional: true, type: CMsgGCCStrike15V2_MatchmakingGC2ServerConfirm
  field :reservation_stage, 14, optional: true, type: :int32
  field :match_duration, 15, optional: true, type: :int32
  field :enemy_kills, 16, repeated: true, type: :int32
  field :enemy_headshots, 17, repeated: true, type: :int32
  field :enemy_3ks, 18, repeated: true, type: :int32
  field :enemy_4ks, 19, repeated: true, type: :int32
  field :enemy_5ks, 20, repeated: true, type: :int32
  field :mvps, 21, repeated: true, type: :int32
  field :spectators_count, 22, optional: true, type: :uint32
  field :spectators_count_tv, 23, optional: true, type: :uint32
  field :spectators_count_lnk, 24, optional: true, type: :uint32
  field :enemy_kills_agg, 25, repeated: true, type: :int32

  field :drop_info, 26,
    optional: true,
    type: CMsgGCCStrike15V2_MatchmakingServerRoundStats.DropInfo

  field :b_switched_teams, 27, optional: true, type: :bool
  field :enemy_2ks, 28, repeated: true, type: :int32
  field :player_spawned, 29, repeated: true, type: :int32
  field :team_spawn_count, 30, repeated: true, type: :int32
  field :max_rounds, 31, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_MatchmakingClient2GCHello do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CMsgGCCStrike15V2_MatchmakingGC2ClientHello do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :account_id, 1, optional: true, type: :uint32
  field :ongoingmatch, 2, optional: true, type: CMsgGCCStrike15V2_MatchmakingGC2ClientReserve
  field :global_stats, 3, optional: true, type: GlobalStatistics
  field :penalty_seconds, 4, optional: true, type: :uint32
  field :penalty_reason, 5, optional: true, type: :uint32
  field :vac_banned, 6, optional: true, type: :int32
  field :ranking, 7, optional: true, type: PlayerRankingInfo
  field :commendation, 8, optional: true, type: PlayerCommendationInfo
  field :medals, 9, optional: true, type: PlayerMedalsInfo
  field :my_current_event, 10, optional: true, type: TournamentEvent
  field :my_current_event_teams, 11, repeated: true, type: TournamentTeam
  field :my_current_team, 12, optional: true, type: TournamentTeam
  field :my_current_event_stages, 13, repeated: true, type: TournamentEvent
  field :survey_vote, 14, optional: true, type: :uint32
  field :activity, 15, optional: true, type: AccountActivity
  field :player_level, 17, optional: true, type: :int32
  field :player_cur_xp, 18, optional: true, type: :int32
  field :player_xp_bonus_flags, 19, optional: true, type: :int32
  field :rankings, 20, repeated: true, type: PlayerRankingInfo
end

defmodule CMsgGCCStrike15V2_AccountPrivacySettings.Setting do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :setting_type, 1, optional: true, type: :uint32
  field :setting_value, 2, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_AccountPrivacySettings do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :settings, 1, repeated: true, type: CMsgGCCStrike15V2_AccountPrivacySettings.Setting
end

defmodule CMsgGCCStrike15V2_MatchmakingGC2ClientAbandon do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :account_id, 1, optional: true, type: :uint32
  field :abandoned_match, 2, optional: true, type: CMsgGCCStrike15V2_MatchmakingGC2ClientReserve
  field :penalty_seconds, 3, optional: true, type: :uint32
  field :penalty_reason, 4, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_ClientGCRankUpdate do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :rankings, 1, repeated: true, type: PlayerRankingInfo
end

defmodule CMsgGCCStrike15V2_MatchmakingOperator2GCBlogUpdate do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :main_post_url, 1, optional: true, type: :string
end

defmodule CMsgGCCStrike15V2_ServerNotificationForUserPenalty do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :account_id, 1, optional: true, type: :uint32
  field :reason, 2, optional: true, type: :uint32
  field :seconds, 3, optional: true, type: :uint32
  field :communication_cooldown, 4, optional: true, type: :bool
end

defmodule CMsgGCCStrike15V2_ClientReportPlayer do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :account_id, 1, optional: true, type: :uint32
  field :rpt_aimbot, 2, optional: true, type: :uint32
  field :rpt_wallhack, 3, optional: true, type: :uint32
  field :rpt_speedhack, 4, optional: true, type: :uint32
  field :rpt_teamharm, 5, optional: true, type: :uint32
  field :rpt_textabuse, 6, optional: true, type: :uint32
  field :rpt_voiceabuse, 7, optional: true, type: :uint32
  field :match_id, 8, optional: true, type: :uint64
  field :report_from_demo, 9, optional: true, type: :bool
end

defmodule CMsgGCCStrike15V2_ClientCommendPlayer do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :account_id, 1, optional: true, type: :uint32
  field :match_id, 8, optional: true, type: :uint64
  field :commendation, 9, optional: true, type: PlayerCommendationInfo
  field :tokens, 10, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_ClientReportServer do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :rpt_poorperf, 1, optional: true, type: :uint32
  field :rpt_abusivemodels, 2, optional: true, type: :uint32
  field :rpt_badmotd, 3, optional: true, type: :uint32
  field :rpt_listingabuse, 4, optional: true, type: :uint32
  field :rpt_inventoryabuse, 5, optional: true, type: :uint32
  field :match_id, 8, optional: true, type: :uint64
end

defmodule CMsgGCCStrike15V2_ClientReportResponse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :confirmation_id, 1, optional: true, type: :uint64
  field :account_id, 2, optional: true, type: :uint32
  field :server_ip, 3, optional: true, type: :uint32
  field :response_type, 4, optional: true, type: :uint32
  field :response_result, 5, optional: true, type: :uint32
  field :tokens, 6, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_ClientRequestWatchInfoFriends do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :request_id, 1, optional: true, type: :uint32
  field :account_ids, 2, repeated: true, type: :uint32
  field :serverid, 3, optional: true, type: :uint64
  field :matchid, 4, optional: true, type: :uint64
  field :client_launcher, 5, optional: true, type: :uint32
  field :data_center_pings, 6, repeated: true, type: DataCenterPing
end

defmodule WatchableMatchInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :server_ip, 1, optional: true, type: :uint32
  field :tv_port, 2, optional: true, type: :uint32
  field :tv_spectators, 3, optional: true, type: :uint32
  field :tv_time, 4, optional: true, type: :uint32
  field :tv_watch_password, 5, optional: true, type: :bytes
  field :cl_decryptdata_key, 6, optional: true, type: :uint64
  field :cl_decryptdata_key_pub, 7, optional: true, type: :uint64
  field :game_type, 8, optional: true, type: :uint32
  field :game_mapgroup, 9, optional: true, type: :string
  field :game_map, 10, optional: true, type: :string
  field :server_id, 11, optional: true, type: :uint64
  field :match_id, 12, optional: true, type: :uint64
  field :reservation_id, 13, optional: true, type: :uint64
end

defmodule CMsgGCCStrike15V2_ClientRequestJoinFriendData do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :version, 1, optional: true, type: :uint32
  field :account_id, 2, optional: true, type: :uint32
  field :join_token, 3, optional: true, type: :uint32
  field :join_ipp, 4, optional: true, type: :uint32
  field :res, 5, optional: true, type: CMsgGCCStrike15V2_MatchmakingGC2ClientReserve
  field :errormsg, 6, optional: true, type: :string
end

defmodule CMsgGCCStrike15V2_ClientRequestJoinServerData do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :version, 1, optional: true, type: :uint32
  field :account_id, 2, optional: true, type: :uint32
  field :serverid, 3, optional: true, type: :uint64
  field :server_ip, 4, optional: true, type: :uint32
  field :server_port, 5, optional: true, type: :uint32
  field :res, 6, optional: true, type: CMsgGCCStrike15V2_MatchmakingGC2ClientReserve
  field :errormsg, 7, optional: true, type: :string
end

defmodule CMsgGCCstrike15V2_ClientRequestNewMission do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :mission_id, 2, optional: true, type: :uint32
  field :campaign_id, 3, optional: true, type: :uint32
end

defmodule CMsgGCCstrike15V2_ClientRedeemMissionReward do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :campaign_id, 1, optional: true, type: :uint32
  field :redeem_id, 2, optional: true, type: :uint32
  field :redeemable_balance, 3, optional: true, type: :uint32
  field :expected_cost, 4, optional: true, type: :uint32
end

defmodule CMsgGCCstrike15V2_ClientRedeemFreeReward do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :generation_time, 1, optional: true, type: :uint32
  field :redeemable_balance, 2, optional: true, type: :uint32
  field :items, 3, repeated: true, type: :uint64
end

defmodule CMsgGCCstrike15V2_GC2ServerNotifyXPRewarded do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :xp_progress_data, 1, repeated: true, type: XpProgressData
  field :account_id, 2, optional: true, type: :uint32
  field :current_xp, 3, optional: true, type: :uint32
  field :current_level, 4, optional: true, type: :uint32
  field :upgraded_defidx, 5, optional: true, type: :uint32
  field :operation_points_awarded, 6, optional: true, type: :uint32
  field :free_rewards, 7, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_ClientNetworkConfig do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :data, 1, optional: true, type: :bytes
end

defmodule CMsgGCCStrike15_ClientDeepStats.DeepStatsRange do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :begin, 1, optional: true, type: :uint32
  field :end, 2, optional: true, type: :uint32
  field :frozen, 3, optional: true, type: :bool
end

defmodule CMsgGCCStrike15_ClientDeepStats.DeepStatsMatch do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :player, 1, optional: true, type: DeepPlayerStatsEntry
  field :events, 2, repeated: true, type: DeepPlayerMatchEvent
end

defmodule CMsgGCCStrike15_ClientDeepStats do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :account_id, 1, optional: true, type: :uint32
  field :range, 2, optional: true, type: CMsgGCCStrike15_ClientDeepStats.DeepStatsRange
  field :matches, 3, repeated: true, type: CMsgGCCStrike15_ClientDeepStats.DeepStatsMatch
end

defmodule CMsgGCCStrike15V2_WatchInfoUsers do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :request_id, 1, optional: true, type: :uint32
  field :account_ids, 2, repeated: true, type: :uint32
  field :watchable_match_infos, 3, repeated: true, type: WatchableMatchInfo
  field :extended_timeout, 5, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_ClientRequestPlayersProfile do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :request_id__deprecated, 1, optional: true, type: :uint32
  field :account_ids__deprecated, 2, repeated: true, type: :uint32
  field :account_id, 3, optional: true, type: :uint32
  field :request_level, 4, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_PlayersProfile do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :request_id, 1, optional: true, type: :uint32
  field :account_profiles, 2, repeated: true, type: CMsgGCCStrike15V2_MatchmakingGC2ClientHello
end

defmodule CMsgGCCStrike15V2_PlayerOverwatchCaseUpdate do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :caseid, 1, optional: true, type: :uint64
  field :suspectid, 3, optional: true, type: :uint32
  field :fractionid, 4, optional: true, type: :uint32
  field :rpt_aimbot, 5, optional: true, type: :uint32
  field :rpt_wallhack, 6, optional: true, type: :uint32
  field :rpt_speedhack, 7, optional: true, type: :uint32
  field :rpt_teamharm, 8, optional: true, type: :uint32
  field :reason, 9, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_PlayerOverwatchCaseAssignment do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :caseid, 1, optional: true, type: :uint64
  field :caseurl, 2, optional: true, type: :string
  field :verdict, 3, optional: true, type: :uint32
  field :timestamp, 4, optional: true, type: :uint32
  field :throttleseconds, 5, optional: true, type: :uint32
  field :suspectid, 6, optional: true, type: :uint32
  field :fractionid, 7, optional: true, type: :uint32
  field :numrounds, 8, optional: true, type: :uint32
  field :fractionrounds, 9, optional: true, type: :uint32
  field :streakconvictions, 10, optional: true, type: :int32
  field :reason, 11, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_PlayerOverwatchCaseStatus do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :caseid, 1, optional: true, type: :uint64
  field :statusid, 2, optional: true, type: :uint32
end

defmodule CClientHeaderOverwatchEvidence do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :accountid, 1, optional: true, type: :uint32
  field :caseid, 2, optional: true, type: :uint64
end

defmodule CMsgGCCStrike15V2_GC2ClientTextMsg do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :id, 1, optional: true, type: :uint32
  field :type, 2, optional: true, type: :uint32
  field :payload, 3, optional: true, type: :bytes
end

defmodule CMsgGCCStrike15V2_Client2GCTextMsg do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :id, 1, optional: true, type: :uint32
  field :args, 2, repeated: true, type: :bytes
end

defmodule CMsgGCCStrike15V2_MatchEndRunRewardDrops do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :serverinfo, 3,
    optional: true,
    type: CMsgGCCStrike15V2_MatchmakingServerReservationResponse

  field :match_end_quest_data, 4, optional: true, type: CMsgGC_ServerQuestUpdateData
end

defmodule CEconItemPreviewDataBlock.Sticker do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :slot, 1, optional: true, type: :uint32
  field :sticker_id, 2, optional: true, type: :uint32
  field :wear, 3, optional: true, type: :float
  field :scale, 4, optional: true, type: :float
  field :rotation, 5, optional: true, type: :float
  field :tint_id, 6, optional: true, type: :uint32
end

defmodule CEconItemPreviewDataBlock do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :accountid, 1, optional: true, type: :uint32
  field :itemid, 2, optional: true, type: :uint64
  field :defindex, 3, optional: true, type: :uint32
  field :paintindex, 4, optional: true, type: :uint32
  field :rarity, 5, optional: true, type: :uint32
  field :quality, 6, optional: true, type: :uint32
  field :paintwear, 7, optional: true, type: :uint32
  field :paintseed, 8, optional: true, type: :uint32
  field :killeaterscoretype, 9, optional: true, type: :uint32
  field :killeatervalue, 10, optional: true, type: :uint32
  field :customname, 11, optional: true, type: :string
  field :stickers, 12, repeated: true, type: CEconItemPreviewDataBlock.Sticker
  field :inventory, 13, optional: true, type: :uint32
  field :origin, 14, optional: true, type: :uint32
  field :questid, 15, optional: true, type: :uint32
  field :dropreason, 16, optional: true, type: :uint32
  field :musicindex, 17, optional: true, type: :uint32
  field :entindex, 18, optional: true, type: :int32
end

defmodule CMsgGCCStrike15V2_MatchEndRewardDropsNotification do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :iteminfo, 6, optional: true, type: CEconItemPreviewDataBlock
end

defmodule CMsgItemAcknowledged do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :iteminfo, 1, optional: true, type: CEconItemPreviewDataBlock
end

defmodule CMsgGCCStrike15V2_Client2GCEconPreviewDataBlockRequest do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :param_s, 1, optional: true, type: :uint64
  field :param_a, 2, optional: true, type: :uint64
  field :param_d, 3, optional: true, type: :uint64
  field :param_m, 4, optional: true, type: :uint64
end

defmodule CMsgGCCStrike15V2_Client2GCEconPreviewDataBlockResponse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :iteminfo, 1, optional: true, type: CEconItemPreviewDataBlock
end

defmodule CMsgGCCStrike15V2_MatchListRequestCurrentLiveGames do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CMsgGCCStrike15V2_MatchListRequestLiveGameForUser do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :accountid, 1, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_MatchListRequestRecentUserGames do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :accountid, 1, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_MatchListRequestTournamentGames do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :eventid, 1, optional: true, type: :int32
end

defmodule CMsgGCCStrike15V2_MatchListRequestFullGameInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :matchid, 1, optional: true, type: :uint64
  field :outcomeid, 2, optional: true, type: :uint64
  field :token, 3, optional: true, type: :uint32
end

defmodule CDataGCCStrike15V2_MatchInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :matchid, 1, optional: true, type: :uint64
  field :matchtime, 2, optional: true, type: :uint32
  field :watchablematchinfo, 3, optional: true, type: WatchableMatchInfo
  field :roundstats_legacy, 4, optional: true, type: CMsgGCCStrike15V2_MatchmakingServerRoundStats
  field :roundstatsall, 5, repeated: true, type: CMsgGCCStrike15V2_MatchmakingServerRoundStats
end

defmodule CDataGCCStrike15V2_TournamentGroupTeam do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :team_id, 1, optional: true, type: :int32
  field :score, 2, optional: true, type: :int32
  field :correctpick, 3, optional: true, type: :bool
end

defmodule CDataGCCStrike15V2_TournamentGroup.Picks do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :pickids, 1, repeated: true, type: :int32
end

defmodule CDataGCCStrike15V2_TournamentGroup do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :groupid, 1, optional: true, type: :uint32
  field :name, 2, optional: true, type: :string
  field :desc, 3, optional: true, type: :string
  field :picks__deprecated, 4, optional: true, type: :uint32
  field :teams, 5, repeated: true, type: CDataGCCStrike15V2_TournamentGroupTeam
  field :stage_ids, 6, repeated: true, type: :int32
  field :picklockuntiltime, 7, optional: true, type: :uint32
  field :pickableteams, 8, optional: true, type: :uint32
  field :points_per_pick, 9, optional: true, type: :uint32
  field :picks, 10, repeated: true, type: CDataGCCStrike15V2_TournamentGroup.Picks
end

defmodule CDataGCCStrike15V2_TournamentSection do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :sectionid, 1, optional: true, type: :uint32
  field :name, 2, optional: true, type: :string
  field :desc, 3, optional: true, type: :string
  field :groups, 4, repeated: true, type: CDataGCCStrike15V2_TournamentGroup
end

defmodule CDataGCCStrike15V2_TournamentInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :sections, 1, repeated: true, type: CDataGCCStrike15V2_TournamentSection
  field :tournament_event, 2, optional: true, type: TournamentEvent
  field :tournament_teams, 3, repeated: true, type: TournamentTeam
end

defmodule CMsgGCCStrike15V2_MatchList do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :msgrequestid, 1, optional: true, type: :uint32
  field :accountid, 2, optional: true, type: :uint32
  field :servertime, 3, optional: true, type: :uint32
  field :matches, 4, repeated: true, type: CDataGCCStrike15V2_MatchInfo
  field :streams, 5, repeated: true, type: TournamentTeam
  field :tournamentinfo, 6, optional: true, type: CDataGCCStrike15V2_TournamentInfo
end

defmodule CMsgGCCStrike15V2_MatchListTournamentOperatorMgmt do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :eventid, 1, optional: true, type: :int32
  field :matches, 2, repeated: true, type: CDataGCCStrike15V2_MatchInfo
  field :accountid, 3, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_Predictions.GroupMatchTeamPick do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :sectionid, 1, optional: true, type: :int32
  field :groupid, 2, optional: true, type: :int32
  field :index, 3, optional: true, type: :int32
  field :teamid, 4, optional: true, type: :int32
  field :itemid, 5, optional: true, type: :uint64
end

defmodule CMsgGCCStrike15V2_Predictions do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :event_id, 1, optional: true, type: :uint32

  field :group_match_team_picks, 2,
    repeated: true,
    type: CMsgGCCStrike15V2_Predictions.GroupMatchTeamPick
end

defmodule CMsgGCCStrike15V2_Fantasy.FantasySlot do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :type, 1, optional: true, type: :int32
  field :pick, 2, optional: true, type: :int32
  field :itemid, 3, optional: true, type: :uint64
end

defmodule CMsgGCCStrike15V2_Fantasy.FantasyTeam do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :sectionid, 1, optional: true, type: :int32
  field :slots, 2, repeated: true, type: CMsgGCCStrike15V2_Fantasy.FantasySlot
end

defmodule CMsgGCCStrike15V2_Fantasy do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :event_id, 1, optional: true, type: :uint32
  field :teams, 2, repeated: true, type: CMsgGCCStrike15V2_Fantasy.FantasyTeam
end

defmodule CMsgLegacySource1ClientWelcome.Location do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :latitude, 1, optional: true, type: :float
  field :longitude, 2, optional: true, type: :float
  field :country, 3, optional: true, type: :string
end

defmodule CMsgLegacySource1ClientWelcome do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :version, 1, optional: true, type: :uint32
  field :game_data, 2, optional: true, type: :bytes
  field :outofdate_subscribed_caches, 3, repeated: true, type: CMsgSOCacheSubscribed
  field :uptodate_subscribed_caches, 4, repeated: true, type: CMsgSOCacheSubscriptionCheck
  field :location, 5, optional: true, type: CMsgLegacySource1ClientWelcome.Location
  field :game_data2, 6, optional: true, type: :bytes
  field :rtime32_gc_welcome_timestamp, 7, optional: true, type: :uint32
  field :currency, 8, optional: true, type: :uint32
  field :balance, 9, optional: true, type: :uint32
  field :balance_url, 10, optional: true, type: :string
  field :txn_country_code, 11, optional: true, type: :string
end

defmodule CMsgCStrike15Welcome do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :store_item_hash, 5, optional: true, type: :uint32
  field :timeplayedconsecutively, 6, optional: true, type: :uint32
  field :time_first_played, 10, optional: true, type: :uint32
  field :last_time_played, 12, optional: true, type: :uint32
  field :last_ip_address, 13, optional: true, type: :uint32
  field :gscookieid, 18, optional: true, type: :uint64
  field :uniqueid, 19, optional: true, type: :uint64
end

defmodule CMsgGCCStrike15V2_ClientVarValueNotificationInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :value_name, 1, optional: true, type: :string
  field :value_int, 2, optional: true, type: :int32
  field :server_addr, 3, optional: true, type: :uint32
  field :server_port, 4, optional: true, type: :uint32
  field :choked_blocks, 5, repeated: true, type: :string
end

defmodule CMsgGCCStrike15V2_ServerVarValueNotificationInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :accountid, 1, optional: true, type: :uint32
  field :viewangles, 2, repeated: true, type: :uint32
  field :type, 3, optional: true, type: :uint32
  field :userdata, 4, repeated: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_GiftsLeaderboardRequest do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CMsgGCCStrike15V2_GiftsLeaderboardResponse.GiftLeaderboardEntry do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :accountid, 1, optional: true, type: :uint32
  field :gifts, 2, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_GiftsLeaderboardResponse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :servertime, 1, optional: true, type: :uint32
  field :time_period_seconds, 2, optional: true, type: :uint32
  field :total_gifts_given, 3, optional: true, type: :uint32
  field :total_givers, 4, optional: true, type: :uint32

  field :entries, 5,
    repeated: true,
    type: CMsgGCCStrike15V2_GiftsLeaderboardResponse.GiftLeaderboardEntry
end

defmodule CMsgGCCStrike15V2_ClientSubmitSurveyVote do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :survey_id, 1, optional: true, type: :uint32
  field :vote, 2, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_Server2GCClientValidate do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :accountid, 1, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_GC2ClientTournamentInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :eventid, 1, optional: true, type: :uint32
  field :stageid, 2, optional: true, type: :uint32
  field :game_type, 3, optional: true, type: :uint32
  field :teamids, 4, repeated: true, type: :uint32
end

defmodule CSOEconCoupon do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :entryid, 1, optional: true, type: :uint32, deprecated: false
  field :defidx, 2, optional: true, type: :uint32
  field :expiration_date, 3, optional: true, type: :fixed32
end

defmodule CSOAccountItemPersonalStore do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :generation_time, 1, optional: true, type: :uint32, deprecated: false
  field :redeemable_balance, 2, optional: true, type: :uint32
  field :items, 3, repeated: true, type: :uint64
end

defmodule CSOQuestProgress do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :questid, 1, optional: true, type: :uint32, deprecated: false
  field :points_remaining, 2, optional: true, type: :uint32
  field :bonus_points, 3, optional: true, type: :uint32
end

defmodule CSOAccountSeasonalOperation do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :season_value, 1, optional: true, type: :uint32, deprecated: false
  field :tier_unlocked, 2, optional: true, type: :uint32
  field :premium_tiers, 3, optional: true, type: :uint32
  field :mission_id, 4, optional: true, type: :uint32
  field :missions_completed, 5, optional: true, type: :uint32
  field :redeemable_balance, 6, optional: true, type: :uint32
  field :season_pass_time, 7, optional: true, type: :uint32
end

defmodule CSOAccountRecurringSubscription do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :time_next_cycle, 1, optional: true, type: :uint32
  field :time_initiated, 2, optional: true, type: :uint32
end

defmodule CSOPersonaDataPublic do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :player_level, 1, optional: true, type: :int32
  field :commendation, 2, optional: true, type: PlayerCommendationInfo
  field :elevated_state, 3, optional: true, type: :bool
end

defmodule CMsgGC_GlobalGame_Subscribe do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :ticket, 1, optional: true, type: :uint64
end

defmodule CMsgGC_GlobalGame_Unsubscribe do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :timeleft, 1, optional: true, type: :int32
end

defmodule CMsgGC_GlobalGame_Play do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :ticket, 1, optional: true, type: :uint64
  field :gametimems, 2, optional: true, type: :uint32
  field :msperpoint, 3, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_AcknowledgePenalty do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :acknowledged, 1, optional: true, type: :int32
end

defmodule CMsgGCCStrike15V2_Client2GCRequestPrestigeCoin do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :defindex, 1, optional: true, type: :uint32
  field :upgradeid, 2, optional: true, type: :uint64
  field :hours, 3, optional: true, type: :uint32
  field :prestigetime, 4, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_Client2GCStreamUnlock do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :ticket, 1, optional: true, type: :uint64
  field :os, 2, optional: true, type: :int32
end

defmodule CMsgGCCStrike15V2_ClientToGCRequestElevate do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :stage, 1, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_ClientToGCChat do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :match_id, 1, optional: true, type: :uint64
  field :text, 2, optional: true, type: :string
end

defmodule CMsgGCCStrike15V2_GCToClientChat do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :account_id, 1, optional: true, type: :uint32
  field :text, 2, optional: true, type: :string
end

defmodule CMsgGCCStrike15V2_ClientAuthKeyCode do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :eventid, 1, optional: true, type: :uint32
  field :code, 2, optional: true, type: :string
end

defmodule CMsgGCCStrike15_GotvSyncPacket do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :data, 1, optional: true, type: CEngineGotvSyncPacket
end

defmodule PlayerDecalDigitalSignature do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :signature, 1, optional: true, type: :bytes
  field :accountid, 2, optional: true, type: :uint32
  field :rtime, 3, optional: true, type: :uint32
  field :endpos, 4, repeated: true, type: :float
  field :startpos, 5, repeated: true, type: :float
  field :left, 6, repeated: true, type: :float
  field :tx_defidx, 7, optional: true, type: :uint32
  field :entindex, 8, optional: true, type: :int32
  field :hitbox, 9, optional: true, type: :uint32
  field :creationtime, 10, optional: true, type: :float
  field :equipslot, 11, optional: true, type: :uint32
  field :trace_id, 12, optional: true, type: :uint32
  field :normal, 13, repeated: true, type: :float
  field :tint_id, 14, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_ClientPlayerDecalSign do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :data, 1, optional: true, type: PlayerDecalDigitalSignature
  field :itemid, 2, optional: true, type: :uint64
end

defmodule CMsgGCCStrike15V2_ClientLogonFatalError do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :errorcode, 1, optional: true, type: :uint32
  field :message, 2, optional: true, type: :string
  field :country, 3, optional: true, type: :string
end

defmodule CMsgGCCStrike15V2_ClientPollState do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :pollid, 1, optional: true, type: :uint32
  field :names, 2, repeated: true, type: :string
  field :values, 3, repeated: true, type: :int32
end

defmodule CMsgGCCStrike15V2_Party_Register do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :id, 1, optional: true, type: :uint32
  field :ver, 2, optional: true, type: :uint32
  field :apr, 3, optional: true, type: :uint32
  field :ark, 4, optional: true, type: :uint32
  field :nby, 5, optional: true, type: :uint32
  field :grp, 6, optional: true, type: :uint32
  field :slots, 7, optional: true, type: :uint32
  field :launcher, 8, optional: true, type: :uint32
  field :game_type, 9, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_Party_Search do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :ver, 1, optional: true, type: :uint32
  field :apr, 2, optional: true, type: :uint32
  field :ark, 3, optional: true, type: :uint32
  field :grps, 4, repeated: true, type: :uint32
  field :launcher, 5, optional: true, type: :uint32
  field :game_type, 6, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_Party_SearchResults.Entry do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :id, 1, optional: true, type: :uint32
  field :grp, 2, optional: true, type: :uint32
  field :game_type, 3, optional: true, type: :uint32
  field :apr, 4, optional: true, type: :uint32
  field :ark, 5, optional: true, type: :uint32
  field :loc, 6, optional: true, type: :uint32
  field :accountid, 7, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_Party_SearchResults do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :entries, 1, repeated: true, type: CMsgGCCStrike15V2_Party_SearchResults.Entry
end

defmodule CMsgGCCStrike15V2_Party_Invite do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :accountid, 1, optional: true, type: :uint32
  field :lobbyid, 2, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_Account_RequestCoPlays.Player do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :accountid, 1, optional: true, type: :uint32
  field :rtcoplay, 2, optional: true, type: :uint32
  field :online, 3, optional: true, type: :bool
end

defmodule CMsgGCCStrike15V2_Account_RequestCoPlays do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :players, 1, repeated: true, type: CMsgGCCStrike15V2_Account_RequestCoPlays.Player
  field :servertime, 2, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_ClientToGCRequestTicket do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :authorized_steam_id, 1, optional: true, type: :fixed64
  field :authorized_public_ip, 2, optional: true, type: :fixed32
  field :gameserver_steam_id, 3, optional: true, type: :fixed64
  field :gameserver_sdr_routing, 5, optional: true, type: :string
end

defmodule CMsgGCToClientSteamDatagramTicket do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :serialized_ticket, 16, optional: true, type: :bytes
end

defmodule CMsgGCCStrike15V2_ClientRequestOffers do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CMsgGCCStrike15V2_ClientRequestSouvenir do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :itemid, 1, optional: true, type: :uint64
  field :matchid, 2, optional: true, type: :uint64
  field :eventid, 3, optional: true, type: :int32
end

defmodule CMsgGCCStrike15V2_ClientAccountBalance do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :amount, 1, optional: true, type: :uint64
  field :url, 2, optional: true, type: :string
end

defmodule CMsgGCCStrike15V2_ClientPartyJoinRelay do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :accountid, 1, optional: true, type: :uint32
  field :lobbyid, 2, optional: true, type: :uint64
end

defmodule CMsgGCCStrike15V2_ClientPartyWarning.Entry do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :accountid, 1, optional: true, type: :uint32
  field :warntype, 2, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_ClientPartyWarning do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :entries, 1, repeated: true, type: CMsgGCCStrike15V2_ClientPartyWarning.Entry
end

defmodule CMsgGCCStrike15V2_SetEventFavorite do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :eventid, 1, optional: true, type: :uint64
  field :is_favorite, 2, optional: true, type: :bool
end

defmodule CMsgGCCStrike15V2_GetEventFavorites_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :all_events, 1, optional: true, type: :bool
end

defmodule CMsgGCCStrike15V2_GetEventFavorites_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :all_events, 1, optional: true, type: :bool
  field :json_favorites, 2, optional: true, type: :string
  field :json_featured, 3, optional: true, type: :string
end

defmodule CMsgGCCStrike15V2_ClientPerfReport.Entry do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :perfcounter, 1, optional: true, type: :uint32
  field :length, 2, optional: true, type: :uint32
  field :reference, 3, optional: true, type: :bytes
  field :actual, 4, optional: true, type: :bytes
  field :sourceid, 5, optional: true, type: :uint32
  field :status, 6, optional: true, type: :uint32
end

defmodule CMsgGCCStrike15V2_ClientPerfReport do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :entries, 1, repeated: true, type: CMsgGCCStrike15V2_ClientPerfReport.Entry
end

defmodule CVDiagnostic do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :id, 1, optional: true, type: :uint32
  field :extended, 2, optional: true, type: :uint32
  field :value, 3, optional: true, type: :uint64
  field :string_value, 4, optional: true, type: :string
end

defmodule CMsgGCCStrike15V2_ClientReportValidation do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :file_report, 1, optional: true, type: :string
  field :command_line, 2, optional: true, type: :string
  field :total_files, 3, optional: true, type: :uint32
  field :internal_error, 4, optional: true, type: :uint32
  field :trust_time, 5, optional: true, type: :uint32
  field :count_pending, 6, optional: true, type: :uint32
  field :count_completed, 7, optional: true, type: :uint32
  field :process_id, 8, optional: true, type: :uint32
  field :osversion, 9, optional: true, type: :int32
  field :clientreportversion, 10, optional: true, type: :uint32
  field :status_id, 11, optional: true, type: :uint32
  field :diagnostic1, 12, optional: true, type: :uint32
  field :diagnostic2, 13, optional: true, type: :uint64
  field :diagnostic3, 14, optional: true, type: :uint64
  field :last_launch_data, 15, optional: true, type: :string
  field :report_count, 16, optional: true, type: :uint32
  field :client_time, 17, optional: true, type: :uint64
  field :diagnostic4, 18, optional: true, type: :uint64
  field :diagnostic5, 19, optional: true, type: :uint64
  field :diagnostics, 20, repeated: true, type: CVDiagnostic
end

defmodule CMsgGCCStrike15V2_GC2ClientRefuseSecureMode do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :file_report, 1, optional: true, type: :string
  field :offer_insecure_mode, 2, optional: true, type: :bool
  field :offer_secure_mode, 3, optional: true, type: :bool
  field :show_unsigned_ui, 4, optional: true, type: :bool
  field :kick_user, 5, optional: true, type: :bool
  field :show_trusted_ui, 6, optional: true, type: :bool
  field :show_warning_not_trusted, 7, optional: true, type: :bool
  field :show_warning_not_trusted_2, 8, optional: true, type: :bool
  field :files_prevented_trusted, 9, optional: true, type: :string
end

defmodule CMsgGCCStrike15V2_GC2ClientRequestValidation do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :full_report, 1, optional: true, type: :bool
  field :module, 2, optional: true, type: :string
end

defmodule CMsgGCCStrike15V2_GC2ClientInitSystem do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :load, 1, optional: true, type: :bool
  field :name, 2, optional: true, type: :string
  field :outputname, 3, optional: true, type: :string
  field :key_data, 4, optional: true, type: :bytes
  field :sha_hash, 5, optional: true, type: :bytes
  field :cookie, 6, optional: true, type: :int32
  field :manifest, 7, optional: true, type: :string
  field :system_package, 8, optional: true, type: :bytes
  field :load_system, 9, optional: true, type: :bool
end

defmodule CMsgGCCStrike15V2_GC2ClientInitSystem_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :success, 1, optional: true, type: :bool
  field :diagnostic, 2, optional: true, type: :string
  field :sha_hash, 3, optional: true, type: :bytes
  field :response, 4, optional: true, type: :int32
  field :error_code1, 5, optional: true, type: :int32
  field :error_code2, 6, optional: true, type: :int32
  field :handle, 7, optional: true, type: :int64

  field :einit_result, 8,
    optional: true,
    type: EInitSystemResult,
    default: :k_EInitSystemResult_Invalid,
    enum: true

  field :aux_system1, 9, optional: true, type: :int32
  field :aux_system2, 10, optional: true, type: :int32
end

defmodule CMsgGCCStrike15V2_SetPlayerLeaderboardSafeName do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :leaderboard_safe_name, 1, optional: true, type: :string
end