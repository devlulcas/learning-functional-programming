IO.puts("Hello world\n")

# Ignora o :ok e coloca a tupla de arquivos lidos em "files"
{:ok, files} = File.ls("../")

# Algum tipo de loop que eu ainda não entendo
for file <- files do
  # Case de um caso só (melhor por um if)
  case file do
    "elixir" -> IO.inspect("#{file} é massa")
    _ -> IO.inspect(file)
  end
end

# Um grupo de funções, um módulo
defmodule Show do
  # Uma função com um parâmetro -> ou seja only_annotations/1
  def only_annotations(file) do
    # Desestruturando uma lista encadeada
    [filename, extension] = file |> String.split(".")

    # If que compara string com string... ou devo dizer "binário com binário"
    if extension === "md" do
      # Interpolação de strings fofas
      IO.inspect("#{filename} é uma anotação")
    end
  end
end

# Pattern matching lindo e fofo cute cute
{:ok, project_files} = File.ls(".")

# Outra forma de iterar um iterável lol
Enum.each(project_files, fn file -> Show.only_annotations(file) end)

# Somando todos os números de uma string
sum = "155 + 70 + 200 + 30 + 40 + 15 + 5 + 200 + 50"

sum
# Quebrando a string em uma lista
|> String.split(" + ")
# Fazendo um map na lista passando os números para inteiro (& captura uma função e a tranforma em função anônima)
|> Enum.map(&String.to_integer/1)
# Soma todos os items da lista
|> Enum.sum()
# Mostra no terminal
|> IO.inspect()
