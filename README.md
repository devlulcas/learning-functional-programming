# ⚗️ ELIXIR

Estarei aprendendo Elixir para construir um projeto web de finanças pessoais e para aprender o paradigma funcional.

Esse desafio deve me trazer um novo ponto de vista sob a programação e é este o meu objetivo final.

## ⚙️ SOBRE PROGRAMAÇÃO FUNCIONAL

Na programação funcional temos basicamente apenas funções.

Podemos imaginar o funcionamento de um programa feito com o paradigma funcional como um chão de fábrica onde a matéria prima vai passando por processos até se tornar o produto final.

> Além desse conceito, temos mais alguns outros que são importantes quando programamos com uma linguagem funcional, como por exemplo:

- Composições de funções
- Imutabilidade
- Funções puras
- Funções de alta ordem

## ❓ POR QUE ELIXIR?

Elixir é uma linguagem razoavelmente nova que tenta aprender com outras linguagens como Ruby, Erlang e Lisp para nos trazer uma boa experiência de desenvolvimento.

> O caminho a se seguir com Elixir é mais claro e suas propostas são interessantes.

_Extra: Elixir é brasileira :D e tem uma logo legal_

## 🏷️ VARIÁVEIS

Podemos criar variáveis apenas usando o nome delas. Quando uma variável não vai ser utilizada devemos colocar um underline na frente de sua declaração

**Não pense em variáveis no elixir como você pensa em variáveis em linguagens imperativas**

Variáveis no elixir não agem como `espaços para valores` pense nelas como `rótulos/nomes para valores`

## 👍 TIPOS

- Int = 1
- Float = 1.0
- Bool = true
- Atom / Symbol = :atom
- String = "elixir"
- List = [1, 2, 3]
- Tuple = {1, 2, 3}

## INTEIROS

> Atalhos para usar números em diversos formatos

```elixir
0x1F # HEXA
0o777 # OCTAL
Ob1010 # BINÁRIO
```

## FLOATS

> Floats devem possui um ponto ou `e` (Notação científica)

> Floats são números de 64 bits de dupla precisão

## BOOLEANOS

Usamos os velhos true e false.
Fazemos comparações com == como uma linguagem de programação normal `:)`

> Funções como `is_boolean` verificam se algo é realmente boolean

## ATOMS

Esse aqui soa peculiar, mas depois é bem legal

Atoms são unidades cujo valor é o próprio nome:

```elixir
:lucas # É literalmente isso aqui
```

Podemos verificar se um atom é igual ao outro sem fazer bagunça... e para que sejam realmente iguais basta que seus nomes sejam iguais

```elixir
:fusca == :fusca
```

Eles são frequentemente usados para expressar o estado de uma operação

```elixir
:ok
:error
```

**OBS: true e false são atoms também**

```elixir
:true == true
:false == false
```

> true, false e nil são enums que não precisam dos dois pontos

> No elixir também existem os `aliases` que também são atoms, mas começam com letra maiúscula... vamos falar deles depois

## STRINGS

São delimitadas por aspas duplas e são UTF-8 por padrão.

Interpolação de strings é muito fácil:

```elixir
nome = "lucas"
comida_preferida = :queijo
IO.puts("Oi! Eu sou o #{nome} e gosto de #{comida_preferida}")
```

> As strings do elixir são representadas internamente como pedaços contínuos de bytes, vulgo: binários

```elixir
is_binary("elixir") # true
byte_size("elixir") # 6
```

**OBS: `byte_size` pega a quantidade de bytes que aquela string ocupa e isso pode ser um problema se você está usando isso para medir o tamanho de uma strings já que algumas letras e símbolor no UTF-8 ocupam mais de um byte**

> Use `String.length("elixir")` para conseguir o tamanho real da string

O módulo `String` possui várias funções úteis para lidar com strings e elas são todas baseadas no padrão Unicode:

```elixir
String.upcase("uêpa")
```

_Se você ver uma "string" definida com aspas simples, saiba que não são strings, mas listas de caracteres_

## OPERAÇÕES ARITMÉTICAS

> OBS: Divisões com / no Elixir sempre retornam floats. Para obter um inteiro você deve usar div ou rem para obter o resto da divisão

```elixir
divisao = 6 / 3 # 2.0
divisao_inteira = div(6, 3) # 2
resto = rem(5, 2) # 1

IO.puts(divisao)
IO.puts(divisao_inteira)
IO.puts(resto)
```

**Perceba que podemos chamar funções sem os parêntesis com ao menos um argumento**

> Podemos usar round para obter o inteiro mais próximo de um número real ou trunc para obter apenas a parte inteira desse número.

```elixir
trunc(3.6) # 3
round(3.6) # 4
```

**OBS: Podemos usar `h` + nome da função para obter informações sobre ela:**

```elixir
h trunc/1
```

## SOBRE FUNÇÕES

Funções são identificadas por duas informações:

- Arity
- Nome

O `arity` de uma função diz quantos argumentos ela recebe.

### FUNÇÕES ANÔNIMAS

Podemos passar funções como se fossem variáveis usando `fn` combinado com um `end`

```elixir
soma = fn a, b -> a + b end
add.(1,2)
```

O ponto parece estranho a primeira vista, mas ele está aí para diferenciar funções anônimas de funções nomeadas _(O elixir deixa bem claro que os dois são diferentes)_

## LISTAS

Listas aqui são as famosas **linked lists** e são dinâmicas.

```elixir
lista = [1, 1.2, true]
length(lista) # 3
```

**Podemos fazer operações com listas**

> Ex:

```elixir
[1, 2, 3] -- [1, 3] # [2]
[1, 2] ++ [[3, 4] # [1, 2, 3, 4]
```

**OBS: Podemos fazer essas operações sem peso na consciência, pois as listas originais continuam intactas. Estruturas de dados no elixir são imutáveis e operações apenas retornam um novo valor.**

Temos como pegar o primeiro item da lista ou todos menos o primeiro com `head` e `tail`

```elixir
lista = [1, 2, 3]
hd(list) # 1
tl(list) # 2, 3
```

> Quando temos uma lista com caracteres imprimíveis eles se tornaram caracteres no output

> Se tiver dúvida do que o um valor realmente é você pode usar `i` para ver mais informações

## TUPLAS

São como listas mas são armazenadas continuamente na memória. Isso faz com que acessar elas por index é extremamente rápido.

```elixir
tupla = {1, 2, 4, "abacate"}

elem(tupla, 3) # abacate

tuple_size tuple # 4

put_elem(tupla, 1, "laranja") # {"laranja", 2, 4, "abacate"}
```

### LISTAS VS TUPLAS

Listas guardam para cada elemento seu valor e um ponteiro para o próximo elemento. Isso faz com que em operações como soma de listas e obtenção de seu tamanho sejam prejudicadas dependendo do tamanho da lista.

No geral a performance de uma soma de lista será impactada dependendo do tamanho da lista a esquerda

```elixir
lista = [1, 2, 3]

[0] ++ lista # rápido
lista ++ [0] # um pouco menos rápido
```

Tuplas existem de forma contínua na memória. Isso faz com que operações que alteram seu valor sejam custosas, pois quando "alteramos" na verdade criamos uma nova.

_Uma tupla antiga e uma nova ainda compartilham seus elementos, exceto o que foi modificado_

## OPERADORES BÁSICOS

### `+`, `-`, `*`, `/` = Matemáticos

### `++`, `--` = Manipulam listas

### `<>` = Concatena strings

### `not`, `and`, `or` = Lógicos estritos

> _Esperam receber operações que resultem em booleans... 1 and true resulta em erro_

### `!`, `&&`, `||` = Lógicos não estritos

> _Esses seriam seus equivalentes, mas esses aceitam quase tudo como true exceto false e nil_

### Além desses temos também outros como `>`, `<`, `>=`, `<=`, `==`, `===`, `!=`, `!==`

A diferença entre `==` e `===` é que os três iguais são mais estritos ao comparar números

```elixir
1 == 1.0 # true
1 === 1.0 # false
```

Podemos comparar tipos de dados diferentes. A razão é o pragmatismo.
Algoritmos de sorting não precisam de se preocupar com tipos de dados para sortear informações.

> A ordem de sorteamento de mais baixo para mais alta é:

```elixir
number < atom < reference < function < port < pid < tuple < map < list < bitstring

:hello > 999 # true
```

## MATCH OPERATOR

O sinal de `=` é chamado de _match operator_ no elixir e tem mais usos que apenas assinalar valores a variáveis.

```elixir
x = 1
1 = x # 1
2 = x # Match error - Valor da direita não bate com o da esquerda: 1
```

**Uma variável só pode receber um valor pelo lado direito da expressão. O nome da variável precisa estar do lado esquerdo.**

_Ao tentarmos criar uma variável pelo outro lado a linguagem entende que estamos tentando acessar uma função_

## PATTERN MATCHING

O operador `=`, como já disse, faz mais que assinalar variáveis, ele também pode desestruturar tipos de dados mais complexos

```elixir
{categoria, nome, peso} = {:lutador, "José", 88.8}

IO.puts(categoria)
IO.puts(nome)
IO.puts(peso)
```

**Essa desestruturação resulta em erro quando:**

- _Os dois lados da operação são de tamanhos diferentes_

- _Os dois lados da operação são de tipos diferentes_

> Podemos usar essa propriedade para garantir que apenas certos valores iram bater com o outro

```elixir
{:ok, resultado} = {:ok, 42}
IO.puts(resultado) # 42

{:ok, resultado} = {:error, :👎}
# Match error
```

## REBINDING E BINDING

Em Elixir podemos fazer isso:

```elixir
var = 10
var = 20
```

Calma aí amigão, as variáveis não mudaram de verdade. Você apenas mudou o significado do rótulo `var`.

```elixir
base = 10
multiplica = fn valor -> valor * base end
multiplica.(2) # 20
base = 555
multiplica.(2) # 20
```

Perceba que apesar de termos _alterado_ o significado de base, nos não alteramos o valor de base em qualquer outro ponto do código onde ela tenha sido chamada anteriormente.

Ou seja... não alteramos o valor de onde foi definida até o momento onde foi redefinida, mesmo depois de invocar uma função que usa seu valor após a "modificação" dele nós obtemos um resultado que só é obtido com o antigo valor.

O valor é armazenado na memória, não a variável.

Agora vamos comparar com o mesmo código em Javascript (Com let)

```js
let base = 10;
const multiplica = (valor) => valor * base;
multiplica(2); // 20
base = 20;
multiplica(2); // 40
```

> Claro que poderíamos mudar de `let` para `const` (o que seria o ideal), mas para efeitos demonstrativos de como o _rebind_ de variáveis funciona no elixir esse exemplo funciona.

### PIN

Se o comportamento acima não é o que você quer para determinado trecho do código você pode optar por pinar o valor ao seu rótulo com o operador `^`.

```elixir
x = 1
^x = 2 # MatchError: Não bate com o valor da direta: 2
```

Lembrando sempre que o `=` é um operador de match.

Quando usamos o pin num rótulo (nome de variável) nós ligamos ele ao valor a direita. O exemplo anterior seria o equivalente de:

```elixir
1 = 2 # MatchError: Não bate com o valor da direta: 2
```

Podemos usar essa propriedade em pattern matchings de estruturas maiores:

```elixir
x = :boa
{y, ^x} = {:barril, :boa} # Sucesso
{y, ^x} = {:barril, :ruim} # MatchError
```

As vezes a gente quer ignorar o algum valor e para isso é comum usar um `_`:

```elixir
{y, _} = {:barril, :ruim} # Sucesso
```

Isso não é só um padrão largado por aí, esse rótulo não permite leitura:

```elixir
IO.puts(_) # Uso inválido de _. "_" representa um valor para ser ignorado
```

## CASE, COND, IF E UNLESS

Esses são alguns dos controles de fluxo do elixir.

### CASE

Com ele podemos comparar um valor com diversos outros padrões até acharmos um correspondente

```elixir
# {atom, tupla}
# {:ok, {"a.md", "b.md"}}
{:ok, arquivos} = File.ls("../trecos")

case arquivos do
  {"c.sh"} -> # Não entra aqui
  {"d.exs"} -> # Não entra aqui
  {"a.md", "b.md"} -> # Entra aqui
  _ -> # Isso aqui vai levar para o limbo o que vier... e entra aqui também
end
```

Se a gente jogar uma variável no meio ela será ligada ao valor que vier ali:

```elixir
case arquivos do
  {"c.sh"} -> # Não entra aqui
  {"d.exs"} -> # Não entra aqui
  {"a.md", algo} -> # Entra aqui e liga "algo" ao "b.md"
end
```

Para testar um valor contra uma variável existente nós pinamos ela

```elixir
algo = "b.md"
case arquivos do
  {"c.sh"} -> # Não entra aqui
  ^algo -> # Não entra aqui
  {"a.md", ^algo} -> # Entra aqui
end
```

Essas paradinhas que usamos para verificar são as cláusulas. Podemos adicionar condições extras com guardas especiais

```elixir
case {1, 2, 3} do
  {1, num, 3} when num < 2 -> # Entraria aqui se num fosse menor que 2... mas 2 é ligado a num na cláusula, então não vai rolar
  _ -> # Entra aqui
end
```

Se nenhuma cláusula bater então um erro é lançado.

[Podemos ver mais sobre padrões e guardas na hexdoc](https://hexdocs.pm/elixir/patterns-and-guards.html)

Sabia que podemos ter várias clausulas e guardas em funções anônimas?

```elixir
soma = fn
  x, y when x < 0 -> y
  x, y -> x + y
end
```

### COND

O case é útil quando queremos comparar com diversos valores, mas em alguns outros casos nós queremos mesmo é verificar várias condições e pegar o valor dá primeira que não resulta em `false` ou `nil`.

```elixir
idade = 6
cond do
  idade >= 18 -> "Pode beber álcool"
  idade >= 16 -> "Pode beber refrigerante"
  idade <= 12 -> "Pode beber suco"
end

# "Pode beber suco"
```

Podemos notar que isso é praticamente um `if` `else if` de uma linguagem com uma carinha mais imperativa, algo que a gente não vê no elixir com frequência.

**Se nenhuma condição satisfazer o objetivo de obter um true então o elixir lança um erro `CondClauseErro`.**

Caso queira que essa condição sempre caia em algo, mesma depois de ser recusada por todas as outras podemos usar um `true` no fim do `cond`.

```elixir
idade = 6
cond do
  idade >= 18 -> "Pode beber álcool"
  idade >= 16 -> "Pode beber refrigerante"
  idade >= 12 -> "Pode beber suco"
  true -> "Só água para este"
end
```

O `true` equivale ao bloco `else` neste caso.

**OBS: Para o bloco `cond` todo valor que não é `false` ou `nil` é considerado true.**

### IF E UNLESS

Além do `case` e do `cond` temos esses dois aí. Elixir provê o `if/2` e o `unless/2` que são úteis quando queremos checar apenas uma condição.

```elixir
if true do
  "YAHOOOO - ENTRA AQUI"
end

unless true do
  "NÃO ENTRA AQUI"
end
```

Se a condição passada como argumento para o `if` resultar em false ou nil então o código dentro do bloco não é executado. O contrário acontece com o `unless`.

Dessa forma o `unless` é quase como um `if` negado. Algo como o exemplo em _Javascript_ abaixo:

```js
if (!algo) {
  // Só roda isso se a condição vier como falsa para invertemos com o !
}
```

O unless torna a operação acima mais clara.

**Elixir possuí `else`... só não é comum ver em um Elixir idiomático**

```elixir
if false do
  "Não roda"
else
  "Roda"
end
```

### ESCOPO DE VARIÁVEIS NO ELIXIR

Aproveitando que falamos de condicionais, vamos falar de como funciona o escopo de variáveis no Elixir.

```elixir
var = 1

if true do
  var = 5
  IO.puts(var) # 5
end

IO.puts(var) # 1

```

Quando alteramos o valor de uma variável dentro de um `if`, `case` ou algo similar a alteração só existe dentro desse bloco.

**OBS + CURIOSIDADE**

> `if` e `unless` na verdade são macros _(falaremos disso depois)_ da linguagem. Essas construções base não são especiais como são em outras linguagens. Você pode ver o código da implementação do `if` no módulo `Kernel` da linguagem. Nesse módulo você vai ver algumas funções base da linguagem. Esse módulo é importado automaticamente no seu código, por isso não precisamos de digitar `Kernel.if`

## KEYWORD LISTS

Listas de palavras chaves e mapas são coleções associativas do Elixir. Algo como um objeto literal no Javascript, um mapa no Kotlin, um array associativo no PHP, um dicionário no Python... etc.

Uma `keyword list` possui performance próxima a de uma lista comum.

O primeiro elemento é um `:atom`:

```elixir
[nome: "Lucas", idade: 19, linguagens: {:elixir, :php, :typescript, :kotlin}]
```

- As chaves são átomos.
- As chaves estão ordenadas.
- As chaves não são únicas.

Listas de palavras chave são frequentemente usadas para passar opções a funções.

```elixir
IO.inspect("Olá mundo", [binaries: :as_binaries])
IO.inspect("Olá mundo", binaries: :as_binaries) # Quando temos uma keyword list como o último argumento de uma função podemos usar sem chaves
```

Uma keyword lista é basicamente uma lista de tuplas com dois elementos

```elixir
[{:chave, "valor"}] = [chave: "valor"] # Deu match
[{:chave, "valor"}] === [chave: "valor"] # true
```

Todas as operações disponíveis para listas estão disponíveis para keyword lists

## MAPS

Os mapas no Elixir normalmente são o que é escolhido para armazenar informações `chave : valor`. Não são ordenados e permitem qualquer tipo na chave.

> Para definir um mapa usamos %{"chave" : "valor"}

```elixir
pessoas = %{"fulano" => "João", "ciclano" => "Maria"}

pessoas["fulano"] |> IO.inspect
```

> Mapas que possuem apenas atoms como chaves podem usar uma sintaxe próxima a de uma lista de palavras chave:

```elixir
pessoas = %{fulano: "João", ciclano: "Maria"}

%{fulano: "João", ciclano: "Maria"} ==  %{:fulano => "João", :ciclano => "Maria"}
# true
```

> A sintaxe para acessar atoms como chaves também muda

```elixir
pessoas = %{fulano: "João", ciclano: "Maria"}
pessoas.fulano # João
```

> Para atualizar uma chave atom que já existe podemos usar o operador cons `|`

```elixir
pessoas = %{fulano: "João", ciclano: "Maria"}
pessoas.fulano # João

%{pessoas | fulano: "Leon"} |> IO.inspect # %{fulano: "Leon", ciclano: "Maria"}
```

**OBS: Se a chave não existir então você recebera um erro. Para adiciona novos items a um mapa use o `Map.put\3`**

```elixir
pessoas = %{fulano: "João", ciclano: "Maria"}
Map.put(pessoas, :chave, :valor)
```

## BINÁRIOS, STRINGS E LISTAS DE CARACTERES

Já vimos sobre strings, mas algo que muitas vezes não nos tocamos é na representação real de um string para um computador.

Para que duas máquinas distintas possam entender que o caractere "A" na máquina 1 também corresponde ao caractere "A" na máquina 2 é necessário que exista um padrão para isso, no nosso caso esse padrão é o Unicode, mais especificamente o UTF-8.

Cada caractere tem um número correspondente a ele. No elixir podemos ver qual é o número a qual aquele caractere corresponde colocando uma interrogação na frente do caractere.

```elixir
?c #99
```

A maior parte das tabelas de caracteres Unicode se referem a cada caractere com seu número hexadecimal. Podemos fazer o mesmo no elixir com "\0000" para referenciar todos os caracteres possíveis.

```elixir
"\u0061" === "a" #true
0x0061 = 97 = ?a #97
```

Agora que temos uma noção de como funciona o Unicode podemos entender melhor a codificação de caracteres no elixir.

Temos que cada código de caractere é encodado como uma serie de bytes. O UTF-8 tem um tamanho variável para essa série de bytes, então encontramos coisas como "e" possuindo um byte e "é" ocupando dois bytes.

```elixir
# A função byte size é útil para checar isso
byte_size("joão")
# ou
"joão" |> byte_size
# = 5
```

Além de compor caracteres o UTF-8 também provê a noção de grafemas.

> Um grafema é uma unidade fundamental / mínima de um sistema de escrita. Pode representar um fonema nas escritas alfabéticas, uma sílaba nas escritas silábicas ou até uma ideia em uma escrita ideográfica ou logográfica.

É comum que caracteres únicos como "ú" sejam representados pela junção de dois caracteres "u" + "´" e no Elixir é possível obter a composição desses dois caracteres e também a versão decomposta do caractere único.

```elixir
composto = String.normalize("é", :nfc) # :nfc = forçar composição
# "é"
String.codepoints(composto)
# ["é"]
String.graphemes(composto)
# ["é"]

decomposto = String.normalize("é", :nfd) # :nfc = forçar decomposição
# "é"
String.codepoints(decomposto)
# ["e", "´"]
String.graphemes(decomposto)
# ["é"]
```

Note que o grafema não muda, mas a contagem de "code points" muda.

**Podemos ver a construção binária de uma string (representada por seus bytes) concatenando o binário `<<0>>` ou usando o IO.inspect passando como parâmetro `binaries: :as_binaries`. Veja:**

```elixir
IO.inspect("olá mundo", binaries: :as_binaries)
#--o----l------á------  ---m----u----n----d----o---
<<111, 108, 195, 161, 32, 109, 117, 110, 100, 111>>
```

No caso do `<<0>>` teríamos zero no fim da lista.

> O que significa o construtor <<>> ?

Esse simbolo indica um `bitstring` que é um tipo no Elixir.

Esse tipo é basicamente uma sequencia contínua de bits na memória.

Normalmente usamos 1 byte para armazenas cada número numa bitstring, por exemplo.

Podemos especificar manualmente o tamanho em bits que algo ocupa com `::` ou `::size()`:

```elixir
<<42>> === <<42::8>> # <<42>> = *
```

No caso a seguir como a gente só reservou 8 bits o binário 257 vira 1 pois o máximo que podemos armazenar em um byte é 255.

```
255 = 100000001 = 9 bits
1   = _00000001 = 8 bits
```

Ignoramos o bit mais a esquerda.

```elixir
<<255>> === <<255>>
<<0>> === <<256>>
<<1>> === <<257>> # true 0...255 -> 256 = 0 / 257 = 1 ...
```

## BINÁRIOS

Um binário é uma bitstring cuja a quantidade de bits é divisível por 8.

```elixir
is_bitstring(<<2::4>>) # true
is_binary(<<2::4>>) # false

is_bitstring(<<2::8>>) # true
is_binary(<<2::8>>) # true
```

Assim como todo quadrado é um retângulo, mas nem todo retângulo é um quadrado, todo binário é uma bitstring, mas nem toda bitstring é um binário.

**OBS: Podemos fazer pattern matching com bit strings <3**

```elixir
<<binário, 1, 42>> = <<0, 1, 42>> # <<0, 1, 42>>
<<0, 1, binário>> = <<0, 1, 42, 13>> # MatchError
<<0, 1, binário::binary>> = <<0, 1, 42, 13>> # <<0, 1, 42, 13>>
```

_`::binary` faz com que possamos fazer pattern matching com um binário de tamanho desconhecido_

**Toda string é um binário, mas nem todo binário é uma string**

```elixir
is_binary("olá") # true
is_binary(<<111, 108, 195, 161>>) # true (esse é o binário de "olá")

String.valid?(<<239, 191, 19>>) # false
is_binary(<<239, 191, 19>>) # true
```

Quando fazemos a concatenação de string com `<>` na verdade estamos concatenando binários

```elixir
"a" <> "b" = "ab" # "ab" (Deu match)
<<97>> <> <<98>> = <<97, 98>> # "ab" (Deu match)
<<97>> <> <<98>> = "ab" # "ab" (Deu match)
```

Cuidado ao fazer pattern matching em strings pois você tem que se lembrar que o pattern matching usando o operador `<<>>` será feito com os bytes. Então se a gente tiver uma string "árvore" e esperarmos que a variável responsável por pegar o primeiro byte bata com "?á" a gente vai se dar mal. Para que quando fizermos `<<byte_letra, resto::binary>> = "árvore"` a comparação `byte_letra === ?á` tenha sucesso nós precisamos usar o modificador `::utf8`.

```elixir
<<byte_letra, resto::binary>> = "árvore"

byte_letra === ?á # falso <<195>> = <<195, 161>>

<<byte_letra::utf8, resto::binary>> = "árvore"

byte_letra === ?á # verdadeiro <<195, 161>> = <<195, 161>>
```

## CHARLISTS

Uma charlist (lista de caracteres) não é algo que você vá ver todo dia, mas pode ser útil quando for fazer algo ligado a Erlang.

É basicamente uma lista de inteiros onde todos eles são valores válidos para caracteres.

Ex: `[111, 105, 32, 109, 227, 101]` = `'oi mãe'`

**Perceba também que aqui usamos aspas simples.**

Aspas simples são usadas para charlists e são validadas como listas. Aspas duplas são usadas para strings (strings binárias)

```elixir
oi = 'oi mãe' = [111, 105, 32, 109, 227, 101] # Match 😃
is_list(oi) # verdadeiro
is_binary(oi) # falso

hi = ' hello mom'

oi ++ hi |> to_string # "oi mãe hello mom"
```

## ENUM
A enumeração é o coração da programação funcional.

O módulo Enum é repleto de métodos para trabalhar com enumeráveis. Listas, tuplas, listas de palavras-chave, mapas, todos estes são enumeráveis.
São mais de 70 funções que iteram, operam, tranformam e geram novas estruturas.

```elixir
list = [1, 2, 3, 4, 5]
list |> Enum.all?(fn num -> num >= 2 end) # false pois nem todos os elementos são maiores ou iguais a dois
list |> Enum.any?(fn num -> num >= 2 end) # true pois ao menos um dos elementos é maior ou igual a dois
list |> Enum.chunk_every(2) # [[1, 2], [3, 4], [5]]
list |> Enum.each(fn num -> num + 1 end) # [2, 3, 4, 5, 6]
list |> Enum.min() # 1 
list |> Enum.min(fn -> :vazio end) # 1 ... mas se estivesse vazia retornaria :vazio
list |> Enum.max() # 5 
list |> Enum.filter(fn num -> num >= 3 end) # [3, 4, 5]
list |> Enum.reduce(5, fn num, acc -> num + acc end) # 19 
list |> Enum.sort(:desc) # [5, 4, 3, 2, 1]

repeated_list = [1, 2, 3, 3, 4, 4]
repeated_list |> Enum.uniq() # [1, 2, 3, 4]
```

## OPERADOR DE CAPTURA
Muitas funções que lidam com enumeráveis utilizam funções anônimas para lidar com cada item da sequência.
Em alguns casos é útil usar uma sintaxe mais sucinta com o operador `&`:

```elixir
[1, 2, 3] |> Enum.map(&(&1 * 2)) # [2, 4, 6]
```

Achou confuso? Eu também achei da primeira vez. 

Com &() você esta definindo que alí é uma função e com &1 você está indicando que está pegando o primeiro argumento passado para a sua função (normalmente isso é usado para funções que passam apenas um paramêtro).

&1 vai ser 1 na primeira iteração, depois vai ser 2 e por último 3.

> Podemos atribuir a função a uma variável e usar ela dentro das nossas funções.

```elixir
defmodule Add do 
  def three(num), do: num + 3 
end

[1, 2, 3] |> Enum.map( &Add.three(&1) )
# ou 
[1, 2, 3] |> Enum.map( &Add.three/1 )
```

## WITH 
O with/1 é usado quando tentamos usar o `case/2` de maneira aninhada ou em em situações que não é possível encadear funções. A expressão with/1 é composta de palavras-chaves, generators e finalmente uma expressão.

