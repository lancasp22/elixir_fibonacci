defmodule CacheTest do
  use ExUnit.Case

  test "initialise cache" do
    {:ok, cache} = Cache.init
    assert Cache.all(cache) == %{}
  end

  test "can store a record" do
    {:ok, cache} = Cache.init
    Cache.save(cache, 20, 50)
    assert Cache.get(cache, 20) == 50
  end

    test "get nil when cache do not contains key" do
    {:ok, cache} = Cache.init
    assert Cache.get(cache, 20) == nil
  end

end
