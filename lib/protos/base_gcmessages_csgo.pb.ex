defmodule EGCBaseMsg do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :k_EMsgGCSystemMessage, 4001
  field :k_EMsgGCReplicateConVars, 4002
  field :k_EMsgGCConVarUpdated, 4003
  field :k_EMsgGCInQueue, 4008
  field :k_EMsgGCInviteToParty, 4501
  field :k_EMsgGCInvitationCreated, 4502
  field :k_EMsgGCPartyInviteResponse, 4503
  field :k_EMsgGCKickFromParty, 4504
  field :k_EMsgGCLeaveParty, 4505
  field :k_EMsgGCServerAvailable, 4506
  field :k_EMsgGCClientConnectToServer, 4507
  field :k_EMsgGCGameServerInfo, 4508
  field :k_EMsgGCError, 4509
  field :k_EMsgGCReplay_UploadedToYouTube, 4510
  field :k_EMsgGCLANServerAvailable, 4511
end

defmodule EGCBaseProtoObjectTypes do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :k_EProtoObjectPartyInvite, 1001
  field :k_EProtoObjectLobbyInvite, 1002
end

defmodule GC_BannedWordType do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :GC_BANNED_WORD_DISABLE_WORD, 0
  field :GC_BANNED_WORD_ENABLE_WORD, 1
end

defmodule CMsgGameServerInfo.ServerType do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :UNSPECIFIED, 0
  field :GAME, 1
  field :PROXY, 2
end

defmodule CGCStorePurchaseInit_LineItem do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :item_def_id, 1, optional: true, type: :uint32
  field :quantity, 2, optional: true, type: :uint32
  field :cost_in_local_currency, 3, optional: true, type: :uint32
  field :purchase_type, 4, optional: true, type: :uint32
end

defmodule CMsgGCStorePurchaseInit do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :country, 1, optional: true, type: :string
  field :language, 2, optional: true, type: :int32
  field :currency, 3, optional: true, type: :int32
  field :line_items, 4, repeated: true, type: CGCStorePurchaseInit_LineItem
end

defmodule CMsgGCStorePurchaseInitResponse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :result, 1, optional: true, type: :int32
  field :txn_id, 2, optional: true, type: :uint64
  field :url, 3, optional: true, type: :string
  field :item_ids, 4, repeated: true, type: :uint64
end

defmodule CSOPartyInvite do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :group_id, 1, optional: true, type: :uint64, deprecated: false
  field :sender_id, 2, optional: true, type: :fixed64
  field :sender_name, 3, optional: true, type: :string
end

defmodule CSOLobbyInvite do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :group_id, 1, optional: true, type: :uint64, deprecated: false
  field :sender_id, 2, optional: true, type: :fixed64
  field :sender_name, 3, optional: true, type: :string
end

defmodule CMsgSystemBroadcast do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :message, 1, optional: true, type: :string
end

defmodule CMsgInviteToParty do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steam_id, 1, optional: true, type: :fixed64
  field :client_version, 2, optional: true, type: :uint32
  field :team_invite, 3, optional: true, type: :uint32
end

defmodule CMsgInvitationCreated do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :group_id, 1, optional: true, type: :uint64
  field :steam_id, 2, optional: true, type: :fixed64
end

defmodule CMsgPartyInviteResponse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :party_id, 1, optional: true, type: :uint64
  field :accept, 2, optional: true, type: :bool
  field :client_version, 3, optional: true, type: :uint32
  field :team_invite, 4, optional: true, type: :uint32
end

defmodule CMsgKickFromParty do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steam_id, 1, optional: true, type: :fixed64
end

defmodule CMsgLeaveParty do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CMsgServerAvailable do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CMsgLANServerAvailable do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :lobby_id, 1, optional: true, type: :fixed64
end

defmodule CSOEconGameAccountClient do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :additional_backpack_slots, 1, optional: true, type: :uint32, default: 0
  field :bonus_xp_timestamp_refresh, 12, optional: true, type: :fixed32
  field :bonus_xp_usedflags, 13, optional: true, type: :uint32
  field :elevated_state, 14, optional: true, type: :uint32
  field :elevated_timestamp, 15, optional: true, type: :uint32
end

defmodule CSOItemCriteriaCondition do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :op, 1, optional: true, type: :int32
  field :field, 2, optional: true, type: :string
  field :required, 3, optional: true, type: :bool
  field :float_value, 4, optional: true, type: :float
  field :string_value, 5, optional: true, type: :string
end

defmodule CSOItemCriteria do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :item_level, 1, optional: true, type: :uint32
  field :item_quality, 2, optional: true, type: :int32
  field :item_level_set, 3, optional: true, type: :bool
  field :item_quality_set, 4, optional: true, type: :bool
  field :initial_inventory, 5, optional: true, type: :uint32
  field :initial_quantity, 6, optional: true, type: :uint32
  field :ignore_enabled_flag, 8, optional: true, type: :bool
  field :conditions, 9, repeated: true, type: CSOItemCriteriaCondition
  field :item_rarity, 10, optional: true, type: :int32
  field :item_rarity_set, 11, optional: true, type: :bool
  field :recent_only, 12, optional: true, type: :bool
end

defmodule CSOItemRecipe do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :def_index, 1, optional: true, type: :uint32
  field :name, 2, optional: true, type: :string
  field :n_a, 3, optional: true, type: :string
  field :desc_inputs, 4, optional: true, type: :string
  field :desc_outputs, 5, optional: true, type: :string
  field :di_a, 6, optional: true, type: :string
  field :di_b, 7, optional: true, type: :string
  field :di_c, 8, optional: true, type: :string
  field :do_a, 9, optional: true, type: :string
  field :do_b, 10, optional: true, type: :string
  field :do_c, 11, optional: true, type: :string
  field :requires_all_same_class, 12, optional: true, type: :bool
  field :requires_all_same_slot, 13, optional: true, type: :bool
  field :class_usage_for_output, 14, optional: true, type: :int32
  field :slot_usage_for_output, 15, optional: true, type: :int32
  field :set_for_output, 16, optional: true, type: :int32
  field :input_items_criteria, 20, repeated: true, type: CSOItemCriteria
  field :output_items_criteria, 21, repeated: true, type: CSOItemCriteria
  field :input_item_dupe_counts, 22, repeated: true, type: :uint32
end

defmodule CMsgDevNewItemRequest do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :receiver, 1, optional: true, type: :fixed64
  field :criteria, 2, optional: true, type: CSOItemCriteria
end

defmodule CMsgIncrementKillCountAttribute do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :killer_account_id, 1, optional: true, type: :fixed32
  field :victim_account_id, 2, optional: true, type: :fixed32
  field :item_id, 3, optional: true, type: :uint64
  field :event_type, 4, optional: true, type: :uint32
  field :amount, 5, optional: true, type: :uint32
end

defmodule CMsgApplySticker do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :sticker_item_id, 1, optional: true, type: :uint64
  field :item_item_id, 2, optional: true, type: :uint64
  field :sticker_slot, 3, optional: true, type: :uint32
  field :baseitem_defidx, 4, optional: true, type: :uint32
  field :sticker_wear, 5, optional: true, type: :float
end

defmodule CMsgModifyItemAttribute do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :item_id, 1, optional: true, type: :uint64
  field :attr_defidx, 2, optional: true, type: :uint32
  field :attr_value, 3, optional: true, type: :uint32
end

defmodule CMsgApplyStatTrakSwap do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :tool_item_id, 1, optional: true, type: :uint64
  field :item_1_item_id, 2, optional: true, type: :uint64
  field :item_2_item_id, 3, optional: true, type: :uint64
end

defmodule CMsgApplyStrangePart do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :strange_part_item_id, 1, optional: true, type: :uint64
  field :item_item_id, 2, optional: true, type: :uint64
end

defmodule CMsgApplyPennantUpgrade do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :upgrade_item_id, 1, optional: true, type: :uint64
  field :pennant_item_id, 2, optional: true, type: :uint64
end

defmodule CMsgApplyEggEssence do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :essence_item_id, 1, optional: true, type: :uint64
  field :egg_item_id, 2, optional: true, type: :uint64
end

defmodule CSOEconItemAttribute do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :def_index, 1, optional: true, type: :uint32
  field :value, 2, optional: true, type: :uint32
  field :value_bytes, 3, optional: true, type: :bytes
end

defmodule CSOEconItemEquipped do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :new_class, 1, optional: true, type: :uint32
  field :new_slot, 2, optional: true, type: :uint32
end

defmodule CSOEconItem do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :id, 1, optional: true, type: :uint64
  field :account_id, 2, optional: true, type: :uint32
  field :inventory, 3, optional: true, type: :uint32
  field :def_index, 4, optional: true, type: :uint32
  field :quantity, 5, optional: true, type: :uint32
  field :level, 6, optional: true, type: :uint32
  field :quality, 7, optional: true, type: :uint32
  field :flags, 8, optional: true, type: :uint32, default: 0
  field :origin, 9, optional: true, type: :uint32
  field :custom_name, 10, optional: true, type: :string
  field :custom_desc, 11, optional: true, type: :string
  field :attribute, 12, repeated: true, type: CSOEconItemAttribute
  field :interior_item, 13, optional: true, type: CSOEconItem
  field :in_use, 14, optional: true, type: :bool, default: false
  field :style, 15, optional: true, type: :uint32, default: 0
  field :original_id, 16, optional: true, type: :uint64, default: 0
  field :equipped_state, 18, repeated: true, type: CSOEconItemEquipped
  field :rarity, 19, optional: true, type: :uint32
end

defmodule CMsgAdjustItemEquippedState do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :item_id, 1, optional: true, type: :uint64
  field :new_class, 2, optional: true, type: :uint32
  field :new_slot, 3, optional: true, type: :uint32
  field :swap, 4, optional: true, type: :bool
end

defmodule CMsgAdjustItemEquippedStateMulti do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :t_equips, 1, repeated: true, type: :uint64
  field :ct_equips, 2, repeated: true, type: :uint64
  field :noteam_equips, 3, repeated: true, type: :uint64
end

defmodule CMsgSortItems do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :sort_type, 1, optional: true, type: :uint32
end

defmodule CSOEconClaimCode do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :account_id, 1, optional: true, type: :uint32
  field :code_type, 2, optional: true, type: :uint32
  field :time_acquired, 3, optional: true, type: :uint32
  field :code, 4, optional: true, type: :string
end

defmodule CMsgStoreGetUserData do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :price_sheet_version, 1, optional: true, type: :fixed32
  field :currency, 2, optional: true, type: :int32
end

defmodule CMsgStoreGetUserDataResponse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :result, 1, optional: true, type: :int32
  field :currency_deprecated, 2, optional: true, type: :int32
  field :country_deprecated, 3, optional: true, type: :string
  field :price_sheet_version, 4, optional: true, type: :fixed32
  field :price_sheet, 8, optional: true, type: :bytes
end

defmodule CMsgUpdateItemSchema do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :items_game, 1, optional: true, type: :bytes
  field :item_schema_version, 2, optional: true, type: :fixed32
  field :items_game_url, 4, optional: true, type: :string
end

defmodule CMsgGCError do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :error_text, 1, optional: true, type: :string
end

defmodule CMsgRequestInventoryRefresh do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CMsgConVarValue do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :name, 1, optional: true, type: :string
  field :value, 2, optional: true, type: :string
end

defmodule CMsgReplicateConVars do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :convars, 1, repeated: true, type: CMsgConVarValue
end

defmodule CMsgUseItem do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :item_id, 1, optional: true, type: :uint64
  field :target_steam_id, 2, optional: true, type: :fixed64
  field :gift__potential_targets, 3, repeated: true, type: :uint32
  field :duel__class_lock, 4, optional: true, type: :uint32
  field :initiator_steam_id, 5, optional: true, type: :fixed64
end

defmodule CMsgReplayUploadedToYouTube do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :youtube_url, 1, optional: true, type: :string
  field :youtube_account_name, 2, optional: true, type: :string
  field :session_id, 3, optional: true, type: :uint64
end

defmodule CMsgConsumableExhausted do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :item_def_id, 1, optional: true, type: :int32
end

defmodule CMsgItemAcknowledged_DEPRECATED do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :account_id, 1, optional: true, type: :uint32
  field :inventory, 2, optional: true, type: :uint32
  field :def_index, 3, optional: true, type: :uint32
  field :quality, 4, optional: true, type: :uint32
  field :rarity, 5, optional: true, type: :uint32
  field :origin, 6, optional: true, type: :uint32
  field :item_id, 7, optional: true, type: :uint64
end

defmodule CMsgSetItemPositions.ItemPosition do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :legacy_item_id, 1, optional: true, type: :uint32
  field :position, 2, optional: true, type: :uint32
  field :item_id, 3, optional: true, type: :uint64
end

defmodule CMsgSetItemPositions do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :item_positions, 1, repeated: true, type: CMsgSetItemPositions.ItemPosition
end

defmodule CMsgGCReportAbuse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :target_steam_id, 1, optional: true, type: :fixed64
  field :description, 4, optional: true, type: :string
  field :gid, 5, optional: true, type: :uint64
  field :abuse_type, 2, optional: true, type: :uint32
  field :content_type, 3, optional: true, type: :uint32
  field :target_game_server_ip, 6, optional: true, type: :fixed32
  field :target_game_server_port, 7, optional: true, type: :uint32
end

defmodule CMsgGCReportAbuseResponse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :target_steam_id, 1, optional: true, type: :fixed64
  field :result, 2, optional: true, type: :uint32
  field :error_message, 3, optional: true, type: :string
end

defmodule CMsgGCNameItemNotification do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :player_steamid, 1, optional: true, type: :fixed64
  field :item_def_index, 2, optional: true, type: :uint32
  field :item_name_custom, 3, optional: true, type: :string
end

defmodule CMsgGCClientDisplayNotification do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :notification_title_localization_key, 1, optional: true, type: :string
  field :notification_body_localization_key, 2, optional: true, type: :string
  field :body_substring_keys, 3, repeated: true, type: :string
  field :body_substring_values, 4, repeated: true, type: :string
end

defmodule CMsgGCShowItemsPickedUp do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :player_steamid, 1, optional: true, type: :fixed64
end

defmodule CMsgGCIncrementKillCountResponse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :killer_account_id, 1, optional: true, type: :uint32, deprecated: false
  field :num_kills, 2, optional: true, type: :uint32
  field :item_def, 3, optional: true, type: :uint32
  field :level_type, 4, optional: true, type: :uint32
end

defmodule CSOEconItemDropRateBonus do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :account_id, 1, optional: true, type: :uint32
  field :expiration_date, 2, optional: true, type: :fixed32
  field :bonus, 3, optional: true, type: :float
  field :bonus_count, 4, optional: true, type: :uint32
  field :item_id, 5, optional: true, type: :uint64
  field :def_index, 6, optional: true, type: :uint32
end

defmodule CSOEconItemLeagueViewPass do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :account_id, 1, optional: true, type: :uint32, deprecated: false
  field :league_id, 2, optional: true, type: :uint32, deprecated: false
  field :admin, 3, optional: true, type: :uint32
  field :itemindex, 4, optional: true, type: :uint32
end

defmodule CSOEconItemEventTicket do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :account_id, 1, optional: true, type: :uint32
  field :event_id, 2, optional: true, type: :uint32
  field :item_id, 3, optional: true, type: :uint64
end

defmodule CMsgGCItemPreviewItemBoughtNotification do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :item_def_index, 1, optional: true, type: :uint32
end

defmodule CMsgGCStorePurchaseCancel do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :txn_id, 1, optional: true, type: :uint64
end

defmodule CMsgGCStorePurchaseCancelResponse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :result, 1, optional: true, type: :uint32
end

defmodule CMsgGCStorePurchaseFinalize do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :txn_id, 1, optional: true, type: :uint64
end

defmodule CMsgGCStorePurchaseFinalizeResponse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :result, 1, optional: true, type: :uint32
  field :item_ids, 2, repeated: true, type: :uint64
end

defmodule CMsgGCBannedWordListRequest do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :ban_list_group_id, 1, optional: true, type: :uint32
  field :word_id, 2, optional: true, type: :uint32
end

defmodule CMsgGCRequestAnnouncements do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CMsgGCRequestAnnouncementsResponse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :announcement_title, 1, optional: true, type: :string
  field :announcement, 2, optional: true, type: :string
  field :nextmatch_title, 3, optional: true, type: :string
  field :nextmatch, 4, optional: true, type: :string
end

defmodule CMsgGCBannedWord do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :word_id, 1, optional: true, type: :uint32

  field :word_type, 2,
    optional: true,
    type: GC_BannedWordType,
    default: :GC_BANNED_WORD_DISABLE_WORD,
    enum: true

  field :word, 3, optional: true, type: :string
end

defmodule CMsgGCBannedWordListResponse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :ban_list_group_id, 1, optional: true, type: :uint32
  field :word_list, 2, repeated: true, type: CMsgGCBannedWord
end

defmodule CMsgGCToGCBannedWordListBroadcast do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :broadcast, 1, optional: true, type: CMsgGCBannedWordListResponse
end

defmodule CMsgGCToGCBannedWordListUpdated do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :group_id, 1, optional: true, type: :uint32
end

defmodule CSOEconDefaultEquippedDefinitionInstanceClient do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :account_id, 1, optional: true, type: :uint32, deprecated: false
  field :item_definition, 2, optional: true, type: :uint32
  field :class_id, 3, optional: true, type: :uint32, deprecated: false
  field :slot_id, 4, optional: true, type: :uint32, deprecated: false
end

defmodule CMsgGCToGCDirtySDOCache do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :sdo_type, 1, optional: true, type: :uint32
  field :key_uint64, 2, optional: true, type: :uint64
end

defmodule CMsgGCToGCDirtyMultipleSDOCache do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :sdo_type, 1, optional: true, type: :uint32
  field :key_uint64, 2, repeated: true, type: :uint64
end

defmodule CMsgGCCollectItem do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :collection_item_id, 1, optional: true, type: :uint64
  field :subject_item_id, 2, optional: true, type: :uint64
end

defmodule CMsgSDONoMemcached do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CMsgGCToGCUpdateSQLKeyValue do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :key_name, 1, optional: true, type: :string
end

defmodule CMsgGCToGCIsTrustedServer do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steam_id, 1, optional: true, type: :fixed64
end

defmodule CMsgGCToGCIsTrustedServerResponse do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :is_trusted, 1, optional: true, type: :bool
end

defmodule CMsgGCToGCBroadcastConsoleCommand do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :con_command, 1, optional: true, type: :string
end

defmodule CMsgGCServerVersionUpdated do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :server_version, 1, optional: true, type: :uint32
end

defmodule CMsgGCClientVersionUpdated do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :client_version, 1, optional: true, type: :uint32
end

defmodule CMsgGCToGCWebAPIAccountChanged do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CMsgGCToGCRequestPassportItemGrant do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steam_id, 1, optional: true, type: :fixed64
  field :league_id, 2, optional: true, type: :uint32
  field :reward_flag, 3, optional: true, type: :int32
end

defmodule CMsgGameServerInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :server_public_ip_addr, 1, optional: true, type: :fixed32
  field :server_private_ip_addr, 2, optional: true, type: :fixed32
  field :server_port, 3, optional: true, type: :uint32
  field :server_tv_port, 4, optional: true, type: :uint32
  field :server_key, 5, optional: true, type: :string
  field :server_hibernation, 6, optional: true, type: :bool

  field :server_type, 7,
    optional: true,
    type: CMsgGameServerInfo.ServerType,
    default: :UNSPECIFIED,
    enum: true

  field :server_region, 8, optional: true, type: :uint32
  field :server_loadavg, 9, optional: true, type: :float
  field :server_tv_broadcast_time, 10, optional: true, type: :float
  field :server_game_time, 11, optional: true, type: :float
  field :server_relay_connected_steam_id, 12, optional: true, type: :fixed64
  field :relay_slots_max, 13, optional: true, type: :uint32
  field :relays_connected, 14, optional: true, type: :int32
  field :relay_clients_connected, 15, optional: true, type: :int32
  field :relayed_game_server_steam_id, 16, optional: true, type: :fixed64
  field :parent_relay_count, 17, optional: true, type: :uint32
  field :tv_secret_code, 18, optional: true, type: :fixed64
end

defmodule CSOEconEquipSlot do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :account_id, 1, optional: true, type: :uint32, deprecated: false
  field :class_id, 2, optional: true, type: :uint32, deprecated: false
  field :slot_id, 3, optional: true, type: :uint32, deprecated: false
  field :item_id, 4, optional: true, type: :uint64
  field :item_definition, 5, optional: true, type: :uint32
end

defmodule CMsgAdjustEquipSlot do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :class_id, 1, optional: true, type: :uint32
  field :slot_id, 2, optional: true, type: :uint32
  field :item_id, 3, optional: true, type: :uint64
end

defmodule CMsgAdjustEquipSlots do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :slots, 1, repeated: true, type: CMsgAdjustEquipSlot
end