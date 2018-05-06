defmodule Chat.User do
    use Agent
  
    @doc """
    Starts a new user.
    """
    def start_link(_opts) do
        Agent.start_link(fn -> %{} end)
    end
  
    @doc """
    Gets a value from the `user` by `key`.
    """
    def get(user, key) do
      Agent.get(user, &Map.get(&1, key))
    end
  
    @doc """
    Puts the `value` for the given `key` in the `user`.
    """
    def put(user, key, value) do
      Agent.update(user, &Map.put(&1, key, value))
    end
end