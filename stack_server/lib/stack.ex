defmodule Stack do
  @moduledoc """
  An example of a module wrapping a GenServer,
  in this case the StackServer.
  """

  def init(initial_content) do
    {:ok, pid} = GenServer.start_link(StackServer, initial_content)
    pid
  end

  def push(stack_server, element) when is_pid(stack_server) do
    GenServer.cast(stack_server, {:push, element})
  end

  def pop(stack_server) when is_pid(stack_server) do
    GenServer.call(stack_server, :pop)
  end
end
