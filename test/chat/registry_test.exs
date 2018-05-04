defmodule Chat.RegistryTest do
    use ExUnit.Case, async: true
  
    setup do
      registry = start_supervised!(Chat.Registry)
      %{registry: registry}
    end
  
    test "spawns users", %{registry: registry} do
      assert Chat.Registry.lookup(registry, "user_id") == :error
  
      Chat.Registry.create(registry, "user_id")
      assert {:ok, user} = Chat.Registry.lookup(registry, "user_id")
  
      Chat.User.put(user, "location", 1)
      assert Chat.User.get(user, "location") == 1
    end
end