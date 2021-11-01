defmodule ListLength do
  def call(list), do: sum(list)

  defp sum([]), do: 0

  defp sum([_head | tail]), do: 1 + sum(tail)
end
