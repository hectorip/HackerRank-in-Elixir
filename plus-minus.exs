defmodule PlusMinus do
  @doc "Problem description: https://www.hackerrank.com/challenges/plus-minus"
  def get_data do
    n = IO.gets "Number of elements"
    list = IO.gets "List of Elements"
    list = String.split(list, " ") |> Enum.map fn el -> {i, _} = Integer.parse(el); i end
    IO.inspect list
    {n, _} = Integer.parse(n)
    solution(n, list, {0, 0, 0})
  end
  def solution(0, _ {pos, neg, zero}) when (pos + neg + zero) == 0 do
    IO.puts 0
    IO.puts 0
    IO.puts 0
  end
  def solution(0, _, { pos, neg, zero }) do
    total = pos + neg + zero
    IO.puts pos/total
    IO.puts neg/total
    IO.puts zero/total
  end
  def solution(n, [i | tail], { pos, neg, zero } ) do
    cond do
      i > 0 ->
        solution(n-1, tail, {pos + 1, neg, zero})
      i < 0 ->
        solution(n-1, tail, {pos, neg + 1, zero})
      true ->
        solution(n-1, tail, {pos, neg, zero + 1})
    end
  end
end
