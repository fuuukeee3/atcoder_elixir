defmodule Main do
  def main do
    [_n, x] = get_n_list()

    get_n_list()
    |> solve(x)
  end

  defp solve(prices, x) do
    sum =
      prices
      |> Enum.with_index()
      |> Enum.map(fn {price, i} ->
        case rem(i, 2) do
          0 -> price
          1 -> price - 1
        end
      end)
      |> Enum.sum()

    if sum <= x, do: IO.puts("Yes"), else: IO.puts("No")
  end

  defp get_n, do: IO.read(:line) |> String.trim() |> String.to_integer()

  defp get_s, do: IO.read(:line) |> String.trim()

  defp get_n_list,
    do: IO.read(:line) |> String.trim() |> String.split(" ") |> Enum.map(&String.to_integer/1)
end

Main.main()
