defmodule Demo do
  @moduledoc """
  Data for a CS2 demo.
  """

  @typedoc """
  `filestamp` is simply a type checking tool, since all CS2 demos are filestamped with "PBDEMS2"
  `frames` is a list of data frames for each tick? in the demo
  `ticks` is the length of the demo in ticks
  """
  @type t() :: %__MODULE__{
    filestamp: String.t(),
    frames: list(Demo.Frame.t()),
    ticks: non_neg_integer()
  }

  defstruct ~w[filestamp frames ticks]a

  defmodule Demo.Frame do
    @moduledoc """
    Data for an individual frame of a CS2 demo.
    """

    @typedoc """
    """
    @type t() :: %__MODULE__{
      command: EDemoCommands.t()
    }

    defstruct ~w[command]a
  end
end
