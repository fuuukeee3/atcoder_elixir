defmodule Main do
  def main do
    get_n_list()
    |> solve()
  end

  defp solve([a, b]) do
    if b - a >= 0 do
      IO.puts(b - a + 1)
    else
      IO.puts(0)
    end
  end

  defp get_n, do: IO.read(:line) |> String.trim() |> String.to_integer()

  defp get_s, do: IO.read(:line) |> String.trim()

  defp get_n_list,
    do: IO.read(:line) |> String.trim() |> String.split(" ") |> Enum.map(&String.to_integer/1)
end

Main.main()
