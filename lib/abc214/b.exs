defmodule Main do
  def main do
    Acl.Input.get_n_list()
    |> solve()
    |> Enum.count()
    |> IO.puts()
  end

  defp solve([s, t]) do
    for a <- 0..100, b <- 0..100, c <- 0..100, a + b + c <= s, a * b * c <= t, do: {a, b, c}
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
