defmodule RegresiveCount do
  use GenServer

  #Client interface

  def time_left(pid) do
    GenServer.call(pid, :time_left)
  end

  def start_count(pid) do
    GenServer.cast(pid, :start)
  end

  def stop_count(pid) do
    GenServer.cast(pid, :stop)
  end

  # Callbacks

  @impl true
  def init(n) do
    {:ok, {:stopped, n}}
  end

  @impl true
  def handle_cast(:start, {:stopped, n}) do
    countdown()
    {:noreply, {:running, n}}
  end

  @impl true
  def handle_cast(:stop, {:running, n}) do
    {:noreply, {:stopped, n}}
  end

  @impl true
  def handle_call(:time_left, _from, {state_time, n}) do
    {:reply, n , {state_time, n}}
  end

  @impl true
  def handle_info(:second, {state_time, 0}) do
    {:noreply, {state_time, 0}}
  end
  def handle_info(:second, {:running, n}) do
    countdown()
    {:noreply, {:running, n - 1}}
  end
  def handle_info(:second, {:stopped, n}) do
    {:noreply, {:stopped, n}}
  end

  defp countdown() do
    Process.send_after(self(), :second, 1000)
  end

end
