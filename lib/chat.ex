defmodule Chat do
  use Application

  def start(_type, _args) do
    Chat.Supervisor.start_link(name: Chat.Supervisor)
  end  
  @moduledoc """
  Documentation for Chat.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Chat.hello
      :world

  """
  def hello do
    :world
  end
end
