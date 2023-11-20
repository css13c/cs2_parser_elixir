defmodule CSGOInterpolationInfoPB do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :src_tick, 1, optional: true, type: :int32, default: -1
  field :dst_tick, 2, optional: true, type: :int32, default: -1
  field :frac, 3, optional: true, type: :float, default: 0.0
end

defmodule CSGOInputHistoryEntryPB do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :buttonstate, 1, optional: true, type: :uint64
  field :view_angles, 2, optional: true, type: CMsgQAngle
  field :render_tick_count, 4, optional: true, type: :int32
  field :render_tick_fraction, 5, optional: true, type: :float
  field :player_tick_count, 6, optional: true, type: :int32
  field :player_tick_fraction, 7, optional: true, type: :float
  field :cl_interp, 12, optional: true, type: CSGOInterpolationInfoPB
  field :sv_interp0, 13, optional: true, type: CSGOInterpolationInfoPB
  field :sv_interp1, 14, optional: true, type: CSGOInterpolationInfoPB
  field :player_interp, 15, optional: true, type: CSGOInterpolationInfoPB
  field :frame_number, 20, optional: true, type: :int32
  field :target_ent_index, 8, optional: true, type: :int32, default: -1
  field :shoot_position, 3, optional: true, type: CMsgVector
  field :target_head_pos_check, 9, optional: true, type: CMsgVector
  field :target_abs_pos_check, 10, optional: true, type: CMsgVector
  field :target_abs_ang_check, 11, optional: true, type: CMsgQAngle
end

defmodule CSGOUserCmdPB do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :base, 1, optional: true, type: CBaseUserCmdPB
  field :input_history, 2, repeated: true, type: CSGOInputHistoryEntryPB
  field :attack1_start_history_index, 6, optional: true, type: :int32, default: -1
  field :attack2_start_history_index, 7, optional: true, type: :int32, default: -1
  field :attack3_start_history_index, 8, optional: true, type: :int32, default: -1
end