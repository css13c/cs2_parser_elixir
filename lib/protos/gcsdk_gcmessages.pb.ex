defmodule GCClientLauncherType do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :GCClientLauncherType_DEFAULT, 0
  field :GCClientLauncherType_PERFECTWORLD, 1
  field :GCClientLauncherType_STEAMCHINA, 2
end

defmodule GCConnectionStatus do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :GCConnectionStatus_HAVE_SESSION, 0
  field :GCConnectionStatus_GC_GOING_DOWN, 1
  field :GCConnectionStatus_NO_SESSION, 2
  field :GCConnectionStatus_NO_SESSION_IN_LOGON_QUEUE, 3
  field :GCConnectionStatus_NO_STEAM, 4
end

defmodule CMsgSOIDOwner do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :type, 1, optional: true, type: :uint32
  field :id, 2, optional: true, type: :uint64
end

defmodule CMsgSOSingleObject do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :type_id, 2, optional: true, type: :int32
  field :object_data, 3, optional: true, type: :bytes
  field :version, 4, optional: true, type: :fixed64
  field :owner_soid, 5, optional: true, type: CMsgSOIDOwner
end

defmodule CMsgSOMultipleObjects.SingleObject do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :type_id, 1, optional: true, type: :int32
  field :object_data, 2, optional: true, type: :bytes
end

defmodule CMsgSOMultipleObjects do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :objects_modified, 2, repeated: true, type: CMsgSOMultipleObjects.SingleObject
  field :version, 3, optional: true, type: :fixed64
  field :owner_soid, 6, optional: true, type: CMsgSOIDOwner
end

defmodule CMsgSOCacheSubscribed.SubscribedType do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :type_id, 1, optional: true, type: :int32
  field :object_data, 2, repeated: true, type: :bytes
end

defmodule CMsgSOCacheSubscribed do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :objects, 2, repeated: true, type: CMsgSOCacheSubscribed.SubscribedType
  field :version, 3, optional: true, type: :fixed64
  field :owner_soid, 4, optional: true, type: CMsgSOIDOwner
end

defmodule CMsgSOCacheUnsubscribed do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :owner_soid, 2, optional: true, type: CMsgSOIDOwner
end

defmodule CMsgSOCacheSubscriptionCheck do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :version, 2, optional: true, type: :fixed64
  field :owner_soid, 3, optional: true, type: CMsgSOIDOwner
end

defmodule CMsgSOCacheSubscriptionRefresh do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :owner_soid, 2, optional: true, type: CMsgSOIDOwner
end

defmodule CMsgSOCacheVersion do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :version, 1, optional: true, type: :fixed64
end

defmodule CMsgAccountDetails do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :valid, 1, optional: true, type: :bool
  field :account_name, 2, optional: true, type: :string
  field :public_profile, 4, optional: true, type: :bool
  field :public_inventory, 5, optional: true, type: :bool
  field :vac_banned, 6, optional: true, type: :bool
  field :cyber_cafe, 7, optional: true, type: :bool
  field :school_account, 8, optional: true, type: :bool
  field :free_trial_account, 9, optional: true, type: :bool
  field :subscribed, 10, optional: true, type: :bool
  field :low_violence, 11, optional: true, type: :bool
  field :limited, 12, optional: true, type: :bool
  field :trusted, 13, optional: true, type: :bool
  field :package, 14, optional: true, type: :uint32
  field :time_cached, 15, optional: true, type: :fixed32
  field :account_locked, 16, optional: true, type: :bool
  field :community_banned, 17, optional: true, type: :bool
  field :trade_banned, 18, optional: true, type: :bool
  field :eligible_for_community_market, 19, optional: true, type: :bool
end

defmodule CMsgGCMultiplexMessage do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :msgtype, 1, optional: true, type: :uint32
  field :payload, 2, optional: true, type: :bytes
  field :steamids, 3, repeated: true, type: :fixed64
  field :replytogc, 4, optional: true, type: :bool
end

defmodule CMsgGCMultiplexMessage_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :msgtype, 1, optional: true, type: :uint32
end

defmodule CGCToGCMsgMasterAck do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :dir_index, 1, optional: true, type: :uint32
  field :gc_type, 2, optional: true, type: :uint32
end

defmodule CGCToGCMsgMasterAck_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :eresult, 1, optional: true, type: :int32, default: 2
end

defmodule CGCToGCMsgMasterStartupComplete do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CGCToGCMsgRouted do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :msg_type, 1, optional: true, type: :uint32
  field :sender_id, 2, optional: true, type: :fixed64
  field :net_message, 3, optional: true, type: :bytes
  field :ip, 4, optional: true, type: :uint32
end

defmodule CGCToGCMsgRoutedReply do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :msg_type, 1, optional: true, type: :uint32
  field :net_message, 2, optional: true, type: :bytes
end

defmodule CMsgGCUpdateSessionIP do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steamid, 1, optional: true, type: :fixed64
  field :ip, 2, optional: true, type: :fixed32
end

defmodule CMsgGCRequestSessionIP do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steamid, 1, optional: true, type: :fixed64
end

defmodule CMsgGCRequestSessionIPResponse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :ip, 1, optional: true, type: :fixed32
end

defmodule CMsgSOCacheHaveVersion do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :soid, 1, optional: true, type: CMsgSOIDOwner
  field :version, 2, optional: true, type: :fixed64
end

defmodule CMsgClientHello do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :version, 1, optional: true, type: :uint32
  field :socache_have_versions, 2, repeated: true, type: CMsgSOCacheHaveVersion
  field :client_session_need, 3, optional: true, type: :uint32
  field :client_launcher, 4, optional: true, type: :uint32
  field :partner_srcid, 5, optional: true, type: :uint32
  field :partner_accountid, 6, optional: true, type: :uint32
  field :partner_accountflags, 7, optional: true, type: :uint32
  field :partner_accountbalance, 8, optional: true, type: :uint32
  field :steam_launcher, 9, optional: true, type: :uint32
end

defmodule CMsgServerHello do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :version, 1, optional: true, type: :uint32
  field :socache_have_versions, 2, repeated: true, type: CMsgSOCacheHaveVersion
  field :legacy_client_session_need, 3, optional: true, type: :uint32
  field :client_launcher, 4, optional: true, type: :uint32
  field :legacy_steamdatagram_routing, 6, optional: true, type: :bytes
  field :required_internal_addr, 7, optional: true, type: :uint32
  field :steamdatagram_login, 8, optional: true, type: :bytes
end

defmodule CMsgClientWelcome.Location do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :latitude, 1, optional: true, type: :float
  field :longitude, 2, optional: true, type: :float
  field :country, 3, optional: true, type: :string
end

defmodule CMsgClientWelcome do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :version, 1, optional: true, type: :uint32
  field :game_data, 2, optional: true, type: :bytes
  field :outofdate_subscribed_caches, 3, repeated: true, type: CMsgSOCacheSubscribed
  field :uptodate_subscribed_caches, 4, repeated: true, type: CMsgSOCacheSubscriptionCheck
  field :location, 5, optional: true, type: CMsgClientWelcome.Location
  field :game_data2, 6, optional: true, type: :bytes
  field :rtime32_gc_welcome_timestamp, 7, optional: true, type: :uint32
  field :currency, 8, optional: true, type: :uint32
  field :balance, 9, optional: true, type: :uint32
  field :balance_url, 10, optional: true, type: :string
  field :txn_country_code, 11, optional: true, type: :string
end

defmodule CMsgConnectionStatus do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :status, 1,
    optional: true,
    type: GCConnectionStatus,
    default: :GCConnectionStatus_HAVE_SESSION,
    enum: true

  field :client_session_need, 2, optional: true, type: :uint32
  field :queue_position, 3, optional: true, type: :int32
  field :queue_size, 4, optional: true, type: :int32
  field :wait_seconds, 5, optional: true, type: :int32
  field :estimated_wait_seconds_remaining, 6, optional: true, type: :int32
end

defmodule CWorkshop_PopulateItemDescriptions_Request.SingleItemDescription do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :gameitemid, 1, optional: true, type: :uint32
  field :item_description, 2, optional: true, type: :string
  field :one_per_account, 3, optional: true, type: :bool
end

defmodule CWorkshop_PopulateItemDescriptions_Request.ItemDescriptionsLanguageBlock do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :language, 1, optional: true, type: :string

  field :descriptions, 2,
    repeated: true,
    type: CWorkshop_PopulateItemDescriptions_Request.SingleItemDescription
end

defmodule CWorkshop_PopulateItemDescriptions_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :appid, 1, optional: true, type: :uint32

  field :languages, 2,
    repeated: true,
    type: CWorkshop_PopulateItemDescriptions_Request.ItemDescriptionsLanguageBlock
end

defmodule CWorkshop_GetContributors_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :appid, 1, optional: true, type: :uint32
  field :gameitemid, 2, optional: true, type: :uint32
end

defmodule CWorkshop_GetContributors_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :contributors, 1, repeated: true, type: :fixed64
end

defmodule CWorkshop_SetItemPaymentRules_Request.WorkshopItemPaymentRule do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :workshop_file_id, 1, optional: true, type: :uint64
  field :revenue_percentage, 2, optional: true, type: :float
  field :rule_description, 3, optional: true, type: :string
  field :rule_type, 4, optional: true, type: :uint32, default: 1
end

defmodule CWorkshop_SetItemPaymentRules_Request.WorkshopDirectPaymentRule do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :workshop_file_id, 1, optional: true, type: :uint64
  field :rule_description, 2, optional: true, type: :string
end

defmodule CWorkshop_SetItemPaymentRules_Request.PartnerItemPaymentRule do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :account_id, 1, optional: true, type: :uint32
  field :revenue_percentage, 2, optional: true, type: :float
  field :rule_description, 3, optional: true, type: :string
end

defmodule CWorkshop_SetItemPaymentRules_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :appid, 1, optional: true, type: :uint32
  field :gameitemid, 2, optional: true, type: :uint32

  field :associated_workshop_files, 3,
    repeated: true,
    type: CWorkshop_SetItemPaymentRules_Request.WorkshopItemPaymentRule

  field :partner_accounts, 4,
    repeated: true,
    type: CWorkshop_SetItemPaymentRules_Request.PartnerItemPaymentRule

  field :validate_only, 5, optional: true, type: :bool
  field :make_workshop_files_subscribable, 6, optional: true, type: :bool

  field :associated_workshop_file_for_direct_payments, 7,
    optional: true,
    type: CWorkshop_SetItemPaymentRules_Request.WorkshopDirectPaymentRule
end

defmodule CWorkshop_SetItemPaymentRules_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CGameServers_AggregationQuery_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :filter, 1, optional: true, type: :string
  field :group_fields, 3, repeated: true, type: :string
end

defmodule CGameServers_AggregationQuery_Response.Group do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :group_values, 1, repeated: true, type: :string
  field :servers_empty, 2, optional: true, type: :uint32
  field :servers_full, 3, optional: true, type: :uint32
  field :servers_total, 4, optional: true, type: :uint32
  field :players_humans, 5, optional: true, type: :uint32
  field :players_bots, 6, optional: true, type: :uint32
  field :player_capacity, 7, optional: true, type: :uint32
end

defmodule CGameServers_AggregationQuery_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :groups, 1, repeated: true, type: CGameServers_AggregationQuery_Response.Group
end

defmodule CWorkshop_AddSpecialPayment_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :appid, 1, optional: true, type: :uint32
  field :gameitemid, 2, optional: true, type: :uint32
  field :date, 3, optional: true, type: :string
  field :payment_us_usd, 4, optional: true, type: :uint64
  field :payment_row_usd, 5, optional: true, type: :uint64
end

defmodule CWorkshop_AddSpecialPayment_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CProductInfo_SetRichPresenceLocalization_Request.Token do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :token, 1, optional: true, type: :string
  field :value, 2, optional: true, type: :string
end

defmodule CProductInfo_SetRichPresenceLocalization_Request.LanguageSection do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :language, 1, optional: true, type: :string
  field :tokens, 2, repeated: true, type: CProductInfo_SetRichPresenceLocalization_Request.Token
end

defmodule CProductInfo_SetRichPresenceLocalization_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :appid, 1, optional: true, type: :uint32

  field :languages, 2,
    repeated: true,
    type: CProductInfo_SetRichPresenceLocalization_Request.LanguageSection

  field :steamid, 3, optional: true, type: :uint64
end

defmodule CProductInfo_SetRichPresenceLocalization_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CMsgSerializedSOCache.TypeCache do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :type, 1, optional: true, type: :uint32
  field :objects, 2, repeated: true, type: :bytes
  field :service_id, 3, optional: true, type: :uint32
end

defmodule CMsgSerializedSOCache.Cache.Version do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :service, 1, optional: true, type: :uint32
  field :version, 2, optional: true, type: :uint64
end

defmodule CMsgSerializedSOCache.Cache do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :type, 1, optional: true, type: :uint32
  field :id, 2, optional: true, type: :uint64
  field :versions, 3, repeated: true, type: CMsgSerializedSOCache.Cache.Version
  field :type_caches, 4, repeated: true, type: CMsgSerializedSOCache.TypeCache
end

defmodule CMsgSerializedSOCache do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :file_version, 1, optional: true, type: :uint32
  field :caches, 2, repeated: true, type: CMsgSerializedSOCache.Cache
  field :gc_socache_file_version, 3, optional: true, type: :uint32
end