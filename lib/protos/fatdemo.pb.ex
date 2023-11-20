defmodule EHitGroup do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :EHG_Generic, 0
  field :EHG_Head, 1
  field :EHG_Chest, 2
  field :EHG_Stomach, 3
  field :EHG_LeftArm, 4
  field :EHG_RightArm, 5
  field :EHG_LeftLeg, 6
  field :EHG_RightLeg, 7
  field :EHG_Gear, 8
  field :EHG_Miss, 9
end

defmodule ETeam do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :ET_Unknown, 0
  field :ET_Spectator, 1
  field :ET_Terrorist, 2
  field :ET_CT, 3
end

defmodule EWeaponType do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :EWT_Knife, 0
  field :EWT_Pistol, 1
  field :EWT_SubMachineGun, 2
  field :EWT_Rifle, 3
  field :EWT_Shotgun, 4
  field :EWT_SniperRifle, 5
  field :EWT_MachineGun, 6
  field :EWT_C4, 7
  field :EWT_Grenade, 8
  field :EWT_Equipment, 9
  field :EWT_StackableItem, 10
  field :EWT_Unknown, 11
end

defmodule MLDict do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, optional: true, type: :string
  field :val_string, 2, optional: true, type: :string
  field :val_int, 3, optional: true, type: :int32
  field :val_float, 4, optional: true, type: :float
end

defmodule MLEvent do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :event_name, 1, optional: true, type: :string
  field :data, 2, repeated: true, type: MLDict
end

defmodule MLMatchState do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :game_mode, 1, optional: true, type: :string
  field :phase, 2, optional: true, type: :string
  field :round, 3, optional: true, type: :int32
  field :score_ct, 4, optional: true, type: :int32
  field :score_t, 5, optional: true, type: :int32
end

defmodule MLRoundState do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :phase, 1, optional: true, type: :string
  field :win_team, 2, optional: true, type: ETeam, default: :ET_Unknown, enum: true
  field :bomb_state, 3, optional: true, type: :string
end

defmodule MLWeaponState do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :index, 1, optional: true, type: :int32
  field :name, 2, optional: true, type: :string
  field :type, 3, optional: true, type: EWeaponType, default: :EWT_Knife, enum: true
  field :ammo_clip, 4, optional: true, type: :int32
  field :ammo_clip_max, 5, optional: true, type: :int32
  field :ammo_reserve, 6, optional: true, type: :int32
  field :state, 7, optional: true, type: :string
  field :recoil_index, 8, optional: true, type: :float
end

defmodule MLPlayerState do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :account_id, 1, optional: true, type: :int32
  field :player_slot, 2, optional: true, type: :int32, default: -1
  field :entindex, 3, optional: true, type: :int32
  field :name, 4, optional: true, type: :string
  field :clan, 5, optional: true, type: :string
  field :team, 6, optional: true, type: ETeam, default: :ET_Unknown, enum: true
  field :abspos, 7, optional: true, type: CMsgVector
  field :eyeangle, 8, optional: true, type: CMsgQAngle
  field :eyeangle_fwd, 9, optional: true, type: CMsgVector
  field :health, 10, optional: true, type: :int32
  field :armor, 11, optional: true, type: :int32
  field :flashed, 12, optional: true, type: :float
  field :smoked, 13, optional: true, type: :float
  field :money, 14, optional: true, type: :int32
  field :round_kills, 15, optional: true, type: :int32
  field :round_killhs, 16, optional: true, type: :int32
  field :burning, 17, optional: true, type: :float
  field :helmet, 18, optional: true, type: :bool
  field :defuse_kit, 19, optional: true, type: :bool
  field :weapons, 20, repeated: true, type: MLWeaponState
end

defmodule MLGameState do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :match, 1, optional: true, type: MLMatchState
  field :round, 2, optional: true, type: MLRoundState
  field :players, 3, repeated: true, type: MLPlayerState
end

defmodule MLDemoHeader do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :map_name, 1, optional: true, type: :string
  field :tick_rate, 2, optional: true, type: :int32
  field :version, 3, optional: true, type: :uint32
  field :steam_universe, 4, optional: true, type: :uint32
end

defmodule MLTick do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :tick_count, 1, optional: true, type: :int32
  field :state, 2, optional: true, type: MLGameState
  field :events, 3, repeated: true, type: MLEvent
end

defmodule VacNetShot do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :steamid_player, 1, optional: true, type: :fixed64
  field :round_number, 2, optional: true, type: :int32
  field :hit_type, 3, optional: true, type: :int32
  field :weapon_type, 4, optional: true, type: :int32
  field :distance_to_hurt_target, 5, optional: true, type: :float
  field :delta_yaw_window, 6, repeated: true, type: :float
  field :delta_pitch_window, 7, repeated: true, type: :float
end