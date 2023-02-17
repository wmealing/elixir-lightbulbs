defmodule TimsRoom do
  @moduledoc """
  Documentation for `Lightbulbs`.
  """
  def go(count) do

    # Start the server, 100 bulbs
    l = Enum.map(1..count,
      fn _x -> GenServer.start_link(Light, false) end)

    # we just work with the first count.
    working_set = l
    |> Enum.take(count)

    # Nth person toggles the nth, bulb
    for n <- 1..count do
      working_set
      |> Enum.map_every(n, fn bulb -> Light.toggle(bulb) end)
    end

    # get the last bulb
    last_bulb = working_set
    |> Enum.at(-1)

    # print the status of the 64th bulb.
    Light.print_state(last_bulb)


  end


end
