defmodule StackServer do
  use GenServer

  @moduledoc """
  An example of a GenServer.
  It acts as a stack
  """

  @impl true
  def init(initial_stack_contents) do
    {:ok, initial_stack_contents}
  end

  @impl true
  def handle_call(:pop, _from, _stack = [head | tail]) do
    {:reply, head, tail}
  end

  @impl true
  def handle_cast({:push, element}, stack) do
    {:noreply, [element | stack]}
  end
end
