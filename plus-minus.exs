defmodule PlusMinus do
  @doc "Problem description: https://www.hackerrank.com/challenges/plus-minus"
  def get_data do
    n = IO.gets "Number of elements"
    list = IO.gets "List of Elements"
    list = String.split(list, " ") |> Enum.map fn el -> {i, _} = Integer.parse(el); i end
    solution(n, list, {})
  end

  def solution(n, [i | tail], acc ) do
    IO.inspect tail
  end
end
