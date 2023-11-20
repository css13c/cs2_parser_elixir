defmodule CBaseUserCmdPB.EPredictionReason do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :k_eNone, 0
  field :k_eNormal, 1
  field :k_eForSubtickFrame, 2
end

defmodule CInButtonStatePB do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :buttonstate1, 1, optional: true, type: :uint64
  field :buttonstate2, 2, optional: true, type: :uint64
  field :buttonstate3, 3, optional: true, type: :uint64
end

defmodule CSubtickMoveStep do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :button, 1, optional: true, type: :uint64
  field :pressed, 2, optional: true, type: :bool
  field :when, 3, optional: true, type: :float
end

defmodule CBaseUserCmdPB do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :command_number, 1, optional: true, type: :int32
  field :tick_count, 2, optional: true, type: :int32
  field :buttons_pb, 3, optional: true, type: CInButtonStatePB
  field :viewangles, 4, optional: true, type: CMsgQAngle
  field :forwardmove, 5, optional: true, type: :float
  field :leftmove, 6, optional: true, type: :float
  field :upmove, 7, optional: true, type: :float
  field :impulse, 8, optional: true, type: :int32
  field :weaponselect, 9, optional: true, type: :int32
  field :random_seed, 10, optional: true, type: :int32
  field :mousedx, 11, optional: true, type: :int32
  field :mousedy, 12, optional: true, type: :int32
  field :hasbeenpredicted, 13, optional: true, type: :bool
  field :pawn_entity_handle, 14, optional: true, type: :uint32, default: 16_777_215
  field :subtick_moves, 18, repeated: true, type: CSubtickMoveStep
  field :move_crc, 19, optional: true, type: :bytes
  field :consumed_server_angle_changes, 20, optional: true, type: :uint32
  field :cmd_flags, 21, optional: true, type: :int32

  field :last_prediction_reason, 22,
    optional: true,
    type: CBaseUserCmdPB.EPredictionReason,
    default: :k_eNone,
    enum: true

  field :next_prediction_reason, 23,
    optional: true,
    type: CBaseUserCmdPB.EPredictionReason,
    default: :k_eNone,
    enum: true
end

defmodule CUserCmdBasePB do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :base, 1, optional: true, type: CBaseUserCmdPB
end