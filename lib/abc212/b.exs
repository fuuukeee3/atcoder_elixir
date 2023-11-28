defmodule Main do
  def main do
    Acl.Input.get_n_list()
    |> solve()
    |> IO.puts()
  end

  defp solve([a, b, c, d]) do
    cond do
      a == b and b == c and c == d -> "Weak"
      next(a) == b and next(b) == c and next(c) == d -> "Weak"
      true -> "Strong"
    end
  end

  defp(next(num) when num in 0..8, do: num + 1)
  defp(next(9), do: 0)
end

defmodule Acl do
  defmodule Input do
    def get_n, do: IO.read(:line) |> String.trim() |> String.to_integer()

    def get_s, do: IO.read(:line) |> String.trim()

    def get_n_list,
      do: IO.read(:line) |> String.trim() |> String.codepoints() |> Enum.map(&String.to_integer/1)

    def get_s_list, do: IO.read(:line) |> String.trim() |> String.codepoints()
  end
end

Main.main()
