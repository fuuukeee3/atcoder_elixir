defmodule Main do
  def main do
    p = get_n()

    factorial_en()
    |> solve(p)
  end

  defp factorial_en() do
    for i <- 1..10, do: factorial(i)
  end

  defp factorial(0), do: 1
  defp factorial(n), do: n * factorial(n - 1)

  defp solve(list, p) do
    result =
      Enum.reverse(list)
      |> Enum.reduce(%{yen: p, count: 0}, fn f_yen, acc ->
        div = div(acc.yen, f_yen)
        mod = rem(acc.yen, f_yen)
        new_acc = %{acc | yen: mod, count: acc.count + div}
      end)

    IO.puts(result.count)
  end

  defp get_n, do: IO.read(:line) |> String.trim() |> String.to_integer()

  defp get_s, do: IO.read(:line) |> String.trim()

  defp get_n_list,
    do: IO.read(:line) |> String.trim() |> String.split(" ") |> Enum.map(&String.to_integer/1)
end

Main.main()
