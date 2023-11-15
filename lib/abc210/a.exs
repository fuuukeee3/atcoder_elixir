defmodule Main do
  def main do
    [n, a, x, y] = get_n_list()

    if n > a do
      a * x + (n - a) * y
    else
      n * x
    end
    |> IO.puts()
  end

  defp get_n, do: IO.read(:line) |> String.trim() |> String.to_integer()

  defp get_s, do: IO.read(:line) |> String.trim()

  defp get_n_list,
    do: IO.read(:line) |> String.trim() |> String.split(" ") |> Enum.map(&String.to_integer/1)
end

Main.main()
