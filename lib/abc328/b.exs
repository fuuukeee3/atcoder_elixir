defmodule Main do
  def main do
    n = get_n()

    get_n_list()
    |> solve(n)
  end

  defp solve(days, n) do
    tmp =
      for month <- 1..n do
        for day <- 1..Enum.at(days, month - 1) do
          # monthを文字列に変換
          m = month |> Integer.to_string()
          d = day |> Integer.to_string()

          (m <> d)
          |> String.codepoints()
          |> Enum.uniq()
          |> length()
        end
      end

    tmp
    |> List.flatten()
    |> Enum.filter(fn x -> x == 1 end)
    |> Enum.count()
    |> IO.puts()
  end

  defp get_n, do: IO.read(:line) |> String.trim() |> String.to_integer()

  defp get_s, do: IO.read(:line) |> String.trim()

  defp get_n_list,
    do: IO.read(:line) |> String.trim() |> String.split(" ") |> Enum.map(&String.to_integer/1)
end

Main.main()
