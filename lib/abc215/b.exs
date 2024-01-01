defmodule Main do
  def main do
    Acl.Input.get_n()
    |> solve()
    |> IO.inspect()
  end

  # defp solve(n) do
  #   r = for i <- 1..60, do: 2 ** i

  #   r
  #   |> Enum.with_index()
  #   |> Enum.filter(fn {val, _index} -> val >= n end)
  #   |> Enum.at(0)
  #   |> case do
  #     {val, index} -> if val == n, do: index + 1, else: index
  #   end
  # end

  defp solve(n) do
    len =
      Integer.to_string(n, 2)
      |> String.length()

    len - 1
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
