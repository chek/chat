defmodule Chat.UserTest do
    use ExUnit.Case, async: true
  
    test "stores values by key" do
      {:ok, user} = Chat.User.start_link([])
      assert Chat.User.get(user, "location") == nil
  
      Chat.User.put(user, "location", 2)
      assert Chat.User.get(user, "location") == 2
    end
end