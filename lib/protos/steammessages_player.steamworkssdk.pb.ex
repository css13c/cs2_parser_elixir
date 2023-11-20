defmodule ENotificationSetting do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :k_ENotificationSettingNotifyUseDefault, 0
  field :k_ENotificationSettingAlways, 1
  field :k_ENotificationSettingNever, 2
end

defmodule CPlayer_GetMutualFriendsForIncomingInvites_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CPlayer_IncomingInviteMutualFriendList do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steamid, 1, optional: true, type: :fixed64
  field :mutual_friend_account_ids, 2, repeated: true, type: :uint32
end

defmodule CPlayer_GetMutualFriendsForIncomingInvites_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :incoming_invite_mutual_friends_lists, 1,
    repeated: true,
    type: CPlayer_IncomingInviteMutualFriendList
end

defmodule CPlayer_GetFriendsGameplayInfo_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :appid, 1, optional: true, type: :uint32
end

defmodule CPlayer_GetFriendsGameplayInfo_Response.FriendsGameplayInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steamid, 1, optional: true, type: :fixed64
  field :minutes_played, 2, optional: true, type: :uint32
  field :minutes_played_forever, 3, optional: true, type: :uint32
end

defmodule CPlayer_GetFriendsGameplayInfo_Response.OwnGameplayInfo do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steamid, 1, optional: true, type: :fixed64
  field :minutes_played, 2, optional: true, type: :uint32
  field :minutes_played_forever, 3, optional: true, type: :uint32
  field :in_wishlist, 4, optional: true, type: :bool
  field :owned, 5, optional: true, type: :bool
end

defmodule CPlayer_GetFriendsGameplayInfo_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :your_info, 1,
    optional: true,
    type: CPlayer_GetFriendsGameplayInfo_Response.OwnGameplayInfo

  field :in_game, 2,
    repeated: true,
    type: CPlayer_GetFriendsGameplayInfo_Response.FriendsGameplayInfo

  field :played_recently, 3,
    repeated: true,
    type: CPlayer_GetFriendsGameplayInfo_Response.FriendsGameplayInfo

  field :played_ever, 4,
    repeated: true,
    type: CPlayer_GetFriendsGameplayInfo_Response.FriendsGameplayInfo

  field :owns, 5,
    repeated: true,
    type: CPlayer_GetFriendsGameplayInfo_Response.FriendsGameplayInfo

  field :in_wishlist, 6,
    repeated: true,
    type: CPlayer_GetFriendsGameplayInfo_Response.FriendsGameplayInfo
end

defmodule CPlayer_GetGameBadgeLevels_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :appid, 1, optional: true, type: :uint32
end

defmodule CPlayer_GetGameBadgeLevels_Response.Badge do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :level, 1, optional: true, type: :int32
  field :series, 2, optional: true, type: :int32
  field :border_color, 3, optional: true, type: :uint32
end

defmodule CPlayer_GetGameBadgeLevels_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :player_level, 1, optional: true, type: :uint32
  field :badges, 2, repeated: true, type: CPlayer_GetGameBadgeLevels_Response.Badge
end

defmodule CPlayer_GetLastPlayedTimes_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :min_last_played, 1, optional: true, type: :uint32, deprecated: false
end

defmodule CPlayer_GetLastPlayedTimes_Response.Game do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :appid, 1, optional: true, type: :int32
  field :last_playtime, 2, optional: true, type: :uint32
  field :playtime_2weeks, 3, optional: true, type: :int32
  field :playtime_forever, 4, optional: true, type: :int32
  field :first_playtime, 5, optional: true, type: :uint32
end

defmodule CPlayer_GetLastPlayedTimes_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :games, 1, repeated: true, type: CPlayer_GetLastPlayedTimes_Response.Game
end

defmodule CPlayer_AcceptSSA_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CPlayer_AcceptSSA_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CPlayer_GetNicknameList_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CPlayer_GetNicknameList_Response.PlayerNickname do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :accountid, 1, optional: true, type: :fixed32
  field :nickname, 2, optional: true, type: :string
end

defmodule CPlayer_GetNicknameList_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :nicknames, 1, repeated: true, type: CPlayer_GetNicknameList_Response.PlayerNickname
end

defmodule CPlayer_GetPerFriendPreferences_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule PerFriendPreferences do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :accountid, 1, optional: true, type: :fixed32
  field :nickname, 2, optional: true, type: :string

  field :notifications_showingame, 3,
    optional: true,
    type: ENotificationSetting,
    default: :k_ENotificationSettingNotifyUseDefault,
    enum: true

  field :notifications_showonline, 4,
    optional: true,
    type: ENotificationSetting,
    default: :k_ENotificationSettingNotifyUseDefault,
    enum: true

  field :notifications_showmessages, 5,
    optional: true,
    type: ENotificationSetting,
    default: :k_ENotificationSettingNotifyUseDefault,
    enum: true

  field :sounds_showingame, 6,
    optional: true,
    type: ENotificationSetting,
    default: :k_ENotificationSettingNotifyUseDefault,
    enum: true

  field :sounds_showonline, 7,
    optional: true,
    type: ENotificationSetting,
    default: :k_ENotificationSettingNotifyUseDefault,
    enum: true

  field :sounds_showmessages, 8,
    optional: true,
    type: ENotificationSetting,
    default: :k_ENotificationSettingNotifyUseDefault,
    enum: true

  field :notifications_sendmobile, 9,
    optional: true,
    type: ENotificationSetting,
    default: :k_ENotificationSettingNotifyUseDefault,
    enum: true
end

defmodule CPlayer_GetPerFriendPreferences_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :preferences, 1, repeated: true, type: PerFriendPreferences
end

defmodule CPlayer_SetPerFriendPreferences_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :preferences, 1, optional: true, type: PerFriendPreferences
end

defmodule CPlayer_SetPerFriendPreferences_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CPlayer_AddFriend_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steamid, 1, optional: true, type: :fixed64, deprecated: false
end

defmodule CPlayer_AddFriend_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :invite_sent, 1, optional: true, type: :bool, deprecated: false
  field :friend_relationship, 2, optional: true, type: :uint32, deprecated: false
end

defmodule CPlayer_RemoveFriend_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steamid, 1, optional: true, type: :fixed64, deprecated: false
end

defmodule CPlayer_RemoveFriend_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :friend_relationship, 1, optional: true, type: :uint32, deprecated: false
end

defmodule CPlayer_IgnoreFriend_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steamid, 1, optional: true, type: :fixed64
  field :unignore, 2, optional: true, type: :bool, deprecated: false
end

defmodule CPlayer_IgnoreFriend_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :friend_relationship, 1, optional: true, type: :uint32, deprecated: false
end

defmodule CPlayer_GetCommunityPreferences_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CPlayer_CommunityPreferences do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :hide_adult_content_violence, 1, optional: true, type: :bool, default: true
  field :hide_adult_content_sex, 2, optional: true, type: :bool, default: true
  field :parenthesize_nicknames, 4, optional: true, type: :bool, default: false
  field :timestamp_updated, 3, optional: true, type: :uint32
end

defmodule CPlayer_GetCommunityPreferences_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :preferences, 1, optional: true, type: CPlayer_CommunityPreferences
end

defmodule CPlayer_SetCommunityPreferences_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :preferences, 1, optional: true, type: CPlayer_CommunityPreferences
end

defmodule CPlayer_SetCommunityPreferences_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CPlayer_GetNewSteamAnnouncementState_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :language, 1, optional: true, type: :int32
end

defmodule CPlayer_GetNewSteamAnnouncementState_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :state, 1, optional: true, type: :int32
  field :announcement_headline, 2, optional: true, type: :string
  field :announcement_url, 3, optional: true, type: :string
  field :time_posted, 4, optional: true, type: :uint32
  field :announcement_gid, 5, optional: true, type: :uint64
end

defmodule CPlayer_UpdateSteamAnnouncementLastRead_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :announcement_gid, 1, optional: true, type: :uint64
  field :time_posted, 2, optional: true, type: :uint32
end

defmodule CPlayer_UpdateSteamAnnouncementLastRead_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end