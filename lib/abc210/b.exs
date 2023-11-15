defmodule Main do
  def main do
    _n = get_n()

    get_s_list()
    |> solve()
  end

  defp solve(s) do
    index = Enum.find_index(s, fn c -> c == "1" end)

    if rem(index, 2) == 0 do
      IO.puts("Takahashi")
    else
      IO.puts("Aoki")
    end
  end

  defp get_n, do: IO.read(:line) |> String.trim() |> String.to_integer()

  defp get_s, do: IO.read(:line) |> String.trim()

  defp get_n_list,
    do: IO.read(:line) |> String.trim() |> String.split(" ") |> Enum.map(&String.to_integer/1)

  defp get_s_list, do: IO.read(:line) |> String.trim() |> String.codepoints()
end

Main.main()
