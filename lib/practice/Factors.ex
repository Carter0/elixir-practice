defmodule Practice.Factor do

  def factor(x) do
    is-prime (x, 2, [])
  end

  def is-prime(x, i, acc) do
    cond do
      div(x,i) == 1 ->
        acc
      x == i ->
        acc
      rem(x, i) == 0 ->
        is-prime((div(x,i), 2, [i | acc])
      rem(x, i) != 0 ->
        is-prime(x, i + 1, acc)
    end

  end
end
