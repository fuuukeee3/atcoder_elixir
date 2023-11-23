defmodule Main do
  def main do
    _n = Acl.Input.get_n()
    Acl.Input.get_s_list()
    |> solve()
  end

  defp solve(list) do
    list
    |> Enum.chunk_by(&(&1))
    |> Enum.map(&Enum.frequencies(&1))
    |> Enum.reduce(%{}, fn freq_map, acc ->
      Map.merge(acc, freq_map, fn _key, v1, v2 -> max(v1, v2) end)
    end)
    |> Map.values()
    |> Enum.sum()
    |> IO.inspect()
  end
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
