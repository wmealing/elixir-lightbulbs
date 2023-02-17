defmodule TimsRoom do
  @moduledoc """
  Documentation for `Lightbulbs`.
  """
  def go(count) do

    # Start the server, "count" bulbs
    working_set = Enum.map(0..count,
      fn _x -> GenServer.start_link(Light, false) end)

    IO.write("  ")

    for p <- 0..count do
      IO.write(p)
    end

    IO.write("\n")

      # Nth person toggles the nth, bulb
    for n <- 0..count do

      working_set
      |> Enum.with_index()
      |> Enum.map_every(n, fn {bulb,idx} ->
        case idx do
          0 -> nil
          _ -> Light.toggle(bulb)
        end
      end)

      IO.write(n)
      IO.write(":")

      working_set
      |> Enum.map(fn x -> Light.draw(x) end)

      IO.write("\n")
    end

    working_set
    |> Enum.at(-1)
    |> Light.print_state

  end

end
