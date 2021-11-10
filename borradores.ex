"""
  def decompose(n) when n == 10 or n == 100 or n == 1000 do
    map_decens = decens()
    map_hundreds = hundreds()
    map_thousands = thousands()
    cond do
      n == 10 -> map_decens[1]
      n == 100 -> map_hundreds[1]
      n == 1000 -> map_thousands[1]
    end

  end
  """
  def decompose(n) when n < 10 do
    map_units = units()
    map_units[n]
  end
  def decompose(n) when n >= 10 or n < 100 do
    map_units = units()
    map_decens = decens()
    map_decens[div(n,10)] <> map_units[rem(n,10)]
  end
  def decompose(n) when n >= 100 or n < 1000 do
    map_units = units()
    map_decens = decens()
    map_hundreds = hundreds()
    map_hundreds[div(n,100)] <> map_decens[div(rem(n,100),10)] <> map_units[rem(rem(n,100),10)]
  end

  defmodule KitchenCalculator do
    def get_volume({_, volume_pair}) do
      volume_pair
    end

    def to_milliliter({:cup, volume_pair}) do
      {:milliliter, volume_pair * 240.0}
    end

    def to_milliliter({:fluid_ounce, volume_pair}) do
      {:milliliter, volume_pair * 30.0}
    end

    def to_milliliter({:teaspoon, volume_pair}) do
      {:milliliter, volume_pair * 5.0}
    end

    def to_milliliter({:tablespoon, volume_pair}) do
      {:milliliter, volume_pair * 15.0}
    end

    def to_milliliter({:milliliter, volume_pair}) do
      {:milliliter, volume_pair}
    end

    def from_milliliter({:milliliter, volume_pair}, :cup) do
      {:cup, volume_pair / 240.0}
    end

    def from_milliliter({:milliliter, volume_pair}, :fluid_ounce) do
      {:fluid_ounce, volume_pair / 30.0}
    end

    def from_milliliter({:milliliter, volume_pair}, :teaspoon) do
      {:teaspoon, volume_pair / 5.0}
    end

    def from_milliliter({:milliliter, volume_pair}, :tablespoon) do
      {:tablespoon, volume_pair / 15.0}
    end

    def from_milliliter({:milliliter, volume_pair}, :milliliter) do
      {:milliliter, volume_pair}
    end

    def convert({:cup, volume_pair}, :fluid_ounce) do
      from_milliliter(to_milliliter({:cup, volume_pair}), :fluid_ounce)
    end

    def convert({:cup, volume_pair}, :teaspoon) do
      from_milliliter(to_milliliter({:cup, volume_pair}), :teaspoon)
    end

    def convert({:cup, volume_pair}, :tablespoon) do
      from_milliliter(to_milliliter({:cup, volume_pair}), :tablespoon)
    end

    def convert({:cup, volume_pair}, :milliliter) do
      from_milliliter(to_milliliter({:cup, volume_pair}), :milliliter)
    end

    def convert({:fluid_ounce, volume_pair}, :cup) do
      from_milliliter(to_milliliter({:fluid_ounce, volume_pair}), :cup)
    end

    def convert({:fluid_ounce, volume_pair}, :teaspoon) do
      from_milliliter(to_milliliter({:fluid_ounce, volume_pair}), :teaspoon)
    end

    def convert({:fluid_ounce, volume_pair}, :tablespoon) do
      from_milliliter(to_milliliter({:fluid_ounce, volume_pair}), :tablespoon)
    end

    def convert({:fluid_ounce, volume_pair}, :milliliter) do
      from_milliliter(to_milliliter({:fluid_ounce, volume_pair}), :milliliter)
    end

    def convert({:teaspoon, volume_pair}, :cup) do
      from_milliliter(to_milliliter({:teaspoon, volume_pair}), :cup)
    end

    def convert({:teaspoon, volume_pair}, :fluid_ounce) do
      from_milliliter(to_milliliter({:teaspoon, volume_pair}), :fluid_ounce)
    end

    def convert({:teaspoon, volume_pair}, :tablespoon) do
      from_milliliter(to_milliliter({:teaspoon, volume_pair}), :tablespoon)
    end

    def convert({:teaspoon, volume_pair}, :milliliter) do
      from_milliliter(to_milliliter({:teaspoon, volume_pair}), :milliliter)
    end

    def convert({:tablespoon, volume_pair}, :cup) do
      from_milliliter(to_milliliter({:tablespoon, volume_pair}), :cup)
    end

    def convert({:tablespoon, volume_pair}, :fluid_ounce) do
      from_milliliter(to_milliliter({:tablespoon, volume_pair}), :fluid_ounce)
    end

    def convert({:tablespoon, volume_pair}, :teaspoon) do
      from_milliliter(to_milliliter({:tablespoon, volume_pair}), :teaspoon)
    end

    def convert({:tablespoon, volume_pair}, :milliliter) do
      from_milliliter(to_milliliter({:tablespoon, volume_pair}), :milliliter)
    end

    def convert({:milliliter, volume_pair}, :cup) do
      from_milliliter(to_milliliter({:milliliter, volume_pair}), :cup)
    end

    def convert({:milliliter, volume_pair}, :fluid_ounce) do
      from_milliliter(to_milliliter({:milliliter, volume_pair}), :fluid_ounce)
    end

    def convert({:milliliter, volume_pair}, :teaspoon) do
      from_milliliter(to_milliliter({:milliliter, volume_pair}), :teaspoon)
    end

    def convert({:milliliter, volume_pair}, :tablespoon) do
      from_milliliter(to_milliliter({:milliliter, volume_pair}), :tablespoon)
    end

  end

  today(list)
    tl(list)
  """
  ******       ******
**      **   **      **
**         ** **         **
**            *            **
**                         **
**     #{initials(full_name1)}  +  #{initials(full_name2)}     **
**                       **
**                   **
  **               **
    **           **
      **       **
        **   **
          ***
           *
"""

def total(list) when length(list) != 1 do
  total([hd(list) + hd(tl(list)) | tl(tl(list))])
end

def total(list) when length(list) == 1 do
  hd(list)
end

def total([]) do
  0
end

defmodule Fibonacci do
  def find() do
    list = [1, 1]
    fib(list, 12)
  end

  def fib(list, 2) do
    Enum.reverse(list)
    pares(list)
  end

  def fib(list, n) do
    fib([hd(list) + hd(tl(list))] ++ list, n - 1)
  end

  def pares([head | tail]) when rem(head,2) == 0 do
    head + pares(tail)
  end

  def pares([head | tail]) do
    pares(tail)
  end

  def pares([]) do
    0
  end
end

@impl true
  def handle_cast({:push, element}, state) do
    {:noreply, [element | state]}
  end

  @impl true
  def handle_continue(integer(), state) do

  end

  @impl true
  def handle_continue(:continue, {_, true}) do
    {:noreply, {n - 1, true}, 1000}
  end

  defmodule RegresiveCount do
    use GenServer

    # Callbacks

    @impl true
    def init(n) do
      t = Time.add(Time.utc_now(), n)
      {:ok, {t, false}}
    end

    @impl true
    def handle_call(:time_left, _from, {n, _} = state) do
      {:reply, n , state}
    end
