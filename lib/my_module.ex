defmodule MyModule do
  require Logger

  def testing do
    sport_color = "pink"

    case Ultraviolet.new(sport_color) do
      {:error, m} -> Logger.error("should_not_happen", reason: m)
      {:ok, color} -> color
    end
  end
end
