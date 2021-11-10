#miprueba.ex
defmodule ModuleEjercicios do

    def primos(n) do
        list_primos = []
        if n == 1 || n == 2 do
           if n == 1, do: list_primos = [2], else: list_primos = [2,3]
        else
            check_number(3, 1)
        end
    end

    def check_number(gen_num_check(x), gen_check(y)) when x > y do
        if rem(x,y)
    end

    def gen_num_check(x), do x + 1
    def gen_check(y), do y + 1

    def check_len(n, list_primos[]) do
        if n == length(list_primos) do
            list_primos = list_primos ++ [n]
        else
            check_number(n)
        end

    end





end
    """
    def list_primos(n), do list_primos = [2,3] ++ [n]
    def gen(2), do 3

    def is_prime?(n), do primos(n)

    def check_prime(n,gen(x)) when x < n do
        if (rem(n,x)) != 0 do
            check_prime(n, gen(x))
        else
            check_prime(gen(x))
        end

    end
    def check_prime(n,n), do

    end
    """
