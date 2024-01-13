defmodule Main do
  def main do
    Acl.Input.get_n_list()
    |> solve()
    |> IO.puts()
  end

  defp solve([a, b]) do
    cond do
      0 < a and b == 0 -> "Gold"
      a == 0 and 0 < b -> "Silver"
      0 < a and 0 < b -> "Alloy"
    end
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
