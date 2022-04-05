# POR QUE ELIXIR IMPORTA?

## UMA GENEALOGIA DA PROGRAMAÇÃO FUNCIONAL

Baseado nesta palestra _(Inglês)_: [Why Elixir Matters: A Genealogy of Functional Programming](https://youtu.be/cWAHpvkh8Vs)

> "_POR QUE EU DEVERIA GASTAR MEU RARÍSSIMO TEMPINHO ESTUDANDO ESSA PARADA DE PROGRAMAÇÃO FUNCIONAL?_"

A programação funcional tem se tornado mais popular recentemente, mas no geral podemos dizer que não é nem metade do que poderia ser.

_A programação funcional "falhou", a comunidade "falhou"._

### POR QUE FALHAMOS?

Vamos tratar as linguagens funcionais como parte de uma familia com diversas espécies diferentes.

#### HISTÓRIA

Normalmente pensamos nas linguagens de programação do ponto de vista de suas vantagens e desvantagens, comparando uma a outra como se apenas suas features importassem e isso fosse o que era responsável pela sua popularidade e adoção.

No mundo real outras questões impactam no quão popular uma linguagem pode ser. Problemas políticos, limitações da época, preferências do momento, necessidades ainda não descobertas, etc.

Podemos agora ver um pouco da história disso tudo até entender quais as implicações do mundo real que nos levam a suposta "falha" do paradigma funcional:

- **1930** : Lambda Calculus

O cálculo lambda é como um ancestral comum entre todas as linguagens funcionais.

Um sistema formal de lógica matemática que estuda a computação baseada em funções usando ligações de variáveis e substituição. É um modelo de computação que pode ser usado para construir uma maquina de Turing.

- **1958** : Lisp

Baseada em funções e equações recursivas de primeira ordem e com ligações dinâmicas de valores. Está linguagem é fortemente inspirada pelo cálculo lambda.

- **1970** : Scheme

Ainda muito focada na academia, mas agora tentando tornar Lisp mais prática.

Scheme pegou Lisp e fez com ela realmente se adequasse ao cálculo lambda.

- **1973** : ML

Adiciona pattern matching para argumentos de funções, algo que acaba se tornando quase um padrão na maioria das linguagens funcionais.
Adiciona tipos estáticos em Lisp

- **1986** : Erlang

Criada pela Ericson para melhorar a sua comunicação telefônica.

Une concorrência com a programação funcional e se torna conhecida por isso.

- **1988** : Miranda

Descende de ML

- **Haskell** : Haskell

Puxa muitas coisas de Miranda e introduz tipos estáticos.

##### RENASCENÇA

Agora a programação funcional começa a se tornar mais notável fora do ambiente acadêmico e passa a ser mais cobiçada pela industria.

- **2004** : Skala

Funcional / OO - Roda na JVM.

Um grande passo.

- **2005** : F#

Parte do ecossistema DotNet. Descendente direta da família ML

- **2007** : Clojure

Mais uma na JVM, mas sem puxar a Orientação a Objetos. Seu dialeto principal é próximo de Lisp

- **2009** : Akka

Não é funcional, mas é importante pois lembra da junção de concorrência e programação funcional popularizada pela Erlang.

- **2010** : Rust

Traz diversos conceitos da programação funcional e incluí mais uma vez a tipagem estática e forte.

- **2011** : Elixir

José Valim pega sua experiência no mundo Ruby + Rails e traz para o ecossistema Erlang VM

Depois disso vemos ainda o surgimento de Elm e da inclusão mais forte de conceitos da programação funcional no front end com ReactJS

#### POR QUE ELIXIR E ERLANG IMPORTA

> "_O crescimento da popularidade da internet e a necessidade pela disponibilidade ininterrupta de serviços estende a classe de problemas que Erlang é capaz de resolver._"

**- Joe Armstrong**

- Se Erlang resolve tão bem esses problemas por que então ela não é a linguagem mais popular da atualidade ?

Para resolver essa questão podemos responder o por que Elixir importa

- **Syntax**

_Elixir funciona como um açúcar sintático para a Erlang._

A linguagem de programação Erlang não era muito pensada para programadores que já programavam em linguagens de propósito geral, era muito específica e divergia bastante de linguagens populares no momento.

Os poderes da Erlang... com uma cara bonita

- **Web**

Erlang é usada em aparatos que são vistos frequentemente na Web, como no RabbitMQ e na própria infraestrutura da comunicação da Web, mas não se tornou popular para construir servidores como foi o caso do Ruby, Java, PHP, etc.

Elixir surge com a web na mente, portante o ecossistema Erlang para esse público de desenvolvedores web.

José Valim era um dos participantes do núcleo do Ruby on Rails e podemos ver essas inspirações em diversas partes do Elixir.

- **Evangelismo**

A Ericson não fez tanto barulho para popularizar a Erlang quanto companhias como a Sun Microsystems fez para popularizar o Java, ou o esforço da Netscape e Mozilla para padronizar e popularizar o Javascript em todos os navegadores.

A comunidade do Elixir tem como parte de si um pedaço da comunidade Ruby e Erlang, o que já traz uma certa força de evangelização da linguagem.

**Para popularizar Elixir devemos vender a linguagem com base em como ela pode te ajudar e não só nas features que ela tem.**
