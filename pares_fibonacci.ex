defmodule Fibonacci do
  def find() do
    list = [1, 1]
    fib(list, 200)
  end

  def fib(list, 2) do
    #Enum.reverse(list)
    Enum.filter(list, fn (n) -> rem(n,2) == 0 end)
    |> Enum.sum()
  end

  def fib(list, n) do
    fib([hd(list) + hd(tl(list))] ++ list, n - 1)
  end

end
