# Design patterns studies

![image](https://user-images.githubusercontent.com/61892998/187052966-90b30b5f-a49c-4012-9254-0042f250baf4.png)

# Strategy
**Intenção**
É um padrão de design comportamental que permite definir uma família de algoritmos, colocar cada um deles em uma classe separada e tornar seus objetos intercambiáveis.

**Problema**
O problema principal que o strategy tenta resolver, é diminuir o acoplamento entre classes bases de classes derivadas.

como isso ele acaba indo de encontro a um dos princípios do solid “principle open-closed”.

**Solução**
Encapsule detalhes da interface em uma classe base e oculte detalhes da implementação em classes derivadas. Os clientss podem, então, se acoplar a uma interface e não precisam se modificados: com isso, nosso client não sofreria nenhum impacto quando o número de classes derivadas é alterado e nenhum impacto quando a implementação de uma classe derivada é alterada.

**Implementação**
O diagrama de classes UML para a implementação do Padrão de Design da Estratégia é apresentado abaixo:

**Prós**
Você pode trocar algoritmos usados ​​dentro de um objeto em tempo de execução.
Você pode isolar os detalhes de implementação de um algoritmo do código que o utiliza.
Você pode substituir herança por composição.
Princípio Aberto / Fechado . Você pode introduzir novas estratégias sem precisar alterar o contexto.

**Contras**
Se você possui apenas alguns algoritmos e eles raramente mudam, não há motivo real para complicar demais o programa com novas classes e interfaces que acompanham o padrão.
Os clientes devem estar cientes das diferenças entre as estratégias para poder selecionar uma adequada.
Muitas linguagens de programação modernas têm suporte ao tipo funcional que permite implementar versões diferentes de um algoritmo dentro de um conjunto de funções anônimas. Então você poderia usar essas funções exatamente como usaria os objetos de estratégia, mas sem inchar seu código com classes e interfaces extras.
# Observer

**Intenção**
É um padrão de design comportamental que permite definir um mecanismo de assinatura para notificar vários objetos sobre quaisquer eventos que ocorram no objeto que estão observando.

**Problema**
Um grande projeto monolítico não se adapta bem à medida que novos requisitos de gráficos ou monitoramento são cobrados.

**Solução**
Defina um objeto que seja o “guardião” do modelo de dados e / ou lógica de negócios (Subject). Delegue todas as funcionalidades de “ view” a objetos Observer dissociados e distintos. Os observers se registram no Subject à medida que são criados. Sempre que o Subject muda, transmite a todos os Observers registrados que ele mudou, e cada Observer consulta o Subject pelo subconjunto do estado do Subject que é responsável pelo monitoramento.

Isso permite que o número e o “type” de objetos “view” sejam configurados dinamicamente, em vez de serem especificados estaticamente em tempo de compilação.

**Implementação**
O diagrama de classes UML para a implementação do Observer Design Pattern é apresentado abaixo:

**Prós**
Princípio Aberto / Fechado . Você pode introduzir novas classes de assinantes sem precisar alterar o código do editor (e vice-versa, se houver uma interface do editor).
Você pode estabelecer relações entre objetos em tempo de execução.

**Contras**
Os assinantes são notificados em ordem aleatória.

# Decorator
**Intenção**
O Decorator é um padrão de design estrutural que permite anexar novos comportamentos aos objetos, colocando-os dentro de objetos especiais do wrapper que contêm os comportamentos.

**Problema**
Você deseja adicionar comportamento ou estado a objetos individuais em tempo de execução. A herança não é viável porque é estática e se aplica a uma classe inteira.

**Solução**
Estender uma classe é a primeira coisa que vem à mente quando você precisa alterar o comportamento de um objeto. No entanto, a herança tem várias advertências sérias que você precisa estar ciente.

A herança é estática. Você não pode alterar o comportamento de um objeto existente no tempo de execução. Você só pode substituir o objeto inteiro por outro criado a partir de uma subclasse diferente.
As subclasses podem ter apenas uma classe pai. Na maioria dos idiomas, a herança não permite que uma classe herde comportamentos de várias classes ao mesmo tempo.
Uma das maneiras de superar essas advertências é usando Agregação ou Composição em vez de herança . Ambas as alternativas funcionam quase da mesma maneira: um objeto faz referência a outro e delega-lhe algum trabalho, enquanto que com a herança, o próprio objeto é capaz de fazer esse trabalho, herdando o comportamento de sua superclasse.

Com essa nova abordagem, você pode facilmente substituir o objeto “auxiliar” vinculado por outro, alterando o comportamento do contêiner em tempo de execução. Um objeto pode usar o comportamento de várias classes, tendo referências a vários objetos e delegando a eles todos os tipos de trabalho. A agregação / composição é o princípio principal por trás de muitos padrões de design, incluindo o Decorator. Nessa nota, vamos voltar à discussão sobre padrões.

**Implementação**
O diagrama de classes UML para a implementação do padrão de design do decorador é apresentado abaixo:

As classes, interfaces e objetos no diagrama de classes UML acima são os seguintes:

Component
Essa é uma interface que contém membros que serão implementados pela ConcreteClass e Decorator.

ConcreteComponent
Esta é uma classe que implementa a interface do componente.

Decorator
Esta é uma classe abstrata que implementa a interface Component e contém a referência a uma instância Component. Essa classe também atua como classe base para todos os decoradores de componentes.

ConcreteDecorator
Esta é uma classe que herda da classe Decorator e fornece um decorador para componentes.

**Prós**
Você pode estender o comportamento de um objeto sem criar uma nova subclasse.
Você pode adicionar ou remover responsabilidades de um objeto em tempo de execução.
Você pode combinar vários comportamentos envolvendo um objeto em vários decoradores.
Princípio de responsabilidade única . Você pode dividir uma classe monolítica que implementa muitas variantes possíveis de comportamento em várias classes menores.

**Contras**
É difícil remover um invólucro específico da pilha de invólucros.
É difícil implementar um decorador de forma que seu comportamento não dependa da ordem na pilha de decoradores.
O código de configuração inicial das camadas pode parecer bastante feio.