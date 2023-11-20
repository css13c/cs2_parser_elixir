defmodule ECsgoGameEvents do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :GE_PlayerAnimEventId, 450
  field :GE_RadioIconEventId, 451
  field :GE_FireBulletsId, 452
end

defmodule CMsgTEPlayerAnimEvent do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :player, 1, optional: true, type: :fixed32, default: 16_777_215
  field :event, 2, optional: true, type: :uint32
  field :data, 3, optional: true, type: :int32
end

defmodule CMsgTERadioIcon do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :player, 1, optional: true, type: :fixed32, default: 16_777_215
end

defmodule CMsgTEFireBullets do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :origin, 1, optional: true, type: CMsgVector
  field :angles, 2, optional: true, type: CMsgQAngle
  field :weapon_id, 3, optional: true, type: :uint32, default: 16_777_215
  field :mode, 4, optional: true, type: :uint32
  field :seed, 5, optional: true, type: :uint32
  field :player, 6, optional: true, type: :fixed32, default: 16_777_215
  field :inaccuracy, 7, optional: true, type: :float
  field :recoil_index, 8, optional: true, type: :float
  field :spread, 9, optional: true, type: :float
  field :sound_type, 10, optional: true, type: :int32
  field :item_def_index, 11, optional: true, type: :uint32
  field :sound_dsp_effect, 12, optional: true, type: :fixed32
  field :ent_origin, 13, optional: true, type: CMsgVector
  field :num_bullets_remaining, 14, optional: true, type: :uint32
end