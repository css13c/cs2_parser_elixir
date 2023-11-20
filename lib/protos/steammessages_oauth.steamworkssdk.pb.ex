defmodule COAuthToken_ImplicitGrantNoPrompt_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :clientid, 1, optional: true, type: :string, deprecated: false
end

defmodule COAuthToken_ImplicitGrantNoPrompt_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :access_token, 1, optional: true, type: :string, deprecated: false
  field :redirect_uri, 2, optional: true, type: :string, deprecated: false
end