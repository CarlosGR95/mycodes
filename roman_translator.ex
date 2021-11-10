defmodule RomanTranslator do

  def units() do
    %{0 => "", 1 => "I", 2 => "II", 3 => "III", 4 => "IV", 5 => "V", 6 => "VI", 7 => "VII", 8 => "VIII", 9 => "IX"}
  end

  def decens() do
    %{0 => "", 1 => "X", 2 => "XX", 3 => "XXX", 4 => "XL", 5 => "L", 6 => "LX", 7 => "LXX", 8 => "LXXX", 9 => "XC"}
  end

  def hundreds() do
    %{0 => "", 1 => "C", 2 => "CC", 3 => "CCC", 4 => "CD", 5 => "D", 6 => "CD", 7 => "DCC", 8 => "DCCC", 9 => "CM"}
  end

  def thousands() do
    %{0 => "", 1 => "M", 2 => "MM", 3 => "MMM"}
  end

  def translate(n) when n < 4000 do
    map_units = units()
    map_decens = decens()
    map_hundreds = hundreds()
    map_thousands = thousands()
    map_thousands[div(n,1000)] <> map_hundreds[div(rem(n,1000),100)] <> map_decens[div(rem(rem(n,1000),100),10)] <> map_units[rem(rem(rem(n,1000),100),10)]
  end
  def translate(n) when n >= 4000 do
    "Impossible to translate this number into roman"
  end

end
