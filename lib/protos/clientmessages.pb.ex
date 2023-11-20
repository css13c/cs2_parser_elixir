defmodule EBaseClientMessages do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :CM_CustomGameEvent, 280
  field :CM_CustomGameEventBounce, 281
  field :CM_ClientUIEvent, 282
  field :CM_DevPaletteVisibilityChanged, 283
  field :CM_WorldUIControllerHasPanelChanged, 284
  field :CM_RotateAnchor, 285
  field :CM_MAX_BASE, 300
end

defmodule EClientUIEvent do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :EClientUIEvent_Invalid, 0
  field :EClientUIEvent_DialogFinished, 1
  field :EClientUIEvent_FireOutput, 2
end

defmodule CClientMsg_CustomGameEvent do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :event_name, 1, optional: true, type: :string
  field :data, 2, optional: true, type: :bytes
end

defmodule CClientMsg_CustomGameEventBounce do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :event_name, 1, optional: true, type: :string
  field :data, 2, optional: true, type: :bytes
  field :player_slot, 3, optional: true, type: :int32, default: -1
end

defmodule CClientMsg_ClientUIEvent do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :event, 1,
    optional: true,
    type: EClientUIEvent,
    default: :EClientUIEvent_Invalid,
    enum: true

  field :ent_ehandle, 2, optional: true, type: :uint32
  field :client_ehandle, 3, optional: true, type: :uint32
  field :data1, 4, optional: true, type: :string
  field :data2, 5, optional: true, type: :string
end

defmodule CClientMsg_DevPaletteVisibilityChangedEvent do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :visible, 1, optional: true, type: :bool
end

defmodule CClientMsg_WorldUIControllerHasPanelChangedEvent do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :has_panel, 1, optional: true, type: :bool
  field :client_ehandle, 2, optional: true, type: :uint32
  field :literal_hand_type, 3, optional: true, type: :uint32
end

defmodule CClientMsg_RotateAnchor do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :angle, 1, optional: true, type: :float
end