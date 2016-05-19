defmodule Cache do
  def init do
    Agent.start_link(fn -> %{} end)
  end

  def all(cache) do
    Agent.get(cache, fn(state) -> state end)
  end

  def save(cache, key, value) do
    Agent.update(cache, fn(status) -> Map.put(status, key, value) end)
  end

  def get(cache, key) do
    all(cache)
    |> Map.get(key)
  end
end