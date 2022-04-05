defmodule Html do
  # Cria uma tupla - {:key, "|key|"} - quando recebe um atom
  def template(key) when is_atom(key) do
    "|#{key}|"
  end

  # Cria uma keywordlist - lista de tuplas
  def template(keys) do
    keys |> Enum.map(&Html.template/1)
  end

  def render(content) do
    {:ok, html} = File.read("./input.html")

    to_replace = content |> Map.keys() |> Html.template()

    content_value = content |> Map.values()

    # "|a|" : "more" -> to_replace : content_value
  end
end

content = %{title: "More potions", quote: "Elixir is cool"}

Html.render(content) |> IO.inspect()

# keys = Map.keys(to_replace)

# a: "|x|" -> a: "olá" | "|x|" -> "olá"
# String.replace(html, )
