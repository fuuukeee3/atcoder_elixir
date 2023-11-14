defmodule Main do
  def main do
    [_n, x] = get_n_list()

    get_n_list()
    |> solve(x)
  end

  defp solve(scores, x) do
    scores
    |> Enum.filter(fn score -> score <= x end)
    |> Enum.sum()
    |> IO.puts()
  end

  defp get_n, do: IO.read(:line) |> String.trim() |> String.to_integer()

  defp get_s, do: IO.read(:line) |> String.trim()

  defp get_n_list,
    do: IO.read(:line) |> String.trim() |> String.split(" ") |> Enum.map(&String.to_integer/1)
end

Main.main()
