defmodule Practice.Factor do

  def factor(x) do
    primeCheck(x, 2)
  end

  def primeCheck(number, counter) do
    cond do
      number == 1 ->
        false
      counter == number ->
        true
      rem(number, counter) == 0 ->
        primeCheck(div(number, counter), 2)
      true ->
        primeCheck(number, counter + 1)
    end
  end
end
