defmodule StackServer do
  use GenServer
  @moduledoc """
  Documentation for StackServer.
  """

  @impl true
  def init(initial_stack_contents) do
    { :ok, initial_stack_contents }
  end

  @impl true
  def handle_call(:pop, _from, [ head | tail ]) do
    { :reply, head, tail }
  end
end
