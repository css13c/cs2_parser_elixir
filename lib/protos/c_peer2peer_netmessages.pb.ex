defmodule P2P_Messages do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :p2p_TextMessage, 256
  field :p2p_Voice, 257
  field :p2p_Ping, 258
  field :p2p_VRAvatarPosition, 259
  field :p2p_WatchSynchronization, 260
end

defmodule CP2P_Voice.Handler_Flags do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :Played_Audio, 1
end

defmodule CP2P_TextMessage do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :text, 1, optional: true, type: :bytes
end

defmodule CSteam_Voice_Encoding do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :voice_data, 1, optional: true, type: :bytes
end

defmodule CP2P_Voice do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :audio, 1, optional: true, type: CMsgVoiceAudio
  field :broadcast_group, 2, optional: true, type: :uint32
end

defmodule CP2P_Ping do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :send_time, 1, required: true, type: :uint64
  field :is_reply, 2, required: true, type: :bool
end

defmodule CP2P_VRAvatarPosition.COrientation do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :pos, 1, optional: true, type: CMsgVector
  field :ang, 2, optional: true, type: CMsgQAngle
end

defmodule CP2P_VRAvatarPosition do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :body_parts, 1, repeated: true, type: CP2P_VRAvatarPosition.COrientation
  field :hat_id, 2, optional: true, type: :int32
  field :scene_id, 3, optional: true, type: :int32
  field :world_scale, 4, optional: true, type: :int32
end

defmodule CP2P_WatchSynchronization do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :demo_tick, 1, optional: true, type: :int32
  field :paused, 2, optional: true, type: :bool
  field :tv_listen_voice_indices, 3, optional: true, type: :uint64
  field :dota_spectator_mode, 4, optional: true, type: :int32
  field :dota_spectator_watching_broadcaster, 5, optional: true, type: :bool
  field :dota_spectator_hero_index, 6, optional: true, type: :int32
  field :dota_spectator_autospeed, 7, optional: true, type: :int32
  field :dota_replay_speed, 8, optional: true, type: :int32
end