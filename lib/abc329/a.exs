defmodule Main do
  def main do
    get_s_list()
    |> solve()
  end

  defp solve(str) do
    str
    |> Enum.join(" ")
    |> IO.puts()
  end

  defp get_n, do: IO.read(:line) |> String.trim() |> String.to_integer()

  defp get_s, do: IO.read(:line) |> String.trim()

  defp get_n_list, do:  IO.read(:line) |> String.trim() |> String.split(" ") |> Enum.map(&String.to_integer/1)

  defp get_s_list, do: IO.read(:line) |> String.trim() |> String.codepoints()
end

Main.main()
