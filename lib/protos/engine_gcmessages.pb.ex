defmodule CEngineGotvSyncPacket do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :match_id, 1, optional: true, type: :uint64
  field :instance_id, 2, optional: true, type: :uint32
  field :signupfragment, 3, optional: true, type: :uint32
  field :currentfragment, 4, optional: true, type: :uint32
  field :tickrate, 5, optional: true, type: :float
  field :tick, 6, optional: true, type: :uint32
  field :rtdelay, 8, optional: true, type: :float
  field :rcvage, 9, optional: true, type: :float
  field :keyframe_interval, 10, optional: true, type: :float
  field :cdndelay, 11, optional: true, type: :uint32
end