defmodule Main do
  def main do
    get_n_list()
    |> solve()
    |> IO.puts()
  end

  defp solve([a, b]) do
    if a * 6 >= b and a <= b, do: "Yes", else: "No"
  end

  defp get_n, do: IO.read(:line) |> String.trim() |> String.to_integer()

  defp get_s, do: IO.read(:line) |> String.trim()

  defp get_n_list, do:  IO.read(:line) |> String.trim() |> String.split(" ") |> Enum.map(&String.to_integer/1)
end

Main.main()
