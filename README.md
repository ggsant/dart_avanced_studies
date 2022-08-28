# design_patterns_studies

![image](https://user-images.githubusercontent.com/61892998/187052966-90b30b5f-a49c-4012-9254-0042f250baf4.png)

### Strategy

![image](hhttps://miro.medium.com/max/1400/1*ztL8WCv8bdFPwEt1MRUpFg.jpeg)

O padrão de Strategy é um padrão comportamental que permite selecionar um algoritmo em tempo de execução. Em vez de implementar um único algoritmo diretamente, podemos passar o algoritmo em tempo de execução de uma família de algoritmos.

Por exemplo, um aplicativo que usa REST para chamar APIs pode precisar escolher entre diferentes modelos REST (Ex: Proxy habilitado, SSL configurado) com base no env de compilação (dev, test, prod). Isso pode não ser conhecido até o tempo de execução.

O Strategy usa Composição em vez de Herança. Também é compatível com OCP, que afirma que a classe deve ser aberta para extensão, mas fechada para modificação.

# Intenção
* Definir a família de algoritmos, encapsular esses algoritmos e usá-los dependendo da situação.
* Encapsule detalhes de implementação em classes derivadas.

# Problema
Suponha que você tenha que fazer um projeto para salvar arquivos em vários formatos, png .txt .csv .jpg etc. o padrão Strategy será perfeito para isso, que separará os algoritmos que gravam arquivos em vários formatos e encapsulará esses algoritmos para facilitar a manutenção esses algoritmos no futuro.

# Usar quando:
Você tem muitos algoritmos emaranhados uns com os outros executando funções diferentes, então é melhor organizá-los, separá-los e encapsulá-los.

# Perguntas a serem consideradas antes de pensar sobre esse padrão

1. Com que frequência você sente a necessidade de selecionar um algoritmo em tempo de execução?
Você tem um conjunto de algoritmos que são selecionados com base em determinadas alterações/configurações de tempo de execução?
2. Seu código está aberto para extensão?
3. Se a resposta for sim para qualquer uma das perguntas acima, o Strategy Pattern pode ser uma boa opção para você.

# Estrutura
Como de costume, o diagrama de padrões de estratégia.

Os elementos mais importantes na implementação desse padrão são:

* O Cliente cria e passa o objeto de estratégia para o contexto.
* O Context mantém uma referência da estratégia passada e se comunica com este objeto somente através da interface Strategy.
* A interface Strategy é comum a todas as estratégias concretas e declara o método que o contexto usa para executar uma estratégia.
* O Concrete Strategies implementa diferentes variações de um algoritmo que o contexto usa.

![image](hhttps://miro.medium.com/max/924/0*gdguPaUUWX73ZsOQ.png)

# Relações com outros padrões de design
* A implementação do padrão Strategy é muito semelhante ao padrão State , esses padrões diferem apenas na finalidade de uso.
* Objetos do template Strategy geralmente usam o padrão Flyweight .
* Os padrões Strategy , State , Bridge e até certo ponto Adapter possuem estruturas semelhantes, ou seja, head (client ou handle) e body, apenas diferem em propósito, todos são para problemas diferentes


[Strategy pattern](https://refactoring.guru/design-patterns/strategy)