defmodule EGCItemMsg do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :k_EMsgGCBase, 1000
  field :k_EMsgGCSetItemPosition, 1001
  field :k_EMsgGCCraft, 1002
  field :k_EMsgGCCraftResponse, 1003
  field :k_EMsgGCDelete, 1004
  field :k_EMsgGCVerifyCacheSubscription, 1005
  field :k_EMsgGCNameItem, 1006
  field :k_EMsgGCUnlockCrate, 1007
  field :k_EMsgGCUnlockCrateResponse, 1008
  field :k_EMsgGCPaintItem, 1009
  field :k_EMsgGCPaintItemResponse, 1010
  field :k_EMsgGCGoldenWrenchBroadcast, 1011
  field :k_EMsgGCMOTDRequest, 1012
  field :k_EMsgGCMOTDRequestResponse, 1013
  field :k_EMsgGCAddItemToSocket_DEPRECATED, 1014
  field :k_EMsgGCAddItemToSocketResponse_DEPRECATED, 1015
  field :k_EMsgGCAddSocketToBaseItem_DEPRECATED, 1016
  field :k_EMsgGCAddSocketToItem_DEPRECATED, 1017
  field :k_EMsgGCAddSocketToItemResponse_DEPRECATED, 1018
  field :k_EMsgGCNameBaseItem, 1019
  field :k_EMsgGCNameBaseItemResponse, 1020
  field :k_EMsgGCRemoveSocketItem_DEPRECATED, 1021
  field :k_EMsgGCRemoveSocketItemResponse_DEPRECATED, 1022
  field :k_EMsgGCCustomizeItemTexture, 1023
  field :k_EMsgGCCustomizeItemTextureResponse, 1024
  field :k_EMsgGCUseItemRequest, 1025
  field :k_EMsgGCUseItemResponse, 1026
  field :k_EMsgGCGiftedItems_DEPRECATED, 1027
  field :k_EMsgGCRemoveItemName, 1030
  field :k_EMsgGCRemoveItemPaint, 1031
  field :k_EMsgGCGiftWrapItem, 1032
  field :k_EMsgGCGiftWrapItemResponse, 1033
  field :k_EMsgGCDeliverGift, 1034
  field :k_EMsgGCDeliverGiftResponseGiver, 1035
  field :k_EMsgGCDeliverGiftResponseReceiver, 1036
  field :k_EMsgGCUnwrapGiftRequest, 1037
  field :k_EMsgGCUnwrapGiftResponse, 1038
  field :k_EMsgGCSetItemStyle, 1039
  field :k_EMsgGCUsedClaimCodeItem, 1040
  field :k_EMsgGCSortItems, 1041
  field :k_EMsgGC_RevolvingLootList_DEPRECATED, 1042
  field :k_EMsgGCLookupAccount, 1043
  field :k_EMsgGCLookupAccountResponse, 1044
  field :k_EMsgGCLookupAccountName, 1045
  field :k_EMsgGCLookupAccountNameResponse, 1046
  field :k_EMsgGCUpdateItemSchema, 1049
  field :k_EMsgGCRemoveCustomTexture, 1051
  field :k_EMsgGCRemoveCustomTextureResponse, 1052
  field :k_EMsgGCRemoveMakersMark, 1053
  field :k_EMsgGCRemoveMakersMarkResponse, 1054
  field :k_EMsgGCRemoveUniqueCraftIndex, 1055
  field :k_EMsgGCRemoveUniqueCraftIndexResponse, 1056
  field :k_EMsgGCSaxxyBroadcast, 1057
  field :k_EMsgGCBackpackSortFinished, 1058
  field :k_EMsgGCAdjustItemEquippedState, 1059
  field :k_EMsgGCCollectItem, 1061
  field :k_EMsgGCItemAcknowledged__DEPRECATED, 1062
  field :k_EMsgGC_ReportAbuse, 1065
  field :k_EMsgGC_ReportAbuseResponse, 1066
  field :k_EMsgGCNameItemNotification, 1068
  field :k_EMsgGCApplyConsumableEffects, 1069
  field :k_EMsgGCConsumableExhausted, 1070
  field :k_EMsgGCShowItemsPickedUp, 1071
  field :k_EMsgGCClientDisplayNotification, 1072
  field :k_EMsgGCApplyStrangePart, 1073
  field :k_EMsgGC_IncrementKillCountAttribute, 1074
  field :k_EMsgGC_IncrementKillCountResponse, 1075
  field :k_EMsgGCApplyPennantUpgrade, 1076
  field :k_EMsgGCSetItemPositions, 1077
  field :k_EMsgGCApplyEggEssence, 1078
  field :k_EMsgGCNameEggEssenceResponse, 1079
  field :k_EMsgGCPaintKitItem, 1080
  field :k_EMsgGCPaintKitBaseItem, 1081
  field :k_EMsgGCPaintKitItemResponse, 1082
  field :k_EMsgGCGiftedItems, 1083
  field :k_EMsgGCUnlockItemStyle, 1084
  field :k_EMsgGCUnlockItemStyleResponse, 1085
  field :k_EMsgGCApplySticker, 1086
  field :k_EMsgGCItemAcknowledged, 1087
  field :k_EMsgGCStatTrakSwap, 1088
  field :k_EMsgGCUserTrackTimePlayedConsecutively, 1089
  field :k_EMsgGCItemCustomizationNotification, 1090
  field :k_EMsgGCModifyItemAttribute, 1091
  field :k_EMsgGCCasketItemAdd, 1092
  field :k_EMsgGCCasketItemExtract, 1093
  field :k_EMsgGCCasketItemLoadContents, 1094
  field :k_EMsgGCTradingBase, 1500
  field :k_EMsgGCTrading_InitiateTradeRequest, 1501
  field :k_EMsgGCTrading_InitiateTradeResponse, 1502
  field :k_EMsgGCTrading_StartSession, 1503
  field :k_EMsgGCTrading_SetItem, 1504
  field :k_EMsgGCTrading_RemoveItem, 1505
  field :k_EMsgGCTrading_UpdateTradeInfo, 1506
  field :k_EMsgGCTrading_SetReadiness, 1507
  field :k_EMsgGCTrading_ReadinessResponse, 1508
  field :k_EMsgGCTrading_SessionClosed, 1509
  field :k_EMsgGCTrading_CancelSession, 1510
  field :k_EMsgGCTrading_TradeChatMsg, 1511
  field :k_EMsgGCTrading_ConfirmOffer, 1512
  field :k_EMsgGCTrading_TradeTypingChatMsg, 1513
  field :k_EMsgGCServerBrowser_FavoriteServer, 1601
  field :k_EMsgGCServerBrowser_BlacklistServer, 1602
  field :k_EMsgGCServerRentalsBase, 1700
  field :k_EMsgGCItemPreviewCheckStatus, 1701
  field :k_EMsgGCItemPreviewStatusResponse, 1702
  field :k_EMsgGCItemPreviewRequest, 1703
  field :k_EMsgGCItemPreviewRequestResponse, 1704
  field :k_EMsgGCItemPreviewExpire, 1705
  field :k_EMsgGCItemPreviewExpireNotification, 1706
  field :k_EMsgGCItemPreviewItemBoughtNotification, 1707
  field :k_EMsgGCDev_NewItemRequest, 2001
  field :k_EMsgGCDev_NewItemRequestResponse, 2002
  field :k_EMsgGCDev_PaintKitDropItem, 2003
  field :k_EMsgGCStoreGetUserData, 2500
  field :k_EMsgGCStoreGetUserDataResponse, 2501
  field :k_EMsgGCStorePurchaseInit_DEPRECATED, 2502
  field :k_EMsgGCStorePurchaseInitResponse_DEPRECATED, 2503
  field :k_EMsgGCStorePurchaseFinalize, 2504
  field :k_EMsgGCStorePurchaseFinalizeResponse, 2505
  field :k_EMsgGCStorePurchaseCancel, 2506
  field :k_EMsgGCStorePurchaseCancelResponse, 2507
  field :k_EMsgGCStorePurchaseQueryTxn, 2508
  field :k_EMsgGCStorePurchaseQueryTxnResponse, 2509
  field :k_EMsgGCStorePurchaseInit, 2510
  field :k_EMsgGCStorePurchaseInitResponse, 2511
  field :k_EMsgGCBannedWordListRequest, 2512
  field :k_EMsgGCBannedWordListResponse, 2513
  field :k_EMsgGCToGCBannedWordListBroadcast, 2514
  field :k_EMsgGCToGCBannedWordListUpdated, 2515
  field :k_EMsgGCToGCDirtySDOCache, 2516
  field :k_EMsgGCToGCDirtyMultipleSDOCache, 2517
  field :k_EMsgGCToGCUpdateSQLKeyValue, 2518
  field :k_EMsgGCToGCIsTrustedServer, 2519
  field :k_EMsgGCToGCIsTrustedServerResponse, 2520
  field :k_EMsgGCToGCBroadcastConsoleCommand, 2521
  field :k_EMsgGCServerVersionUpdated, 2522
  field :k_EMsgGCToGCWebAPIAccountChanged, 2524
  field :k_EMsgGCRequestAnnouncements, 2525
  field :k_EMsgGCRequestAnnouncementsResponse, 2526
  field :k_EMsgGCRequestPassportItemGrant, 2527
  field :k_EMsgGCClientVersionUpdated, 2528
  field :k_EMsgGCAdjustItemEquippedStateMulti, 2529
  field :k_EMsgGCRecurringSubscriptionStatus, 2530
  field :k_EMsgGCAdjustEquipSlotsManual, 2531
  field :k_EMsgGCAdjustEquipSlotsShuffle, 2532
end

defmodule EGCMsgResponse do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :k_EGCMsgResponseOK, 0
  field :k_EGCMsgResponseDenied, 1
  field :k_EGCMsgResponseServerError, 2
  field :k_EGCMsgResponseTimeout, 3
  field :k_EGCMsgResponseInvalid, 4
  field :k_EGCMsgResponseNoMatch, 5
  field :k_EGCMsgResponseUnknownError, 6
  field :k_EGCMsgResponseNotLoggedOn, 7
  field :k_EGCMsgFailedToCreate, 8
  field :k_EGCMsgLimitExceeded, 9
  field :k_EGCMsgCommitUnfinalized, 10
end

defmodule EUnlockStyle do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :k_UnlockStyle_Succeeded, 0
  field :k_UnlockStyle_Failed_PreReq, 1
  field :k_UnlockStyle_Failed_CantAfford, 2
  field :k_UnlockStyle_Failed_CantCommit, 3
  field :k_UnlockStyle_Failed_CantLockCache, 4
  field :k_UnlockStyle_Failed_CantAffordAttrib, 5
end

defmodule EGCItemCustomizationNotification do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :k_EGCItemCustomizationNotification_NameItem, 1006
  field :k_EGCItemCustomizationNotification_UnlockCrate, 1007
  field :k_EGCItemCustomizationNotification_XRayItemReveal, 1008
  field :k_EGCItemCustomizationNotification_XRayItemClaim, 1009
  field :k_EGCItemCustomizationNotification_CasketTooFull, 1011
  field :k_EGCItemCustomizationNotification_CasketContents, 1012
  field :k_EGCItemCustomizationNotification_CasketAdded, 1013
  field :k_EGCItemCustomizationNotification_CasketRemoved, 1014
  field :k_EGCItemCustomizationNotification_CasketInvFull, 1015
  field :k_EGCItemCustomizationNotification_NameBaseItem, 1019
  field :k_EGCItemCustomizationNotification_RemoveItemName, 1030
  field :k_EGCItemCustomizationNotification_RemoveSticker, 1053
  field :k_EGCItemCustomizationNotification_ApplySticker, 1086
  field :k_EGCItemCustomizationNotification_StatTrakSwap, 1088
  field :k_EGCItemCustomizationNotification_RemovePatch, 1089
  field :k_EGCItemCustomizationNotification_ApplyPatch, 1090
  field :k_EGCItemCustomizationNotification_ActivateFanToken, 9178
  field :k_EGCItemCustomizationNotification_ActivateOperationCoin, 9179
  field :k_EGCItemCustomizationNotification_GraffitiUnseal, 9185
  field :k_EGCItemCustomizationNotification_GenerateSouvenir, 9204
  field :k_EGCItemCustomizationNotification_ClientRedeemMissionReward, 9209
  field :k_EGCItemCustomizationNotification_ClientRedeemFreeReward, 9219
end

defmodule CMsgGCGiftedItems do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :accountid, 1, optional: true, type: :uint32
  field :giftdefindex, 2, optional: true, type: :uint32
  field :max_gifts_possible, 3, optional: true, type: :uint32
  field :num_eligible_recipients, 4, optional: true, type: :uint32
  field :recipients_accountids, 5, repeated: true, type: :uint32
end

defmodule CMsgApplyAutograph do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :autograph_item_id, 1, optional: true, type: :uint64
  field :item_item_id, 2, optional: true, type: :uint64
end

defmodule CMsgCasketItem do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :casket_item_id, 1, optional: true, type: :uint64
  field :item_item_id, 2, optional: true, type: :uint64
end

defmodule CMsgGCUserTrackTimePlayedConsecutively do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :state, 1, optional: true, type: :uint32
end

defmodule CMsgGCItemCustomizationNotification do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :item_id, 1, repeated: true, type: :uint64
  field :request, 2, optional: true, type: :uint32
end

defmodule CAttribute_String do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :value, 1, optional: true, type: :string
end