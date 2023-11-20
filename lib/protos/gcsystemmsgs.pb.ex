defmodule EGCSystemMsg do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :k_EGCMsgInvalid, 0
  field :k_EGCMsgMulti, 1
  field :k_EGCMsgGenericReply, 10
  field :k_EGCMsgSystemBase, 50
  field :k_EGCMsgAchievementAwarded, 51
  field :k_EGCMsgConCommand, 52
  field :k_EGCMsgStartPlaying, 53
  field :k_EGCMsgStopPlaying, 54
  field :k_EGCMsgStartGameserver, 55
  field :k_EGCMsgStopGameserver, 56
  field :k_EGCMsgWGRequest, 57
  field :k_EGCMsgWGResponse, 58
  field :k_EGCMsgGetUserGameStatsSchema, 59
  field :k_EGCMsgGetUserGameStatsSchemaResponse, 60
  field :k_EGCMsgGetUserStatsDEPRECATED, 61
  field :k_EGCMsgGetUserStatsResponse, 62
  field :k_EGCMsgAppInfoUpdated, 63
  field :k_EGCMsgValidateSession, 64
  field :k_EGCMsgValidateSessionResponse, 65
  field :k_EGCMsgLookupAccountFromInput, 66
  field :k_EGCMsgSendHTTPRequest, 67
  field :k_EGCMsgSendHTTPRequestResponse, 68
  field :k_EGCMsgPreTestSetup, 69
  field :k_EGCMsgRecordSupportAction, 70
  field :k_EGCMsgGetAccountDetails_DEPRECATED, 71
  field :k_EGCMsgReceiveInterAppMessage, 73
  field :k_EGCMsgFindAccounts, 74
  field :k_EGCMsgPostAlert, 75
  field :k_EGCMsgGetLicenses, 76
  field :k_EGCMsgGetUserStats, 77
  field :k_EGCMsgGetCommands, 78
  field :k_EGCMsgGetCommandsResponse, 79
  field :k_EGCMsgAddFreeLicense, 80
  field :k_EGCMsgAddFreeLicenseResponse, 81
  field :k_EGCMsgGetIPLocation, 82
  field :k_EGCMsgGetIPLocationResponse, 83
  field :k_EGCMsgSystemStatsSchema, 84
  field :k_EGCMsgGetSystemStats, 85
  field :k_EGCMsgGetSystemStatsResponse, 86
  field :k_EGCMsgSendEmail, 87
  field :k_EGCMsgSendEmailResponse, 88
  field :k_EGCMsgGetEmailTemplate, 89
  field :k_EGCMsgGetEmailTemplateResponse, 90
  field :k_EGCMsgGrantGuestPass, 91
  field :k_EGCMsgGrantGuestPassResponse, 92
  field :k_EGCMsgGetAccountDetails, 93
  field :k_EGCMsgGetAccountDetailsResponse, 94
  field :k_EGCMsgGetPersonaNames, 95
  field :k_EGCMsgGetPersonaNamesResponse, 96
  field :k_EGCMsgMultiplexMsg, 97
  field :k_EGCMsgMultiplexMsgResponse, 98
  field :k_EGCMsgWebAPIRegisterInterfaces, 101
  field :k_EGCMsgWebAPIJobRequest, 102
  field :k_EGCMsgWebAPIJobRequestHttpResponse, 104
  field :k_EGCMsgWebAPIJobRequestForwardResponse, 105
  field :k_EGCMsgMemCachedGet, 200
  field :k_EGCMsgMemCachedGetResponse, 201
  field :k_EGCMsgMemCachedSet, 202
  field :k_EGCMsgMemCachedDelete, 203
  field :k_EGCMsgMemCachedStats, 204
  field :k_EGCMsgMemCachedStatsResponse, 205
  field :k_EGCMsgMasterSetDirectory, 220
  field :k_EGCMsgMasterSetDirectoryResponse, 221
  field :k_EGCMsgMasterSetWebAPIRouting, 222
  field :k_EGCMsgMasterSetWebAPIRoutingResponse, 223
  field :k_EGCMsgMasterSetClientMsgRouting, 224
  field :k_EGCMsgMasterSetClientMsgRoutingResponse, 225
  field :k_EGCMsgSetOptions, 226
  field :k_EGCMsgSetOptionsResponse, 227
  field :k_EGCMsgSystemBase2, 500
  field :k_EGCMsgGetPurchaseTrustStatus, 501
  field :k_EGCMsgGetPurchaseTrustStatusResponse, 502
  field :k_EGCMsgUpdateSession, 503
  field :k_EGCMsgGCAccountVacStatusChange, 504
  field :k_EGCMsgCheckFriendship, 505
  field :k_EGCMsgCheckFriendshipResponse, 506
  field :k_EGCMsgGetPartnerAccountLink, 507
  field :k_EGCMsgGetPartnerAccountLinkResponse, 508
  field :k_EGCMsgDPPartnerMicroTxns, 512
  field :k_EGCMsgDPPartnerMicroTxnsResponse, 513
  field :k_EGCMsgVacVerificationChange, 518
  field :k_EGCMsgAccountPhoneNumberChange, 519
  field :k_EGCMsgInviteUserToLobby, 523
  field :k_EGCMsgGetGamePersonalDataCategoriesRequest, 524
  field :k_EGCMsgGetGamePersonalDataCategoriesResponse, 525
  field :k_EGCMsgGetGamePersonalDataEntriesRequest, 526
  field :k_EGCMsgGetGamePersonalDataEntriesResponse, 527
  field :k_EGCMsgTerminateGamePersonalDataEntriesRequest, 528
  field :k_EGCMsgTerminateGamePersonalDataEntriesResponse, 529
  field :k_EGCMsgRecurringSubscriptionStatusChange, 530
  field :k_EGCMsgDirectServiceMethod, 531
  field :k_EGCMsgDirectServiceMethodResponse, 532
end

defmodule ESOMsg do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :k_ESOMsg_Create, 21
  field :k_ESOMsg_Update, 22
  field :k_ESOMsg_Destroy, 23
  field :k_ESOMsg_CacheSubscribed, 24
  field :k_ESOMsg_CacheUnsubscribed, 25
  field :k_ESOMsg_UpdateMultiple, 26
  field :k_ESOMsg_CacheSubscriptionCheck, 27
  field :k_ESOMsg_CacheSubscriptionRefresh, 28
end

defmodule EGCBaseClientMsg do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :k_EMsgGCClientWelcome, 4004
  field :k_EMsgGCServerWelcome, 4005
  field :k_EMsgGCClientHello, 4006
  field :k_EMsgGCServerHello, 4007
  field :k_EMsgGCClientConnectionStatus, 4009
  field :k_EMsgGCServerConnectionStatus, 4010
  field :k_EMsgGCClientHelloPartner, 4011
  field :k_EMsgGCClientHelloPW, 4012
  field :k_EMsgGCClientHelloR2, 4013
  field :k_EMsgGCClientHelloR3, 4014
  field :k_EMsgGCClientHelloR4, 4015
end

defmodule EGCToGCMsg do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :k_EGCToGCMsgMasterAck, 150
  field :k_EGCToGCMsgMasterAckResponse, 151
  field :k_EGCToGCMsgRouted, 152
  field :k_EGCToGCMsgRoutedReply, 153
  field :k_EMsgUpdateSessionIP, 154
  field :k_EMsgRequestSessionIP, 155
  field :k_EMsgRequestSessionIPResponse, 156
  field :k_EGCToGCMsgMasterStartupComplete, 157
end

defmodule ECommunityItemClass do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :k_ECommunityItemClass_Invalid, 0
  field :k_ECommunityItemClass_Badge, 1
  field :k_ECommunityItemClass_GameCard, 2
  field :k_ECommunityItemClass_ProfileBackground, 3
  field :k_ECommunityItemClass_Emoticon, 4
  field :k_ECommunityItemClass_BoosterPack, 5
  field :k_ECommunityItemClass_Consumable, 6
  field :k_ECommunityItemClass_GameGoo, 7
  field :k_ECommunityItemClass_ProfileModifier, 8
  field :k_ECommunityItemClass_Scene, 9
  field :k_ECommunityItemClass_SalienItem, 10
end

defmodule ECommunityItemAttribute do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :k_ECommunityItemAttribute_Invalid, 0
  field :k_ECommunityItemAttribute_CardBorder, 1
  field :k_ECommunityItemAttribute_Level, 2
  field :k_ECommunityItemAttribute_IssueNumber, 3
  field :k_ECommunityItemAttribute_TradableTime, 4
  field :k_ECommunityItemAttribute_StorePackageID, 5
  field :k_ECommunityItemAttribute_CommunityItemAppID, 6
  field :k_ECommunityItemAttribute_CommunityItemType, 7
  field :k_ECommunityItemAttribute_ProfileModiferEnabled, 8
  field :k_ECommunityItemAttribute_ExpiryTime, 9
end

defmodule CMsgGCHVacVerificationChange do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steamid, 1, optional: true, type: :fixed64
  field :appid, 2, optional: true, type: :uint32
  field :is_verified, 3, optional: true, type: :bool
end

defmodule CMsgGCHAccountPhoneNumberChange do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steamid, 1, optional: true, type: :fixed64
  field :appid, 2, optional: true, type: :uint32
  field :phone_id, 3, optional: true, type: :uint64
  field :is_verified, 4, optional: true, type: :bool
  field :is_identifying, 5, optional: true, type: :bool
end

defmodule CMsgGCHInviteUserToLobby do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steamid, 1, optional: true, type: :fixed64
  field :appid, 2, optional: true, type: :uint32
  field :steamid_invited, 3, optional: true, type: :fixed64
  field :steamid_lobby, 4, optional: true, type: :fixed64
end

defmodule CMsgGCHRecurringSubscriptionStatusChange do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steamid, 1, optional: true, type: :fixed64
  field :appid, 2, optional: true, type: :uint32
  field :agreementid, 3, optional: true, type: :fixed64
  field :active, 4, optional: true, type: :bool
end

defmodule CQuest_PublisherAddCommunityItemsToPlayer_Request.Attribute do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :attribute, 1, optional: true, type: :uint32
  field :value, 2, optional: true, type: :uint64
end

defmodule CQuest_PublisherAddCommunityItemsToPlayer_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steamid, 1, optional: true, type: :uint64
  field :appid, 2, optional: true, type: :uint32
  field :match_item_type, 3, optional: true, type: :uint32
  field :match_item_class, 4, optional: true, type: :uint32
  field :prefix_item_name, 5, optional: true, type: :string

  field :attributes, 6,
    repeated: true,
    type: CQuest_PublisherAddCommunityItemsToPlayer_Request.Attribute

  field :note, 7, optional: true, type: :string
end

defmodule CQuest_PublisherAddCommunityItemsToPlayer_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :items_matched, 1, optional: true, type: :uint32
  field :items_granted, 2, optional: true, type: :uint32
end

defmodule CCommunity_GamePersonalDataCategoryInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :type, 1, optional: true, type: :string
  field :localization_token, 2, optional: true, type: :string
  field :template_file, 3, optional: true, type: :string
end

defmodule CCommunity_GetGamePersonalDataCategories_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :appid, 1, optional: true, type: :uint32
end

defmodule CCommunity_GetGamePersonalDataCategories_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :categories, 1, repeated: true, type: CCommunity_GamePersonalDataCategoryInfo
  field :app_assets_basename, 2, optional: true, type: :string
end

defmodule CCommunity_GetGamePersonalDataEntries_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :appid, 1, optional: true, type: :uint32
  field :steamid, 2, optional: true, type: :uint64
  field :type, 3, optional: true, type: :string
  field :continue_token, 4, optional: true, type: :string
end

defmodule CCommunity_GetGamePersonalDataEntries_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :gceresult, 1, optional: true, type: :uint32
  field :entries, 2, repeated: true, type: :string
  field :continue_token, 3, optional: true, type: :string
end

defmodule CCommunity_TerminateGamePersonalDataEntries_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :appid, 1, optional: true, type: :uint32
  field :steamid, 2, optional: true, type: :uint64
end

defmodule CCommunity_TerminateGamePersonalDataEntries_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :gceresult, 1, optional: true, type: :uint32
end