defmodule GCProtoBufMsgSrc do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :GCProtoBufMsgSrc_Unspecified, 0
  field :GCProtoBufMsgSrc_FromSystem, 1
  field :GCProtoBufMsgSrc_FromSteamID, 2
  field :GCProtoBufMsgSrc_FromGC, 3
  field :GCProtoBufMsgSrc_ReplySystem, 4
end

defmodule CMsgGCRoutingInfo.RoutingMethod do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :RANDOM, 0
  field :DISCARD, 1
  field :CLIENT_STEAMID, 2
  field :PROTOBUF_FIELD_UINT64, 3
  field :WEBAPI_PARAM_UINT64, 4
end

defmodule CMsgGCMsgSetOptions.Option do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :NOTIFY_USER_SESSIONS, 0
  field :NOTIFY_SERVER_SESSIONS, 1
  field :NOTIFY_ACHIEVEMENTS, 2
  field :NOTIFY_VAC_ACTION, 3
end

defmodule CMsgDPPartnerMicroTxnsResponse.EErrorCode do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :k_MsgValid, 0
  field :k_MsgInvalidAppID, 1
  field :k_MsgInvalidPartnerInfo, 2
  field :k_MsgNoTransactions, 3
  field :k_MsgSQLFailure, 4
  field :k_MsgPartnerInfoDiscrepancy, 5
  field :k_MsgTransactionInsertFailed, 7
  field :k_MsgAlreadyRunning, 8
  field :k_MsgInvalidTransactionData, 9
end

defmodule CMsgProtoBufHeader do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :client_steam_id, 1, optional: true, type: :fixed64
  field :client_session_id, 2, optional: true, type: :int32
  field :source_app_id, 3, optional: true, type: :uint32
  field :job_id_source, 10, optional: true, type: :fixed64, default: 18_446_744_073_709_551_615
  field :job_id_target, 11, optional: true, type: :fixed64, default: 18_446_744_073_709_551_615
  field :target_job_name, 12, optional: true, type: :string
  field :eresult, 13, optional: true, type: :int32, default: 2
  field :error_message, 14, optional: true, type: :string
  field :ip, 15, optional: true, type: :uint32

  field :gc_msg_src, 200,
    optional: true,
    type: GCProtoBufMsgSrc,
    default: :GCProtoBufMsgSrc_Unspecified,
    enum: true

  field :gc_dir_index_source, 201, optional: true, type: :uint32
end

defmodule CMsgWebAPIKey do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :status, 1, optional: true, type: :uint32, default: 255
  field :account_id, 2, optional: true, type: :uint32, default: 0
  field :publisher_group_id, 3, optional: true, type: :uint32, default: 0
  field :key_id, 4, optional: true, type: :uint32
  field :domain, 5, optional: true, type: :string
end

defmodule CMsgHttpRequest.RequestHeader do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :name, 1, optional: true, type: :string
  field :value, 2, optional: true, type: :string
end

defmodule CMsgHttpRequest.QueryParam do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :name, 1, optional: true, type: :string
  field :value, 2, optional: true, type: :bytes
end

defmodule CMsgHttpRequest do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :request_method, 1, optional: true, type: :uint32
  field :hostname, 2, optional: true, type: :string
  field :url, 3, optional: true, type: :string
  field :headers, 4, repeated: true, type: CMsgHttpRequest.RequestHeader
  field :get_params, 5, repeated: true, type: CMsgHttpRequest.QueryParam
  field :post_params, 6, repeated: true, type: CMsgHttpRequest.QueryParam
  field :body, 7, optional: true, type: :bytes
  field :absolute_timeout, 8, optional: true, type: :uint32
end

defmodule CMsgWebAPIRequest do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :interface_name, 2, optional: true, type: :string
  field :method_name, 3, optional: true, type: :string
  field :version, 4, optional: true, type: :uint32
  field :api_key, 5, optional: true, type: CMsgWebAPIKey
  field :request, 6, optional: true, type: CMsgHttpRequest
  field :routing_app_id, 7, optional: true, type: :uint32
end

defmodule CMsgHttpResponse.ResponseHeader do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :name, 1, optional: true, type: :string
  field :value, 2, optional: true, type: :string
end

defmodule CMsgHttpResponse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :status_code, 1, optional: true, type: :uint32
  field :headers, 2, repeated: true, type: CMsgHttpResponse.ResponseHeader
  field :body, 3, optional: true, type: :bytes
end

defmodule CMsgAMFindAccounts do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :search_type, 1, optional: true, type: :uint32
  field :search_string, 2, optional: true, type: :string
end

defmodule CMsgAMFindAccountsResponse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steam_id, 1, repeated: true, type: :fixed64
end

defmodule CMsgNotifyWatchdog do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :source, 1, optional: true, type: :uint32
  field :alert_type, 2, optional: true, type: :uint32
  field :alert_destination, 3, optional: true, type: :uint32
  field :critical, 4, optional: true, type: :bool
  field :time, 5, optional: true, type: :uint32
  field :appid, 6, optional: true, type: :uint32
  field :text, 7, optional: true, type: :string
end

defmodule CMsgAMGetLicenses do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steamid, 1, optional: true, type: :fixed64
end

defmodule CMsgPackageLicense do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :package_id, 1, optional: true, type: :uint32
  field :time_created, 2, optional: true, type: :uint32
  field :owner_id, 3, optional: true, type: :uint32
end

defmodule CMsgAMGetLicensesResponse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :license, 1, repeated: true, type: CMsgPackageLicense
  field :result, 2, optional: true, type: :uint32
end

defmodule CMsgAMGetUserGameStats do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steam_id, 1, optional: true, type: :fixed64
  field :game_id, 2, optional: true, type: :fixed64
  field :stats, 3, repeated: true, type: :uint32
end

defmodule CMsgAMGetUserGameStatsResponse.Stats do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :stat_id, 1, optional: true, type: :uint32
  field :stat_value, 2, optional: true, type: :uint32
end

defmodule CMsgAMGetUserGameStatsResponse.Achievement_Blocks do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :achievement_id, 1, optional: true, type: :uint32
  field :achievement_bit_id, 2, optional: true, type: :uint32
  field :unlock_time, 3, optional: true, type: :fixed32
end

defmodule CMsgAMGetUserGameStatsResponse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steam_id, 1, optional: true, type: :fixed64
  field :game_id, 2, optional: true, type: :fixed64
  field :eresult, 3, optional: true, type: :int32, default: 2
  field :stats, 4, repeated: true, type: CMsgAMGetUserGameStatsResponse.Stats

  field :achievement_blocks, 5,
    repeated: true,
    type: CMsgAMGetUserGameStatsResponse.Achievement_Blocks
end

defmodule CMsgGCGetCommandList do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :app_id, 1, optional: true, type: :uint32
  field :command_prefix, 2, optional: true, type: :string
end

defmodule CMsgGCGetCommandListResponse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :command_name, 1, repeated: true, type: :string
end

defmodule CGCMsgMemCachedGet do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :keys, 1, repeated: true, type: :string
end

defmodule CGCMsgMemCachedGetResponse.ValueTag do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :found, 1, optional: true, type: :bool
  field :value, 2, optional: true, type: :bytes
end

defmodule CGCMsgMemCachedGetResponse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :values, 1, repeated: true, type: CGCMsgMemCachedGetResponse.ValueTag
end

defmodule CGCMsgMemCachedSet.KeyPair do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :name, 1, optional: true, type: :string
  field :value, 2, optional: true, type: :bytes
end

defmodule CGCMsgMemCachedSet do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :keys, 1, repeated: true, type: CGCMsgMemCachedSet.KeyPair
end

defmodule CGCMsgMemCachedDelete do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :keys, 1, repeated: true, type: :string
end

defmodule CGCMsgMemCachedStats do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CGCMsgMemCachedStatsResponse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :curr_connections, 1, optional: true, type: :uint64
  field :cmd_get, 2, optional: true, type: :uint64
  field :cmd_set, 3, optional: true, type: :uint64
  field :cmd_flush, 4, optional: true, type: :uint64
  field :get_hits, 5, optional: true, type: :uint64
  field :get_misses, 6, optional: true, type: :uint64
  field :delete_hits, 7, optional: true, type: :uint64
  field :delete_misses, 8, optional: true, type: :uint64
  field :bytes_read, 9, optional: true, type: :uint64
  field :bytes_written, 10, optional: true, type: :uint64
  field :limit_maxbytes, 11, optional: true, type: :uint64
  field :curr_items, 12, optional: true, type: :uint64
  field :evictions, 13, optional: true, type: :uint64
  field :bytes, 14, optional: true, type: :uint64
end

defmodule CGCMsgSQLStats do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :schema_catalog, 1, optional: true, type: :uint32
end

defmodule CGCMsgSQLStatsResponse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :threads, 1, optional: true, type: :uint32
  field :threads_connected, 2, optional: true, type: :uint32
  field :threads_active, 3, optional: true, type: :uint32
  field :operations_submitted, 4, optional: true, type: :uint32
  field :prepared_statements_executed, 5, optional: true, type: :uint32
  field :non_prepared_statements_executed, 6, optional: true, type: :uint32
  field :deadlock_retries, 7, optional: true, type: :uint32
  field :operations_timed_out_in_queue, 8, optional: true, type: :uint32
  field :errors, 9, optional: true, type: :uint32
end

defmodule CMsgAMAddFreeLicense do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steamid, 1, optional: true, type: :fixed64
  field :ip_public, 2, optional: true, type: :uint32
  field :packageid, 3, optional: true, type: :uint32
  field :store_country_code, 4, optional: true, type: :string
end

defmodule CMsgAMAddFreeLicenseResponse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :eresult, 1, optional: true, type: :int32, default: 2
  field :purchase_result_detail, 2, optional: true, type: :int32
  field :transid, 3, optional: true, type: :fixed64
end

defmodule CGCMsgGetIPLocation do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :ips, 1, repeated: true, type: :fixed32
end

defmodule CIPLocationInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :ip, 1, optional: true, type: :uint32
  field :latitude, 2, optional: true, type: :float
  field :longitude, 3, optional: true, type: :float
  field :country, 4, optional: true, type: :string
  field :state, 5, optional: true, type: :string
  field :city, 6, optional: true, type: :string
end

defmodule CGCMsgGetIPLocationResponse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :infos, 1, repeated: true, type: CIPLocationInfo
end

defmodule CGCMsgSystemStatsSchema do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :gc_app_id, 1, optional: true, type: :uint32
  field :schema_kv, 2, optional: true, type: :bytes
end

defmodule CGCMsgGetSystemStats do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CGCMsgGetSystemStatsResponse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :gc_app_id, 1, optional: true, type: :uint32
  field :stats_kv, 2, optional: true, type: :bytes
  field :active_jobs, 3, optional: true, type: :uint32
  field :yielding_jobs, 4, optional: true, type: :uint32
  field :user_sessions, 5, optional: true, type: :uint32
  field :game_server_sessions, 6, optional: true, type: :uint32
  field :socaches, 7, optional: true, type: :uint32
  field :socaches_to_unload, 8, optional: true, type: :uint32
  field :socaches_loading, 9, optional: true, type: :uint32
  field :writeback_queue, 10, optional: true, type: :uint32
  field :steamid_locks, 11, optional: true, type: :uint32
  field :logon_queue, 12, optional: true, type: :uint32
  field :logon_jobs, 13, optional: true, type: :uint32
end

defmodule CMsgAMSendEmail.ReplacementToken do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :token_name, 1, optional: true, type: :string
  field :token_value, 2, optional: true, type: :string
end

defmodule CMsgAMSendEmail.PersonaNameReplacementToken do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steamid, 1, optional: true, type: :fixed64
  field :token_name, 2, optional: true, type: :string
end

defmodule CMsgAMSendEmail do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steamid, 1, optional: true, type: :fixed64
  field :email_msg_type, 2, optional: true, type: :uint32
  field :email_format, 3, optional: true, type: :uint32
  field :persona_name_tokens, 5, repeated: true, type: CMsgAMSendEmail.PersonaNameReplacementToken
  field :source_gc, 6, optional: true, type: :uint32
  field :tokens, 7, repeated: true, type: CMsgAMSendEmail.ReplacementToken
end

defmodule CMsgAMSendEmailResponse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :eresult, 1, optional: true, type: :uint32, default: 2
end

defmodule CMsgGCGetEmailTemplate do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :app_id, 1, optional: true, type: :uint32
  field :email_msg_type, 2, optional: true, type: :uint32
  field :email_lang, 3, optional: true, type: :int32
  field :email_format, 4, optional: true, type: :int32
end

defmodule CMsgGCGetEmailTemplateResponse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :eresult, 1, optional: true, type: :uint32, default: 2
  field :template_exists, 2, optional: true, type: :bool
  field :template, 3, optional: true, type: :string
end

defmodule CMsgAMGrantGuestPasses2 do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steam_id, 1, optional: true, type: :fixed64
  field :package_id, 2, optional: true, type: :uint32
  field :passes_to_grant, 3, optional: true, type: :int32
  field :days_to_expiration, 4, optional: true, type: :int32
  field :action, 5, optional: true, type: :int32
end

defmodule CMsgAMGrantGuestPasses2Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :eresult, 1, optional: true, type: :int32, default: 2
  field :passes_granted, 2, optional: true, type: :int32, default: 0
end

defmodule CGCSystemMsg_GetAccountDetails do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steamid, 1, optional: true, type: :fixed64
  field :appid, 2, optional: true, type: :uint32
end

defmodule CGCSystemMsg_GetAccountDetails_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :eresult_deprecated, 1, optional: true, type: :uint32, default: 2
  field :account_name, 2, optional: true, type: :string
  field :persona_name, 3, optional: true, type: :string
  field :is_profile_public, 4, optional: true, type: :bool
  field :is_inventory_public, 5, optional: true, type: :bool
  field :is_vac_banned, 7, optional: true, type: :bool
  field :is_cyber_cafe, 8, optional: true, type: :bool
  field :is_school_account, 9, optional: true, type: :bool
  field :is_limited, 10, optional: true, type: :bool
  field :is_subscribed, 11, optional: true, type: :bool
  field :package, 12, optional: true, type: :uint32
  field :is_free_trial_account, 13, optional: true, type: :bool
  field :free_trial_expiration, 14, optional: true, type: :uint32
  field :is_low_violence, 15, optional: true, type: :bool
  field :is_account_locked_down, 16, optional: true, type: :bool
  field :is_community_banned, 17, optional: true, type: :bool
  field :is_trade_banned, 18, optional: true, type: :bool
  field :trade_ban_expiration, 19, optional: true, type: :uint32
  field :accountid, 20, optional: true, type: :uint32
  field :suspension_end_time, 21, optional: true, type: :uint32
  field :currency, 22, optional: true, type: :string
  field :steam_level, 23, optional: true, type: :uint32
  field :friend_count, 24, optional: true, type: :uint32
  field :account_creation_time, 25, optional: true, type: :uint32
  field :is_steamguard_enabled, 27, optional: true, type: :bool
  field :is_phone_verified, 28, optional: true, type: :bool
  field :is_two_factor_auth_enabled, 29, optional: true, type: :bool
  field :two_factor_enabled_time, 30, optional: true, type: :uint32
  field :phone_verification_time, 31, optional: true, type: :uint32
  field :phone_id, 33, optional: true, type: :uint64
  field :is_phone_identifying, 34, optional: true, type: :bool
  field :rt_identity_linked, 35, optional: true, type: :uint32
  field :rt_birth_date, 36, optional: true, type: :uint32
  field :txn_country_code, 37, optional: true, type: :string
  field :has_accepted_china_ssa, 38, optional: true, type: :bool
  field :is_banned_steam_china, 39, optional: true, type: :bool
end

defmodule CMsgGCGetPersonaNames do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steamids, 1, repeated: true, type: :fixed64
end

defmodule CMsgGCGetPersonaNames_Response.PersonaName do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steamid, 1, optional: true, type: :fixed64
  field :persona_name, 2, optional: true, type: :string
end

defmodule CMsgGCGetPersonaNames_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :succeeded_lookups, 1, repeated: true, type: CMsgGCGetPersonaNames_Response.PersonaName
  field :failed_lookup_steamids, 2, repeated: true, type: :fixed64
end

defmodule CMsgGCCheckFriendship do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steamid_left, 1, optional: true, type: :fixed64
  field :steamid_right, 2, optional: true, type: :fixed64
end

defmodule CMsgGCCheckFriendship_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :success, 1, optional: true, type: :bool
  field :found_friendship, 2, optional: true, type: :bool
end

defmodule CMsgGCMsgMasterSetDirectory.SubGC do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :dir_index, 1, optional: true, type: :uint32
  field :name, 2, optional: true, type: :string
  field :box, 3, optional: true, type: :string
  field :command_line, 4, optional: true, type: :string
  field :gc_binary, 5, optional: true, type: :string
end

defmodule CMsgGCMsgMasterSetDirectory do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :master_dir_index, 1, optional: true, type: :uint32
  field :dir, 2, repeated: true, type: CMsgGCMsgMasterSetDirectory.SubGC
end

defmodule CMsgGCMsgMasterSetDirectory_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :eresult, 1, optional: true, type: :int32, default: 2
  field :message, 2, optional: true, type: :string
end

defmodule CMsgGCMsgWebAPIJobRequestForwardResponse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :dir_index, 1, optional: true, type: :uint32
end

defmodule CGCSystemMsg_GetPurchaseTrust_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steamid, 1, optional: true, type: :fixed64
end

defmodule CGCSystemMsg_GetPurchaseTrust_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :has_prior_purchase_history, 1, optional: true, type: :bool
  field :has_no_recent_password_resets, 2, optional: true, type: :bool
  field :is_wallet_cash_trusted, 3, optional: true, type: :bool
  field :time_all_trusted, 4, optional: true, type: :uint32
end

defmodule CMsgGCHAccountVacStatusChange do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steam_id, 1, optional: true, type: :fixed64
  field :app_id, 2, optional: true, type: :uint32
  field :rtime_vacban_starts, 3, optional: true, type: :uint32
  field :is_banned_now, 4, optional: true, type: :bool
  field :is_banned_future, 5, optional: true, type: :bool
end

defmodule CMsgGCGetPartnerAccountLink do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steamid, 1, optional: true, type: :fixed64
end

defmodule CMsgGCGetPartnerAccountLink_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :pwid, 1, optional: true, type: :uint32
  field :nexonid, 2, optional: true, type: :uint32
  field :ageclass, 3, optional: true, type: :int32
  field :id_verified, 4, optional: true, type: :bool, default: true
  field :is_adult, 5, optional: true, type: :bool
end

defmodule CMsgGCRoutingInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :dir_index, 1, repeated: true, type: :uint32

  field :method, 2,
    optional: true,
    type: CMsgGCRoutingInfo.RoutingMethod,
    default: :RANDOM,
    enum: true

  field :fallback, 3,
    optional: true,
    type: CMsgGCRoutingInfo.RoutingMethod,
    default: :DISCARD,
    enum: true

  field :protobuf_field, 4, optional: true, type: :uint32
  field :webapi_param, 5, optional: true, type: :string
end

defmodule CMsgGCMsgMasterSetWebAPIRouting.Entry do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :interface_name, 1, optional: true, type: :string
  field :method_name, 2, optional: true, type: :string
  field :routing, 3, optional: true, type: CMsgGCRoutingInfo
end

defmodule CMsgGCMsgMasterSetWebAPIRouting do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :entries, 1, repeated: true, type: CMsgGCMsgMasterSetWebAPIRouting.Entry
end

defmodule CMsgGCMsgMasterSetClientMsgRouting.Entry do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :msg_type, 1, optional: true, type: :uint32
  field :routing, 2, optional: true, type: CMsgGCRoutingInfo
end

defmodule CMsgGCMsgMasterSetClientMsgRouting do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :entries, 1, repeated: true, type: CMsgGCMsgMasterSetClientMsgRouting.Entry
end

defmodule CMsgGCMsgMasterSetWebAPIRouting_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :eresult, 1, optional: true, type: :int32, default: 2
end

defmodule CMsgGCMsgMasterSetClientMsgRouting_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :eresult, 1, optional: true, type: :int32, default: 2
end

defmodule CMsgGCMsgSetOptions.MessageRange do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :low, 1, required: true, type: :uint32
  field :high, 2, required: true, type: :uint32
end

defmodule CMsgGCMsgSetOptions do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :options, 1, repeated: true, type: CMsgGCMsgSetOptions.Option, enum: true
  field :client_msg_ranges, 2, repeated: true, type: CMsgGCMsgSetOptions.MessageRange
end

defmodule CMsgGCHUpdateSession.ExtraField do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :name, 1, optional: true, type: :string
  field :value, 2, optional: true, type: :string
end

defmodule CMsgGCHUpdateSession do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steam_id, 1, optional: true, type: :fixed64
  field :app_id, 2, optional: true, type: :uint32
  field :online, 3, optional: true, type: :bool
  field :server_steam_id, 4, optional: true, type: :fixed64
  field :server_addr, 5, optional: true, type: :uint32
  field :server_port, 6, optional: true, type: :uint32
  field :os_type, 7, optional: true, type: :uint32
  field :client_addr, 8, optional: true, type: :uint32
  field :extra_fields, 9, repeated: true, type: CMsgGCHUpdateSession.ExtraField
  field :owner_id, 10, optional: true, type: :fixed64
  field :cm_session_sysid, 11, optional: true, type: :uint32
  field :cm_session_identifier, 12, optional: true, type: :uint32
  field :depot_ids, 13, repeated: true, type: :uint32
end

defmodule CMsgNotificationOfSuspiciousActivity.MultipleGameInstances do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :app_instance_count, 1, optional: true, type: :uint32
  field :other_steamids, 2, repeated: true, type: :fixed64
end

defmodule CMsgNotificationOfSuspiciousActivity do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steamid, 1, optional: true, type: :fixed64
  field :appid, 2, optional: true, type: :uint32

  field :multiple_instances, 3,
    optional: true,
    type: CMsgNotificationOfSuspiciousActivity.MultipleGameInstances
end

defmodule CMsgDPPartnerMicroTxns.PartnerMicroTxn do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :init_time, 1, optional: true, type: :uint32
  field :last_update_time, 2, optional: true, type: :uint32
  field :txn_id, 3, optional: true, type: :uint64
  field :account_id, 4, optional: true, type: :uint32
  field :line_item, 5, optional: true, type: :uint32
  field :item_id, 6, optional: true, type: :uint64
  field :def_index, 7, optional: true, type: :uint32
  field :price, 8, optional: true, type: :uint64
  field :tax, 9, optional: true, type: :uint64
  field :price_usd, 10, optional: true, type: :uint64
  field :tax_usd, 11, optional: true, type: :uint64
  field :purchase_type, 12, optional: true, type: :uint32
  field :steam_txn_type, 13, optional: true, type: :uint32
  field :country_code, 14, optional: true, type: :string
  field :region_code, 15, optional: true, type: :string
  field :quantity, 16, optional: true, type: :int32
  field :ref_trans_id, 17, optional: true, type: :uint64
end

defmodule CMsgDPPartnerMicroTxns.PartnerInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :partner_id, 1, optional: true, type: :uint32
  field :partner_name, 2, optional: true, type: :string
  field :currency_code, 3, optional: true, type: :string
  field :currency_name, 4, optional: true, type: :string
end

defmodule CMsgDPPartnerMicroTxns do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :appid, 1, optional: true, type: :uint32
  field :gc_name, 2, optional: true, type: :string
  field :partner, 3, optional: true, type: CMsgDPPartnerMicroTxns.PartnerInfo
  field :transactions, 4, repeated: true, type: CMsgDPPartnerMicroTxns.PartnerMicroTxn
end

defmodule CMsgDPPartnerMicroTxnsResponse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :eresult, 1, optional: true, type: :uint32, default: 2

  field :eerrorcode, 2,
    optional: true,
    type: CMsgDPPartnerMicroTxnsResponse.EErrorCode,
    default: :k_MsgValid,
    enum: true
end

defmodule CChinaAgreementSessions_StartAgreementSessionInGame_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :appid, 1, optional: true, type: :uint32
  field :steamid, 2, optional: true, type: :fixed64
  field :client_ipaddress, 3, optional: true, type: :string
end

defmodule CChinaAgreementSessions_StartAgreementSessionInGame_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :agreement_url, 1, optional: true, type: :string
end