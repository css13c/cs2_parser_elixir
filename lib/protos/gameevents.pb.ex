defmodule EBaseGameEvents do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :GE_VDebugGameSessionIDEvent, 200
  field :GE_PlaceDecalEvent, 201
  field :GE_ClearWorldDecalsEvent, 202
  field :GE_ClearEntityDecalsEvent, 203
  field :GE_ClearDecalsForSkeletonInstanceEvent, 204
  field :GE_Source1LegacyGameEventList, 205
  field :GE_Source1LegacyListenEvents, 206
  field :GE_Source1LegacyGameEvent, 207
  field :GE_SosStartSoundEvent, 208
  field :GE_SosStopSoundEvent, 209
  field :GE_SosSetSoundEventParams, 210
  field :GE_SosSetLibraryStackFields, 211
  field :GE_SosStopSoundEventHash, 212
end

defmodule CMsgVDebugGameSessionIDEvent do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :clientid, 1, optional: true, type: :int32
  field :gamesessionid, 2, optional: true, type: :string
end

defmodule CMsgPlaceDecalEvent do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :position, 1, optional: true, type: CMsgVector
  field :normal, 2, optional: true, type: CMsgVector
  field :saxis, 3, optional: true, type: CMsgVector
  field :decalmaterialindex, 4, optional: true, type: :uint32
  field :flags, 5, optional: true, type: :uint32
  field :color, 6, optional: true, type: :fixed32
  field :width, 7, optional: true, type: :float
  field :height, 8, optional: true, type: :float
  field :depth, 9, optional: true, type: :float
  field :entityhandleindex, 10, optional: true, type: :uint32
  field :skeletoninstancehash, 11, optional: true, type: :fixed32
  field :boneindex, 12, optional: true, type: :int32
  field :translucenthit, 13, optional: true, type: :bool
  field :is_adjacent, 14, optional: true, type: :bool
end

defmodule CMsgClearWorldDecalsEvent do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :flagstoclear, 1, optional: true, type: :uint32
end

defmodule CMsgClearEntityDecalsEvent do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :flagstoclear, 1, optional: true, type: :uint32
end

defmodule CMsgClearDecalsForSkeletonInstanceEvent do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :flagstoclear, 1, optional: true, type: :uint32
  field :entityhandleindex, 2, optional: true, type: :uint32
  field :skeletoninstancehash, 3, optional: true, type: :uint32
end

defmodule CMsgSource1LegacyGameEventList.KeyT do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :type, 1, optional: true, type: :int32
  field :name, 2, optional: true, type: :string
end

defmodule CMsgSource1LegacyGameEventList.DescriptorT do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :eventid, 1, optional: true, type: :int32
  field :name, 2, optional: true, type: :string
  field :keys, 3, repeated: true, type: CMsgSource1LegacyGameEventList.KeyT
end

defmodule CMsgSource1LegacyGameEventList do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :descriptors, 1, repeated: true, type: CMsgSource1LegacyGameEventList.DescriptorT
end

defmodule CMsgSource1LegacyListenEvents do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :playerslot, 1, optional: true, type: :int32
  field :eventarraybits, 2, repeated: true, type: :uint32
end

defmodule CMsgSource1LegacyGameEvent.KeyT do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :type, 1, optional: true, type: :int32
  field :val_string, 2, optional: true, type: :string
  field :val_float, 3, optional: true, type: :float
  field :val_long, 4, optional: true, type: :int32
  field :val_short, 5, optional: true, type: :int32
  field :val_byte, 6, optional: true, type: :int32
  field :val_bool, 7, optional: true, type: :bool
  field :val_uint64, 8, optional: true, type: :uint64
end

defmodule CMsgSource1LegacyGameEvent do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :event_name, 1, optional: true, type: :string
  field :eventid, 2, optional: true, type: :int32
  field :keys, 3, repeated: true, type: CMsgSource1LegacyGameEvent.KeyT
  field :server_tick, 4, optional: true, type: :int32
  field :passthrough, 5, optional: true, type: :int32
end

defmodule CMsgSosStartSoundEvent do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :soundevent_guid, 1, optional: true, type: :int32
  field :soundevent_hash, 2, optional: true, type: :fixed32
  field :source_entity_index, 3, optional: true, type: :int32, default: -1
  field :seed, 4, optional: true, type: :int32
  field :packed_params, 5, optional: true, type: :bytes
  field :start_time, 6, optional: true, type: :float
end

defmodule CMsgSosStopSoundEvent do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :soundevent_guid, 1, optional: true, type: :int32
end

defmodule CMsgSosStopSoundEventHash do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :soundevent_hash, 1, optional: true, type: :fixed32
  field :source_entity_index, 2, optional: true, type: :int32, default: -1
end

defmodule CMsgSosSetSoundEventParams do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :soundevent_guid, 1, optional: true, type: :int32
  field :packed_params, 5, optional: true, type: :bytes
end

defmodule CMsgSosSetLibraryStackFields do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :stack_hash, 1, optional: true, type: :fixed32
  field :packed_fields, 5, optional: true, type: :bytes
end