defmodule Main do
  def main do
    Acl.Input.get_n()
    |> solve()
    |> IO.puts()
  end

  defp solve(n) when n in 1..125, do: 4
  defp solve(n) when n in 126..211, do: 6
  defp solve(n) when n in 212..214, do: 8
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
