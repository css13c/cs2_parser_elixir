defmodule ETEProtobufIds do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :TE_EffectDispatchId, 400
  field :TE_ArmorRicochetId, 401
  field :TE_BeamEntPointId, 402
  field :TE_BeamEntsId, 403
  field :TE_BeamPointsId, 404
  field :TE_BeamRingId, 405
  field :TE_BSPDecalId, 407
  field :TE_BubblesId, 408
  field :TE_BubbleTrailId, 409
  field :TE_DecalId, 410
  field :TE_WorldDecalId, 411
  field :TE_EnergySplashId, 412
  field :TE_FizzId, 413
  field :TE_ShatterSurfaceId, 414
  field :TE_GlowSpriteId, 415
  field :TE_ImpactId, 416
  field :TE_MuzzleFlashId, 417
  field :TE_BloodStreamId, 418
  field :TE_ExplosionId, 419
  field :TE_DustId, 420
  field :TE_LargeFunnelId, 421
  field :TE_SparksId, 422
  field :TE_PhysicsPropId, 423
  field :TE_PlayerDecalId, 424
  field :TE_ProjectedDecalId, 425
  field :TE_SmokeId, 426
end

defmodule CMsgTEArmorRicochet do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :pos, 1, optional: true, type: CMsgVector
  field :dir, 2, optional: true, type: CMsgVector
end

defmodule CMsgTEBaseBeam do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :modelindex, 1, optional: true, type: :fixed64
  field :haloindex, 2, optional: true, type: :fixed64
  field :startframe, 3, optional: true, type: :uint32
  field :framerate, 4, optional: true, type: :uint32
  field :life, 5, optional: true, type: :float
  field :width, 6, optional: true, type: :float
  field :endwidth, 7, optional: true, type: :float
  field :fadelength, 8, optional: true, type: :uint32
  field :amplitude, 9, optional: true, type: :float
  field :color, 10, optional: true, type: :fixed32
  field :speed, 11, optional: true, type: :uint32
  field :flags, 12, optional: true, type: :uint32
end

defmodule CMsgTEBeamEntPoint do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :base, 1, optional: true, type: CMsgTEBaseBeam
  field :startentity, 2, optional: true, type: :uint32
  field :endentity, 3, optional: true, type: :uint32
  field :start, 4, optional: true, type: CMsgVector
  field :end, 5, optional: true, type: CMsgVector
end

defmodule CMsgTEBeamEnts do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :base, 1, optional: true, type: CMsgTEBaseBeam
  field :startentity, 2, optional: true, type: :uint32
  field :endentity, 3, optional: true, type: :uint32
end

defmodule CMsgTEBeamPoints do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :base, 1, optional: true, type: CMsgTEBaseBeam
  field :start, 2, optional: true, type: CMsgVector
  field :end, 3, optional: true, type: CMsgVector
end

defmodule CMsgTEBeamRing do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :base, 1, optional: true, type: CMsgTEBaseBeam
  field :startentity, 2, optional: true, type: :uint32
  field :endentity, 3, optional: true, type: :uint32
end

defmodule CMsgTEBSPDecal do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :origin, 1, optional: true, type: CMsgVector
  field :normal, 2, optional: true, type: CMsgVector
  field :saxis, 3, optional: true, type: CMsgVector
  field :entity, 4, optional: true, type: :int32, default: -1
  field :index, 5, optional: true, type: :uint32
end

defmodule CMsgTEBubbles do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :mins, 1, optional: true, type: CMsgVector
  field :maxs, 2, optional: true, type: CMsgVector
  field :height, 3, optional: true, type: :float
  field :count, 4, optional: true, type: :uint32
  field :speed, 5, optional: true, type: :float
end

defmodule CMsgTEBubbleTrail do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :mins, 1, optional: true, type: CMsgVector
  field :maxs, 2, optional: true, type: CMsgVector
  field :waterz, 3, optional: true, type: :float
  field :count, 4, optional: true, type: :uint32
  field :speed, 5, optional: true, type: :float
end

defmodule CMsgTEDecal do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :origin, 1, optional: true, type: CMsgVector
  field :start, 2, optional: true, type: CMsgVector
  field :entity, 3, optional: true, type: :int32, default: -1
  field :hitbox, 4, optional: true, type: :uint32
  field :index, 5, optional: true, type: :uint32
end

defmodule CMsgEffectData do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :origin, 1, optional: true, type: CMsgVector
  field :start, 2, optional: true, type: CMsgVector
  field :normal, 3, optional: true, type: CMsgVector
  field :angles, 4, optional: true, type: CMsgQAngle
  field :entity, 5, optional: true, type: :fixed32, default: 16_777_215
  field :otherentity, 6, optional: true, type: :fixed32, default: 16_777_215
  field :scale, 7, optional: true, type: :float
  field :magnitude, 8, optional: true, type: :float
  field :radius, 9, optional: true, type: :float
  field :surfaceprop, 10, optional: true, type: :fixed32
  field :effectindex, 11, optional: true, type: :fixed64
  field :damagetype, 12, optional: true, type: :uint32
  field :material, 13, optional: true, type: :uint32
  field :hitbox, 14, optional: true, type: :uint32
  field :color, 15, optional: true, type: :uint32
  field :flags, 16, optional: true, type: :uint32
  field :attachmentindex, 17, optional: true, type: :int32
  field :effectname, 18, optional: true, type: :uint32
  field :attachmentname, 19, optional: true, type: :uint32
end

defmodule CMsgTEEffectDispatch do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :effectdata, 1, optional: true, type: CMsgEffectData
end

defmodule CMsgTEEnergySplash do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :pos, 1, optional: true, type: CMsgVector
  field :dir, 2, optional: true, type: CMsgVector
  field :explosive, 3, optional: true, type: :bool
end

defmodule CMsgTEFizz do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :entity, 1, optional: true, type: :int32, default: -1
  field :density, 2, optional: true, type: :uint32
  field :current, 3, optional: true, type: :int32
end

defmodule CMsgTEShatterSurface do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :origin, 1, optional: true, type: CMsgVector
  field :angles, 2, optional: true, type: CMsgQAngle
  field :force, 3, optional: true, type: CMsgVector
  field :forcepos, 4, optional: true, type: CMsgVector
  field :width, 5, optional: true, type: :float
  field :height, 6, optional: true, type: :float
  field :shardsize, 7, optional: true, type: :float
  field :surfacetype, 8, optional: true, type: :uint32
  field :frontcolor, 9, optional: true, type: :fixed32
  field :backcolor, 10, optional: true, type: :fixed32
end

defmodule CMsgTEGlowSprite do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :origin, 1, optional: true, type: CMsgVector
  field :scale, 2, optional: true, type: :float
  field :life, 3, optional: true, type: :float
  field :brightness, 4, optional: true, type: :uint32
end

defmodule CMsgTEImpact do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :origin, 1, optional: true, type: CMsgVector
  field :normal, 2, optional: true, type: CMsgVector
  field :type, 3, optional: true, type: :uint32
end

defmodule CMsgTEMuzzleFlash do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :origin, 1, optional: true, type: CMsgVector
  field :angles, 2, optional: true, type: CMsgQAngle
  field :scale, 3, optional: true, type: :float
  field :type, 4, optional: true, type: :uint32
end

defmodule CMsgTEBloodStream do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :origin, 1, optional: true, type: CMsgVector
  field :direction, 2, optional: true, type: CMsgVector
  field :color, 3, optional: true, type: :fixed32
  field :amount, 4, optional: true, type: :uint32
end

defmodule CMsgTEExplosion do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :origin, 1, optional: true, type: CMsgVector
  field :framerate, 2, optional: true, type: :uint32
  field :flags, 3, optional: true, type: :uint32
  field :normal, 4, optional: true, type: CMsgVector
  field :materialtype, 5, optional: true, type: :uint32
  field :radius, 6, optional: true, type: :uint32
  field :magnitude, 7, optional: true, type: :uint32
  field :scale, 8, optional: true, type: :float
  field :affect_ragdolls, 9, optional: true, type: :bool
  field :effect_name, 10, optional: true, type: :string
  field :explosion_type, 11, optional: true, type: :uint32
end

defmodule CMsgTEDust do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :origin, 1, optional: true, type: CMsgVector
  field :size, 2, optional: true, type: :float
  field :speed, 3, optional: true, type: :float
  field :direction, 4, optional: true, type: CMsgVector
end

defmodule CMsgTELargeFunnel do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :origin, 1, optional: true, type: CMsgVector
  field :reversed, 2, optional: true, type: :uint32
end

defmodule CMsgTESparks do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :origin, 1, optional: true, type: CMsgVector
  field :magnitude, 2, optional: true, type: :uint32
  field :length, 3, optional: true, type: :uint32
  field :direction, 4, optional: true, type: CMsgVector
end

defmodule CMsgTEPhysicsProp do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :origin, 1, optional: true, type: CMsgVector
  field :velocity, 2, optional: true, type: CMsgVector
  field :angles, 3, optional: true, type: CMsgQAngle
  field :skin, 4, optional: true, type: :fixed32
  field :flags, 5, optional: true, type: :uint32
  field :effects, 6, optional: true, type: :uint32
  field :color, 7, optional: true, type: :fixed32
  field :modelindex, 8, optional: true, type: :fixed64
  field :unused_breakmodelsnottomake, 9, optional: true, type: :uint32
  field :scale, 10, optional: true, type: :float
  field :dmgpos, 11, optional: true, type: CMsgVector
  field :dmgdir, 12, optional: true, type: CMsgVector
  field :dmgtype, 13, optional: true, type: :int32
end

defmodule CMsgTEPlayerDecal do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :origin, 1, optional: true, type: CMsgVector
  field :player, 2, optional: true, type: :int32, default: -1
  field :entity, 3, optional: true, type: :int32, default: -1
end

defmodule CMsgTEProjectedDecal do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :origin, 1, optional: true, type: CMsgVector
  field :angles, 2, optional: true, type: CMsgQAngle
  field :index, 3, optional: true, type: :uint32
  field :distance, 4, optional: true, type: :float
end

defmodule CMsgTESmoke do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :origin, 1, optional: true, type: CMsgVector
  field :scale, 2, optional: true, type: :float
end

defmodule CMsgTEWorldDecal do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :origin, 1, optional: true, type: CMsgVector
  field :normal, 2, optional: true, type: CMsgVector
  field :index, 3, optional: true, type: :uint32
end