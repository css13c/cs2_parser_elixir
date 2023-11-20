defmodule CUIFontFilePB do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :font_file_name, 1, optional: true, type: :string
  field :opentype_font_data, 2, optional: true, type: :bytes
end

defmodule CUIFontFilePackagePB.CUIEncryptedFontFilePB do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :encrypted_contents, 1, optional: true, type: :bytes
end

defmodule CUIFontFilePackagePB do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :package_version, 1, required: true, type: :uint32

  field :encrypted_font_files, 2,
    repeated: true,
    type: CUIFontFilePackagePB.CUIEncryptedFontFilePB
end