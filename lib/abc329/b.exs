defmodule Main do
  def main do
    _n = Acl.Input.get_n()

    Acl.Input.get_n_list()
    |> solve()
  end

  defp solve(list) do
    max = Enum.max(list)

    list
    |> Enum.reject(fn x -> x == max end)
    |> Enum.max()
    |> IO.puts()
  end
end

defmodule Acl do
  defmodule Input do
    def get_n, do: IO.read(:line) |> String.trim() |> String.to_integer()

    def get_s, do: IO.read(:line) |> String.trim()

    def get_n_list,
      do: IO.read(:line) |> String.trim() |> String.split(" ") |> Enum.map(&String.to_integer/1)

    def get_s_list, do: IO.read(:line) |> String.trim() |> String.codepoints()
  end
end

Main.main()
