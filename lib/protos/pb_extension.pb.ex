defmodule PbExtension do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.12.0"

  extend Google.Protobuf.EnumValueOptions, :network_connection_token, 50500,
    optional: true,
    type: :string

  extend Google.Protobuf.FieldOptions, :key_field, 60000,
    optional: true,
    type: :bool,
    default: false

  extend Google.Protobuf.MessageOptions, :msgpool_soft_limit, 60000,
    optional: true,
    type: :int32,
    default: 32

  extend Google.Protobuf.MessageOptions, :msgpool_hard_limit, 60001,
    optional: true,
    type: :int32,
    default: 384

  extend Google.Protobuf.FieldOptions, :description, 50000, optional: true, type: :string

  extend Google.Protobuf.ServiceOptions, :service_description, 50000,
    optional: true,
    type: :string

  extend Google.Protobuf.ServiceOptions, :service_execution_site, 50008,
    optional: true,
    type: EProtoExecutionSite,
    default: :k_EProtoExecutionSiteUnknown,
    enum: true

  extend Google.Protobuf.MethodOptions, :method_description, 50000, optional: true, type: :string

  extend Google.Protobuf.EnumOptions, :enum_description, 50000, optional: true, type: :string

  extend Google.Protobuf.EnumValueOptions, :enum_value_description, 50000,
    optional: true,
    type: :string

  extend Google.Protobuf.FieldOptions, :valve_map_field, 61000,
    optional: true,
    type: :bool,
    default: false

  extend Google.Protobuf.FieldOptions, :valve_map_key, 61001,
    optional: true,
    type: :bool,
    default: false

  extend Google.Protobuf.FieldOptions, :diff_encode_field, 61002,
    optional: true,
    type: :int32,
    default: 0

  extend Google.Protobuf.FieldOptions, :delta_ignore, 61003,
    optional: true,
    type: :bool,
    default: false

  extend Google.Protobuf.FieldOptions, :steamml_max_entries, 61004,
    optional: true,
    type: :uint32,
    default: 0

  extend Google.Protobuf.FieldOptions, :steamml_is_timestamp, 61005,
    optional: true,
    type: :bool,
    default: false

  extend Google.Protobuf.FieldOptions, :steamlearn_count, 61006,
    optional: true,
    type: :uint32,
    default: 0

  extend Google.Protobuf.EnumValueOptions, :schema_friendly_name, 1000,
    optional: true,
    type: :string

  extend Google.Protobuf.EnumValueOptions, :schema_description, 1001,
    optional: true,
    type: :string

  extend Google.Protobuf.EnumValueOptions, :schema_suppress_enumerator, 1002,
    optional: true,
    type: :bool
end