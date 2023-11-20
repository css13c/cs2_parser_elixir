defmodule CPublishedFile_Subscribe_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :publishedfileid, 1, optional: true, type: :uint64
  field :list_type, 2, optional: true, type: :uint32
  field :appid, 3, optional: true, type: :int32
  field :notify_client, 4, optional: true, type: :bool
end

defmodule CPublishedFile_Subscribe_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CPublishedFile_Unsubscribe_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :publishedfileid, 1, optional: true, type: :uint64
  field :list_type, 2, optional: true, type: :uint32
  field :appid, 3, optional: true, type: :int32
  field :notify_client, 4, optional: true, type: :bool
end

defmodule CPublishedFile_Unsubscribe_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CPublishedFile_Publish_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :appid, 1, optional: true, type: :uint32, deprecated: false
  field :consumer_appid, 2, optional: true, type: :uint32, deprecated: false
  field :cloudfilename, 3, optional: true, type: :string, deprecated: false
  field :preview_cloudfilename, 4, optional: true, type: :string, deprecated: false
  field :title, 5, optional: true, type: :string, deprecated: false
  field :file_description, 6, optional: true, type: :string, deprecated: false
  field :file_type, 7, optional: true, type: :uint32, deprecated: false
  field :consumer_shortcut_name, 8, optional: true, type: :string, deprecated: false
  field :youtube_username, 9, optional: true, type: :string, deprecated: false
  field :youtube_videoid, 10, optional: true, type: :string, deprecated: false
  field :visibility, 11, optional: true, type: :uint32, deprecated: false
  field :redirect_uri, 12, optional: true, type: :string, deprecated: false
  field :tags, 13, repeated: true, type: :string, deprecated: false
  field :collection_type, 14, optional: true, type: :string, deprecated: false
  field :game_type, 15, optional: true, type: :string, deprecated: false
  field :url, 16, optional: true, type: :string, deprecated: false
end

defmodule CPublishedFile_Publish_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :publishedfileid, 1, optional: true, type: :uint64
  field :redirect_uri, 2, optional: true, type: :string
end

defmodule CPublishedFile_GetDetails_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :publishedfileids, 1, repeated: true, type: :fixed64, deprecated: false
  field :includetags, 2, optional: true, type: :bool, deprecated: false
  field :includeadditionalpreviews, 3, optional: true, type: :bool, deprecated: false
  field :includechildren, 4, optional: true, type: :bool, deprecated: false
  field :includekvtags, 5, optional: true, type: :bool, deprecated: false
  field :includevotes, 6, optional: true, type: :bool, deprecated: false
  field :short_description, 8, optional: true, type: :bool, deprecated: false
end

defmodule PublishedFileDetails.Tag do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :tag, 1, optional: true, type: :string
  field :adminonly, 2, optional: true, type: :bool
end

defmodule PublishedFileDetails.Preview do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :previewid, 1, optional: true, type: :uint64
  field :sortorder, 2, optional: true, type: :uint32
  field :url, 3, optional: true, type: :string
  field :size, 4, optional: true, type: :uint32
  field :filename, 5, optional: true, type: :string
  field :youtubevideoid, 6, optional: true, type: :string
end

defmodule PublishedFileDetails.Child do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :publishedfileid, 1, optional: true, type: :uint64
  field :sortorder, 2, optional: true, type: :uint32
  field :file_type, 3, optional: true, type: :uint32
end

defmodule PublishedFileDetails.KVTag do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, optional: true, type: :string
  field :value, 2, optional: true, type: :string
end

defmodule PublishedFileDetails.VoteData do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :score, 1, optional: true, type: :float
  field :votes_up, 2, optional: true, type: :uint32
  field :votes_down, 3, optional: true, type: :uint32
end

defmodule PublishedFileDetails do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :result, 1, optional: true, type: :uint32
  field :publishedfileid, 2, optional: true, type: :uint64
  field :creator, 3, optional: true, type: :fixed64
  field :creator_appid, 4, optional: true, type: :uint32
  field :consumer_appid, 5, optional: true, type: :uint32
  field :consumer_shortcutid, 6, optional: true, type: :uint32
  field :filename, 7, optional: true, type: :string
  field :file_size, 8, optional: true, type: :uint64
  field :preview_file_size, 9, optional: true, type: :uint64
  field :file_url, 10, optional: true, type: :string
  field :preview_url, 11, optional: true, type: :string
  field :youtubevideoid, 12, optional: true, type: :string
  field :url, 13, optional: true, type: :string
  field :hcontent_file, 14, optional: true, type: :fixed64
  field :hcontent_preview, 15, optional: true, type: :fixed64
  field :title, 16, optional: true, type: :string
  field :file_description, 17, optional: true, type: :string
  field :short_description, 18, optional: true, type: :string
  field :time_created, 19, optional: true, type: :uint32
  field :time_updated, 20, optional: true, type: :uint32
  field :visibility, 21, optional: true, type: :uint32
  field :flags, 22, optional: true, type: :uint32
  field :workshop_file, 23, optional: true, type: :bool
  field :workshop_accepted, 24, optional: true, type: :bool
  field :show_subscribe_all, 25, optional: true, type: :bool
  field :num_comments_developer, 26, optional: true, type: :int32
  field :num_comments_public, 27, optional: true, type: :int32
  field :banned, 28, optional: true, type: :bool
  field :ban_reason, 29, optional: true, type: :string
  field :banner, 30, optional: true, type: :fixed64
  field :can_be_deleted, 31, optional: true, type: :bool
  field :incompatible, 32, optional: true, type: :bool
  field :app_name, 33, optional: true, type: :string
  field :file_type, 34, optional: true, type: :uint32
  field :can_subscribe, 35, optional: true, type: :bool
  field :subscriptions, 36, optional: true, type: :uint32
  field :favorited, 37, optional: true, type: :uint32
  field :followers, 38, optional: true, type: :uint32
  field :lifetime_subscriptions, 39, optional: true, type: :uint32
  field :lifetime_favorited, 40, optional: true, type: :uint32
  field :lifetime_followers, 41, optional: true, type: :uint32
  field :views, 42, optional: true, type: :uint32
  field :image_width, 43, optional: true, type: :uint32
  field :image_height, 44, optional: true, type: :uint32
  field :image_url, 45, optional: true, type: :string
  field :spoiler_tag, 46, optional: true, type: :bool
  field :shortcutid, 47, optional: true, type: :uint32
  field :shortcutname, 48, optional: true, type: :string
  field :num_children, 49, optional: true, type: :uint32
  field :num_reports, 50, optional: true, type: :uint32
  field :previews, 51, repeated: true, type: PublishedFileDetails.Preview
  field :tags, 52, repeated: true, type: PublishedFileDetails.Tag
  field :children, 53, repeated: true, type: PublishedFileDetails.Child
  field :kvtags, 54, repeated: true, type: PublishedFileDetails.KVTag
  field :vote_data, 55, optional: true, type: PublishedFileDetails.VoteData
  field :time_subscribed, 56, optional: true, type: :uint32, deprecated: false
end

defmodule CPublishedFile_GetDetails_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :publishedfiledetails, 1, repeated: true, type: PublishedFileDetails
end

defmodule CPublishedFile_GetUserFiles_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :appid, 1, optional: true, type: :uint32, deprecated: false
  field :page, 3, optional: true, type: :uint32, default: 1, deprecated: false
  field :numperpage, 4, optional: true, type: :uint32, default: 1, deprecated: false
  field :sortmethod, 6, optional: true, type: :string, default: "lastupdated", deprecated: false
  field :totalonly, 7, optional: true, type: :bool, deprecated: false
  field :privacy, 9, optional: true, type: :uint32, deprecated: false
  field :ids_only, 10, optional: true, type: :bool, deprecated: false
  field :requiredtags, 11, repeated: true, type: :string, deprecated: false
  field :excludedtags, 12, repeated: true, type: :string, deprecated: false
end

defmodule CPublishedFile_GetUserFiles_Response.App do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :appid, 1, optional: true, type: :uint32
  field :name, 2, optional: true, type: :string
  field :shortcutid, 3, optional: true, type: :uint32
  field :private, 4, optional: true, type: :bool
end

defmodule CPublishedFile_GetUserFiles_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :total, 1, optional: true, type: :uint32
  field :startindex, 2, optional: true, type: :uint32
  field :publishedfiledetails, 3, repeated: true, type: PublishedFileDetails
  field :apps, 4, repeated: true, type: CPublishedFile_GetUserFiles_Response.App
end

defmodule CPublishedFile_Update_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :appid, 1, optional: true, type: :uint32, deprecated: false
  field :publishedfileid, 2, optional: true, type: :fixed64, deprecated: false
  field :title, 3, optional: true, type: :string, deprecated: false
  field :file_description, 4, optional: true, type: :string, deprecated: false
  field :visibility, 5, optional: true, type: :uint32, deprecated: false
  field :tags, 6, repeated: true, type: :string, deprecated: false
  field :filename, 7, optional: true, type: :string, deprecated: false
  field :preview_filename, 8, optional: true, type: :string, deprecated: false
end

defmodule CPublishedFile_Update_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end

defmodule CPublishedFile_RefreshVotingQueue_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :appid, 1, optional: true, type: :uint32
  field :matching_file_type, 2, optional: true, type: :uint32, deprecated: false
  field :tags, 3, repeated: true, type: :string, deprecated: false
  field :match_all_tags, 4, optional: true, type: :bool, default: true, deprecated: false
  field :excluded_tags, 5, repeated: true, type: :string, deprecated: false
  field :desired_queue_size, 6, optional: true, type: :uint32, deprecated: false
end

defmodule CPublishedFile_RefreshVotingQueue_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"
end