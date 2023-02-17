defmodule Light do
  use GenServer

  # Api
  def toggle({:ok, pid}) do
    GenServer.call(pid, :toggle)
  end

  def print_state({:ok, pid}) do
    result = GenServer.call(pid, :report)

    case result do
      false ->
        IO.puts("LIGHT IS OFF")
      true ->
        IO.puts("LIGHT IS ON")
    end

  end



  # Callbacks
  @impl true
  def init(state) do
    {:ok, state}
  end

  @impl true
  def handle_call(:toggle, _from, state) do
    new_state = not state
    {:reply, "TOGGLED!", new_state}

  end

  def handle_call(:report, _from, state) do
    {:reply, state, state}
  end

end
