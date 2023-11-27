defmodule Main do
  def main do
    s = for _ <- 1..4, do: Acl.Input.get_s()
    s |> solve() |> puts()
  end

  defp solve(list) do
    list
    |> Enum.uniq()
    |> length()
  end

  defp puts(4), do: IO.puts("Yes")
  defp puts(_), do: IO.puts("No")
end

defmodule Acl do
  defmodule Input do
    def get_n, do: IO.read(:line) |> String.trim() |> String.to_integer()

    def get_s, do: IO.read(:line) |> String.trim()

    def get_n_list, do:  IO.read(:line) |> String.trim() |> String.split(" ") |> Enum.map(&String.to_integer/1)

    def get_s_list, do: IO.read(:line) |> String.trim() |> String.codepoints()
  end
end

Main.main()
