defmodule Fibonacci do
  def get(element)  do
    {:ok, cache} = Cache.init
    do_get(element, cache)
  end

  defp do_get(element, _cache) when element <= 2 do
    1
  end

  defp do_get(element, cache) do
    result = Cache.get(cache, element)
    if (result != nil) do
      result
    else
      result = do_get(element - 1, cache) + do_get(element - 2, cache)
      Cache.save(cache, element, result)
      result
    end
  end

end
