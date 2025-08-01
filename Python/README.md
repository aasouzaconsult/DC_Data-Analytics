# Capítulo 1: Introdução ao Python e Ambiente de Desenvolvimento

## **Seção 1.1: Introdução ao Python**

### **O que é Python?** 🐍

Python é uma linguagem de programação de alto nível, interpretada e de propósito geral, criada por Guido van Rossum e lançada em 1991. Ela é conhecida por sua simplicidade e clareza, o que a torna uma excelente opção para iniciantes em programação, bem como para profissionais que buscam uma linguagem versátil e poderosa.

Python possui uma sintaxe elegante e legível, que se assemelha muito à linguagem humana. Isso facilita a escrita e a compreensão do código, tornando o processo de desenvolvimento mais eficiente e menos propenso a erros.

### **Vantagens do Python para Análise de Dados**

Python se tornou uma escolha popular para análise de dados, ciência de dados e aprendizado de máquina por várias razões:

1. **Ampla Comunidade e Ecossistema de Bibliotecas:** Python possui uma comunidade ativa e uma rica coleção de bibliotecas específicas para análise de dados, como NumPy, Pandas, Matplotlib, Seaborn, Plotly e scikit-learn. Isso acelera o desenvolvimento, permitindo que você utilize ferramentas prontas para análise e visualização.

2. **Sintaxe Simples e Legível:** A sintaxe clara e intuitiva do Python torna o processo de análise de dados mais fácil de compreender e implementar. Isso é especialmente vantajoso quando se trabalha com dados complexos.

3. **Interpretação e Interatividade:** A natureza interpretada do Python permite experimentação rápida e interativa. O ambiente interativo do Python (como o Jupyter Notebook) permite a exploração de dados passo a passo, facilitando a depuração e a visualização dos resultados.

4. **Facilidade de Integração:** Python pode ser facilmente integrado com outras linguagens e ferramentas, o que é útil quando você precisa colaborar com equipes que usam diferentes tecnologias.

5. **Grande Flexibilidade:** Python é uma linguagem versátil, adequada para várias tarefas, desde limpeza e transformação de dados até a construção de modelos complexos de aprendizado de máquina.

6. **Crescente Demanda no Mercado:** A demanda por profissionais que possuam habilidades em Python para análise de dados e ciência de dados está em constante crescimento, tornando-o um ativo valioso em várias indústrias.

---
## **Seção 1.2: Configuração do Ambiente de Desenvolvimento**

### **Instalação do Python e Configuração Inicial**

Antes de começar a programar em Python, é necessário configurar seu ambiente de desenvolvimento. A seguir, passaremos pelas etapas de instalação do Python e configuração inicial.

### **Instalação do Anaconda**

O Anaconda é uma distribuição popular que inclui o Python, juntamente com muitas bibliotecas essenciais para análise de dados e ciência de dados. Ele é especialmente útil para quem está iniciando na análise de dados, pois oferece uma maneira conveniente de configurar um ambiente de desenvolvimento completo. Nesta seção, abordaremos a instalação do Anaconda em diferentes sistemas operacionais.

### **Passo 1: Baixar o Anaconda** 🐍⬇️

Acesse o site oficial do Anaconda (https://www.anaconda.com/products/distribution) e faça o download da versão adequada para o seu sistema operacional (Windows, macOS ou Linux). 

### **Passo 2: Instalar o Anaconda**

#### **Windows:**

1. Execute o instalador que você baixou.
2. Siga as instruções do instalador.
3. Selecione a opção "Install for me only" para instalar o Anaconda apenas para o usuário atual (a menos que você precise instalá-lo para todos os usuários).
4. Durante a instalação, você será questionado sobre a adição do Anaconda ao PATH. É recomendável selecionar essa opção para facilitar o acesso aos comandos do Anaconda.

### **Passo 3: Verificar a Instalação**

Após a instalação, você pode verificar se o Anaconda foi instalado corretamente abrindo o **Anaconda Prompt** e digitando:

```bash
conda --version
```

Você deve ver a versão do *Anaconda* que foi instalada.

### **Utilizando o Anaconda Prompt e o Jupyter Notebook**
Procure o **Anaconda Prompt**, e aponte para a pasta onde esta seus arquivos Python (no caso da imagem, esta no c:\python)

![](https://blogdozouza.files.wordpress.com/2023/08/anaconda1.png)

E para abrir o Jupyter Notebook, basta digitar: *jupyter notebook* no prompt
![](https://blogdozouza.files.wordpress.com/2023/08/anaconda2.png)

### Conhecam também
- [Google Colab](https://colab.research.google.com/)


# Capítulo 2: Fundamentos da Linguagem Python

## **Seção 2.1: Variáveis e Tipos de Dados**

### **Variáveis em Python**

Variáveis são usadas para armazenar dados em um programa. Em Python, você não precisa declarar explicitamente o tipo de uma variável, pois a linguagem é dinamicamente tipada. Isso significa que o tipo de uma variável é determinado automaticamente com base no valor que você atribui a ela.

#### **Exemplo:**

```python
nome = "João"
idade = 25
altura = 1.75
```

### **Tipos de Dados**

Python suporta vários tipos de dados, que podem ser agrupados em categorias principais:

- **Números:** Inteiros (int), números de ponto flutuante (float) e números complexos (complex).
- **Texto:** Strings (str), que são sequências de caracteres.
- **Sequências:** Listas (list), tuplas (tuple - imutável) e ranges.
- **Mapeamento:** Dicionários (dict).
- **Conjuntos:** Sets (set) e conjuntos congelados (frozenset).
- **Booleanos:** Booleanos (bool), que representam os valores True ou False.
- **Binários:** Bytes (bytes), arrays de bytes (bytearray) e objetos de memória (memoryview).

#### **Exemplo:**

```python
idade = 30  # Tipo: int
nome = "Maria"  # Tipo: str
notas = [8.5, 9.0, 7.5]  # Tipo: list
dados_pessoais = {"nome": "Ana", "idade": 22}  # Tipo: dict → mutável
temperaturas = (25.5, 28.0, 23.8)  # Tipo: tuple → imutável
ativo = True  # Tipo: bool
```

Verificar o tipo de dado:
```python
type(idade)
```

#### **Converter tipo:**
Booleano para String

```python
ativo = str(ativo)

ativo = bool(ativo) # volta para booleano
```

Explorem os comandos! 📚

---
## **Seção 2.2: Operadores e Expressões**

### **Operadores Aritméticos**

Os operadores aritméticos são usados para realizar operações matemáticas em valores numéricos.

#### **Exemplos:**

```python
a = 10
b = 3

soma = a + b
subtracao = a - b
multiplicacao = a * b
divisao = a / b
resto = a % b
potencia = a ** b

print(soma)          # Saída: 13
print(subtracao)     # Saída: 7
print(multiplicacao) # Saída: 30
print(divisao)       # Saída: 3.3333333333333335
print(resto)         # Saída: 1
print(potencia)      # Saída: 1000
```

Explorem os comandos! 📚

### **Operadores de Comparação**

Os operadores de comparação são usados para comparar valores.

#### **Exemplos:**

```python
x = 5
y = 8

igual = x == y
diferente = x != y
maior = x > y
menor = x < y
maior_igual = x >= y
menor_igual = x <= y

print(igual)        # Saída: False
print(diferente)    # Saída: True
print(maior)        # Saída: False
print(menor)        # Saída: True
print(maior_igual)  # Saída: False
print(menor_igual)  # Saída: True
```

### **Operadores Lógicos**

Os operadores lógicos são usados para combinar expressões lógicas.

#### **Exemplos:**

```python
p = True
q = False

e = p and q
ou = p or q
nao = not p

print(e)   # Saída: False
print(ou)  # Saída: True
print(nao) # Saída: False
```

### **Operadores de Atribuição**

Os operadores de atribuição são usados para atribuir valores a variáveis.

#### **Exemplos:**

```python
x = 10
x += 5  # Equivalente a x = x + 5
x -= 3  # Equivalente a x = x - 3
x *= 2  # Equivalente a x = x * 2
x /= 4  # Equivalente a x = x / 4

print(x)  # Saída: 6
```

### **Expressões**

Uma expressão é uma combinação de valores e operadores que pode ser avaliada para obter um resultado.

#### **Exemplo:**

```python
a = 10
b = 3

resultado = (a + b) * 2 - (a / b)
print(resultado)  # Saída: 22.666666666666668
```

---
## **Seção 2.3: Estruturas de Controle**

### **Estruturas Condicionais (if/else)**

As estruturas condicionais permitem que você execute diferentes blocos de código com base em condições.

#### **Exemplo:**

```python
idade = 18

if idade >= 18:
    print("Maior de idade")
else:
    print("Menor de idade")
```

Um exemplo mais completo:

```python
# Solicita ao usuário que informe se está bebendo água
resposta = input("Você está bebendo água? (Sim ou Não): ")

# Converte a resposta para letras minúsculas para ser mais flexível
resposta = resposta.lower()

# Verifica a resposta e fornece uma mensagem correspondente
if resposta in ("sim","s","y", "yes","claro"):
    print("Ótimo! Beber água é bom para a saúde.")
else:
    print("Cuidado! Se não beber água, pode acabar com pedra no rim.")
```

### **Loops (for e while)** ➿

Os loops permitem que você execute um bloco de código várias vezes.

#### **Exemplo - Loop for:** 

```python
for i in range(5):
    print(i)
```

```python
# Frequencia (iniciando em 0, indo até 10, pulando de 2 em 2)
for i in range(0,10,2):
    print(i)
```

#### **Exemplo - Loop while:** ➿

```python
contador = 0

while contador < 5:
    print(contador)
    contador += 1
```

### **Instruções Break e Continue**

As instruções `break` e `continue` são usadas para controlar o fluxo de execução em loops.

#### **Exemplo - Instrução Break:**

```python
for i in range(10):
    if i == 5:
        break
    print(i)
```

#### **Exemplo - Instrução Continue:**

```python
for i in range(10):
    if i % 2 == 0:
        continue
    print(i)
```

### **Estruturas Aninhadas**

É possível aninhar estruturas condicionais e loops para criar fluxos de execução mais complexos.

#### **Exemplo - Estruturas Aninhadas:**

```python
for i in range(3):
    print("Iteração externa:", i)
    for j in range(2):
        print("  Iteração interna:", j)
```

---
## **Seção 2.4: Funções e Modularização**

### **Introdução às Funções**

Uma função é um bloco de código reutilizável que realiza uma tarefa específica. Isso ajuda a organizar o código e evita a repetição.

#### **Exemplo:**

```python
def saudacao(nome):
    return "Olá, " + nome + "!"

mensagem = saudacao("Alex Souza")
print(mensagem)  # Saída: "Olá, Alex Souza!"
```

### **Argumentos e Parâmetros**

Funções podem receber argumentos (valores passados para a função) e parâmetros (variáveis que armazenam os valores dos argumentos).

#### **Exemplo:**

```python
def soma(a, b):
    return a + b

resultado = soma(5, 3)
print(resultado)  # Saída: 8
```

### **Valores Padrão de Parâmetros**

Você pode definir valores padrão para os parâmetros de uma função.

#### **Exemplo:**

```python
def saudacao(nome, saudacao="Olá"):
    return saudacao + ", " + nome + "!"

mensagem1 = saudacao("Alex Souza")
mensagem2 = saudacao("Antonio", "Oi")

print(mensagem1)
print(mensagem2)
```

### **Exemplo mais completo - Calculadora**
```python
def calculadora(num1, num2, operacao):
    if operacao == "soma":
        value = num1+num2
        return print(f"A soma de {num1} e {num2} é igual a {value}")
    elif operacao == "subtracao":
        value = num1-num2
        return print(f"A substracao de {num1} e {num2} é igual a {value}")
    elif operacao == "divisao":
        value = num1/num2
        return print(f"A divisao de {num1} e {num2} é igual a {value}")
    elif operacao == "multiplicacao":
        value = num1*num2
        return print(f"A multiplicacao de {num1} e {num2} é igual a {value}")
    else:
        value = num1%num2
        return (f"Já que não colocou nada, ou qualquer coisa, tá ai o módulo de {num1} e {num2} que é igual a {value}")
```

### **Modularização e Módulos**

A modularização envolve dividir o código em módulos separados para melhor organização e reutilização.

#### **Exemplo - Criando um Módulo:**

Crie um arquivo chamado `calculadora.py`:

```python
def soma(a, b):
    return a + b

def subtracao(a, b):
    return a - b
```

Agora, em outro arquivo, você pode importar esse módulo e usar suas funções:

```python
import calculadora

resultado = calculadora.soma(10, 5)
print(resultado)  # Saída: 15
```

### **Desafio**

Criem suas próprias funções e a pratiquem a importação de módulos.


---
## **Seção 2.5: Tratamento de Exceções**

### **Introdução ao Tratamento de Exceções**

O tratamento de exceções permite que você lide com erros de maneira controlada, evitando que o programa seja interrompido abruptamente.

#### **Exemplo:**

```python
try:
    numero = int(input("Digite um número: "))
    resultado = 10 / numero
    print("Resultado:", resultado)
except ZeroDivisionError:
    print("Erro: Divisão por zero não permitida.")
except ValueError:
    print("Erro: Entrada inválida. Digite um número.")
```

### **Instrução `try` e Bloco `except`**

A instrução `try` é usada para envolver o código que pode gerar exceções. O bloco `except` é usado para capturar exceções específicas e fornecer um tratamento adequado.

#### **Exemplo:**

```python
try:
    arquivo = open("arquivo.txt", "r")
    conteudo = arquivo.read()
    arquivo.close()
except FileNotFoundError:
    print("Erro: O arquivo não foi encontrado.")
```

### **Bloco `else` e `finally`**

O bloco `else` é executado se nenhum erro ocorrer no bloco `try`. O bloco `finally` é sempre executado, independentemente de exceções terem sido lançadas ou não.

#### **Exemplo:**

```python
try:
    numero = int(input("Digite um número: "))
except ValueError:
    print("Erro: Entrada inválida. Digite um número.")
else:
    print("Você digitou:", numero)
finally:
    print("Fim da execução.")
```

### **Lançando Exceções Personalizadas**

Você também pode criar suas próprias exceções personalizadas para situações específicas.

#### **Exemplo:**

```python
class SaldoInsuficienteError(Exception):
    pass

def realizar_pagamento(valor, saldo):
    if valor > saldo:
        raise SaldoInsuficienteError("Saldo insuficiente para realizar o pagamento.")
    print("Pagamento realizado com sucesso.")

try:
    realizar_pagamento(150, 100)
except SaldoInsuficienteError as e:
    print(e)
```

## **Seção 2.6: Orientação a Objetos**
A orientação a objetos é um paradigma de programação que se baseia em objetos, que são instâncias de classes. Em Python, a orientação a objetos é uma parte fundamental da linguagem e é usada extensivamente. Vou explicar os conceitos básicos da orientação a objetos em Python e fornecer exemplos para ilustrar esses conceitos.

### 1. Classes e Objetos:

Uma classe é um modelo ou plano para criar objetos. Ela define os atributos (variáveis) e métodos (funções) que os objetos dessa classe terão. Os objetos são instâncias de uma classe.

Exemplo de definição de classe e criação de objetos:

```python
class Carro:
    def __init__(self, marca, modelo):
        self.marca = marca
        self.modelo = modelo

    def dirigir(self):
        print(f"Dirigindo o {self.marca} {self.modelo}")

# Criando objetos da classe Carro
carro1 = Carro("Toyota", "Corolla")
carro2 = Carro("Honda", "Civic")

# Chamando métodos dos objetos
carro1.dirigir()  # Saída: Dirigindo o Toyota Corolla
carro2.dirigir()  # Saída: Dirigindo o Honda Civic
```

### 2. Atributos:

Os atributos são variáveis que armazenam informações sobre o objeto. Eles são definidos na classe e acessados pelos objetos.

Exemplo de atributos em uma classe:

```python
class Pessoa:
    def __init__(self, nome, idade):
        self.nome = nome
        self.idade = idade

pessoa1 = Pessoa("Alice", 30)
print(f"{pessoa1.nome} tem {pessoa1.idade} anos.")  # Saída: Alice tem 30 anos
```

### 3. Métodos:

Os métodos são funções definidas em uma classe que podem ser chamadas em objetos dessa classe. Eles realizam ações relacionadas a esse objeto.

Exemplo de métodos em uma classe:

```python
class Círculo:
    def __init__(self, raio):
        self.raio = raio

    def calcular_area(self):
        return 3.14 * self.raio ** 2

círculo1 = Círculo(5)
area = círculo1.calcular_area()
print(f"A área do círculo é {area}")  # Saída: A área do círculo é 78.5
```

### 4. Herança:

A herança permite criar uma nova classe com base em uma classe existente. A nova classe herda atributos e métodos da classe base.

Exemplo de herança:

```python
class Animal:
    def __init__(self, nome):
        self.nome = nome

    def fazer_som(self):
        pass

class Cachorro(Animal):
    def fazer_som(self):
        return "Au Au"

class Gato(Animal):
    def fazer_som(self):
        return "Miau"

cachorro = Cachorro("Rex")
gato = Gato("Whiskers")

print(f"{cachorro.nome} faz o som: {cachorro.fazer_som()}")  # Saída: Rex faz o som: Au Au
print(f"{gato.nome} faz o som: {gato.fazer_som()}")  # Saída: Whiskers faz o som: Miau
```
Esses são os conceitos fundamentais da orientação a objetos em Python. Classes, objetos, atributos, métodos e herança são amplamente usados para criar programas orientados a objetos em Python.

#### Self
Em Python, `self` é uma convenção usada para se referir ao próprio objeto criado a partir de uma classe. É o primeiro parâmetro de todos os métodos em uma classe e é usado para acessar os atributos e métodos do objeto atual. O nome `self` não é uma palavra-chave reservada em Python, mas é uma convenção amplamente adotada e considerada uma boa prática de programação.

Ao usar `self` como o primeiro parâmetro em métodos de classe, você está dizendo ao interpretador Python que você deseja acessar ou modificar atributos específicos da instância atual da classe, em vez de variáveis globais ou locais. Isso torna mais claro qual instância está sendo referenciada, especialmente em situações em que há várias instâncias da mesma classe.

Aqui está um exemplo de como `self` é usado em uma classe:

```python
class Pessoa:
    def __init__(self, nome, idade):
        self.nome = nome
        self.idade = idade

    def apresentar(self):
        return f"Meu nome é {self.nome} e tenho {self.idade} anos."

# Criando um objeto da classe Pessoa
pessoa1 = Pessoa("Alice", 30)

# Chamando o método apresentar usando o objeto pessoa1
mensagem = pessoa1.apresentar()
print(mensagem)  # Saída: Meu nome é Alice e tenho 30 anos.
```
Neste exemplo, `self` é usado para acessar os atributos `nome` e `idade do objeto `pessoa1`. Dessa forma, você pode acessar as informações específicas da instância atual da classe.


# Capítulo 3: Bibliotecas Fundamentais para Análise de Dados

## **Seção 3.1: Introdução às Bibliotecas**

### **O que são Bibliotecas em Python?**

Bibliotecas são conjuntos de módulos e funções pré-implementados que estendem as funcionalidades do Python. Elas são uma parte essencial da análise de dados, fornecendo ferramentas específicas para manipulação, visualização e processamento de dados.

### **NumPy, Pandas e Matplotlib**

Nesta seção, apresentaremos três bibliotecas fundamentais para análise de dados: NumPy, Pandas e Matplotlib.

#### **NumPy**

O NumPy é uma biblioteca amplamente usada para trabalhar com arrays multidimensionais e funções matemáticas de alta performance.

#### **Exemplo:**

```python
import numpy as np

# Criando um array
arr = np.array([1, 2, 3, 4, 5])

# Operações em arrays
dobro = arr * 2
media = np.mean(arr)
```
*Observação: [Diferença entre array e lista no Python](https://chat.openai.com/share/80ef8646-f68d-402f-884d-058e0f844889)*

#### **Pandas**

O Pandas é uma biblioteca usada para análise e manipulação de dados em estruturas de dados tabulares, conhecidas como DataFrames.

[download](https://pandas.pydata.org/docs/user_guide/index.html#user-guide)

#### **Exemplo:**

```python
import pandas as pd

# Criando um DataFrame
data = {'Nome': ['Ana', 'João', 'Maria', 'Alex'],
        'Idade': [17, 30, 29, 42]}
df = pd.DataFrame(data)

# Filtrando dados
maiores_de_idade = df[df['Idade'] >= 18]
```

#### **Matplotlib**

O Matplotlib é uma biblioteca para criação de gráficos e visualizações de dados.

#### **Exemplo:**

```python
import matplotlib.pyplot as plt

x = [1, 2, 3, 4, 5]
y = [10, 8, 6, 4, 2]

# Criando um gráfico de linha
plt.plot(x, y)
plt.xlabel('Eixo X')
plt.ylabel('Eixo Y')
plt.title('Gráfico de Linha')
plt.show()
```

### **Instalação de Bibliotecas**

Para instalar bibliotecas, você pode usar o gerenciador de pacotes `pip`:

```bash
pip install numpy pandas matplotlib
```

---
## **Seção 3.2: Trabalhando com NumPy**

### Contextualizando Listas, Dicionários e Tuplas 

**Listas (Lists):**
Uma lista em Python é uma coleção ordenada de itens. Você pode armazenar diferentes tipos de dados em uma lista, como números, strings e até mesmo outras listas. As listas são mutáveis, o que significa que você pode adicionar, remover e modificar elementos.

Exemplo de criação de uma lista e operações comuns:

```python
# Criando uma lista de números
lista_numeros = [1, 2, 3, 4, 5]

# Adicionando um elemento ao final da lista
lista_numeros.append(6)

# Acessando elementos da lista pelo índice (começando em 0)
primeiro_elemento = lista_numeros[0]

# Modificando um elemento da lista
lista_numeros[2] = 10

# Removendo um elemento da lista (remove o valor propriamente dito)
lista_numeros.remove(4)

# Removendo o valor pela posição na lista
lista_numeros.pop(0)

# Verificando o comprimento da lista
tamanho = len(lista_numeros)

# Iterando pela lista
for numero in lista_numeros:
    print(numero)
```

**Dicionários (Dictionaries):**
Um dicionário em Python é uma coleção de pares chave-valor. Cada valor é associado a uma chave única, o que permite a recuperação eficiente dos valores com base em suas chaves. Os dicionários são mutáveis.

Exemplo de criação de um dicionário e operações comuns:

```python
# Criando um dicionário de informações de uma pessoa
pessoa = {
    "nome": "João",
    "idade": 30,
    "cidade": "São Paulo"
}

# Acessando valores no dicionário
nome = pessoa["nome"]
idade = pessoa["idade"]

# Adicionando um novo par chave-valor
pessoa["profissão"] = "Engenheiro"

# Modificando um valor no dicionário
pessoa["idade"] = 31

# Removendo um par chave-valor do dicionário
del pessoa["cidade"]

# Verificando se uma chave existe no dicionário
if "cidade" in pessoa:
    print("Cidade:", pessoa["cidade"])

# Você pode concatenar dict´s em uma lista

# Dicionário para a primeira pessoa
pessoa1 = {
    'nome': 'João',
    'idade': 31,
    'profissão': 'Engenheiro'
}

# Dicionário para a segunda pessoa
pessoa2 = {
    'nome': 'Jose',
    'idade': 89,
    'profissão': 'Dados'
}

# Agora, se você quiser criar uma lista que contenha ambos os dicionários
lista_pessoas = [pessoa1, pessoa2]

# Imprimindo a lista de pessoas
print(lista_pessoas)
```

**Tuplas (Tuples):**
Uma tupla em Python é uma coleção ordenada e imutável de elementos. Uma vez criada, uma tupla não pode ser alterada. Tuplas são frequentemente usadas para representar estruturas de dados imutáveis.

Exemplo de criação de uma tupla e operações comuns:

```python
# Criando uma tupla de coordenadas
coordenadas = (3, 4)

# Acessando elementos da tupla pelo índice
x = coordenadas[0]
y = coordenadas[1]

# Desempacotando uma tupla em variáveis
x, y = coordenadas

# Concatenando tuplas
outras_coordenadas = (1, 2)
todas_coordenadas = coordenadas + outras_coordenadas

# Verificando o comprimento de uma tupla
tamanho = len(coordenadas)
```

Lembre-se de que listas e dicionários são mutáveis, o que significa que você pode modificar seus elementos, enquanto as tuplas são imutáveis. A escolha entre eles depende das necessidades específicas do seu programa.

### **Arrays NumPy**

O array NumPy é uma estrutura multidimensional que permite armazenar dados de forma eficiente.

#### **Exemplo:**

```python
import numpy as np

# Criando um array
arr = np.array([1, 2, 3, 4, 5])

print(arr)        # Saída: [1 2 3 4 5]
print(type(arr))  # Saída: <class 'numpy.ndarray'>
```

### **Arrays dimensionais**

```python
import numpy as np

# Criando uma matriz de 2 dimensões (3x3)
matriz_2d = np.array([
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
])

# Acessando elementos da matriz
print(matriz_2d[0, 0])  # Saída: 1
print(matriz_2d[1, 2])  # Saída: 6
```

### **Operações com Arrays NumPy**

O NumPy oferece uma ampla gama de operações matemáticas que podem ser aplicadas aos arrays.

#### **Exemplo:**

```python
import numpy as np

arr = np.array([1, 2, 3, 4, 5])

dobro = arr * 2
soma = np.sum(arr)
media = np.mean(arr)

print(dobro)  # Saída: [ 2  4  6  8 10]
print(soma)   # Saída: 15
print(media)  # Saída: 3.0
```

### **Indexação e Fatias**

Você pode acessar elementos individuais de um array e também criar fatias para trabalhar com partes específicas.

#### **Exemplo:**

```python
import numpy as np

arr = np.array([10, 20, 30, 40, 50])

primeiro_elemento = arr[0]
ultimos_dois = arr[-2:]
intervalo = arr[1:4]

print(primeiro_elemento)  # Saída: 10
print(ultimos_dois)       # Saída: [40 50]
print(intervalo)          # Saída: [20 30 40]
```

### **Funções NumPy**

O NumPy possui várias funções integradas para criação e manipulação de arrays.

#### **Exemplo:**

```python
import numpy as np

zeros = np.zeros(5)
ones = np.ones(3)
intervalo = np.arange(0, 10, 2)
aleatorios = np.random.rand(4)

print(zeros)       # Saída: [0. 0. 0. 0. 0.]
print(ones)        # Saída: [1. 1. 1.]
print(intervalo)   # Saída: [0 2 4 6 8]
print(aleatorios)  # Saída: array([0.84474851, 0.49829507, 0.26025882, 0.94838218])
```

---

## **Seção 3.3: Manipulação de DataFrames com Pandas**

### **Introdução ao Pandas**

O Pandas é uma biblioteca amplamente utilizada para análise e manipulação de dados em Python. Ele oferece a estrutura de dados DataFrame, que é essencial para trabalhar com dados tabulares.

### **Criando um DataFrame**

Você pode criar um DataFrame a partir de dicionários, listas ou arquivos CSV.

#### **Exemplo:**

```python
import pandas as pd

data = {'Nome': ['Ana', 'João', 'Maria', 'Alex'],
        'Idade': [17, 30, 29, 42]}

df = pd.DataFrame(data)

print(df)
```

### **Acessando Dados**

O Pandas permite acessar e manipular dados em um DataFrame.

#### **Exemplo:**

```python
import pandas as pd

data = {'Nome': ['Ana', 'João', 'Maria', 'Alex'],
        'Idade': [17, 30, 29, 42]}

df = pd.DataFrame(data)

nome = df['Nome']
idade_media = df['Idade'].mean()

print(nome)
print(idade_media)
```

### **Filtrando Dados**

Você pode filtrar os dados com base em condições.

#### **Exemplo:**

```python
import pandas as pd

data = {'Nome': ['Ana', 'João', 'Maria', 'Alex'],
        'Idade': [17, 30, 29, 42]}

df = pd.DataFrame(data)

maiores_de_idade = df[df['Idade'] >= 18]

print(maiores_de_idade)
```

### **Ordenando Dados**

Você pode ordenar os dados de acordo com uma ou mais colunas.

#### **Exemplo:**

```python
import pandas as pd

data = {'Nome': ['Ana', 'João', 'Maria', 'Alex'],
        'Idade': [25, 30, 22, 42]}

df = pd.DataFrame(data)

df_ordenado = df.sort_values(by='Idade', ascending=False)

print(df_ordenado)
```

### **Agrupando Dados**

O Pandas permite agrupar dados e realizar operações em grupos.

#### **Exemplo:**

```python
import pandas as pd

data = {'Nome': ['Ana', 'João', 'Maria', 'Alex', 'LuzIA'],
        'Idade': [17, 30, 29, 42, 34]}

df = pd.DataFrame(data)

grupo_idade = df.groupby('Idade').count()

print(grupo_idade)
```

---

## **Seção 3.4: Visualização de Dados com Matplotlib**

### **Introdução ao Matplotlib**

O Matplotlib é uma biblioteca amplamente usada para criar visualizações e gráficos em Python. Ele oferece uma variedade de estilos de gráficos, permitindo que você represente dados de maneira clara e eficaz.

### **Gráficos de Linha**

Os gráficos de linha são usados para mostrar a relação entre duas variáveis, geralmente representadas ao longo de um eixo x.

#### **Exemplo:**

```python
import matplotlib.pyplot as plt

x = [1, 2, 3, 4, 5]
y = [10, 8, 6, 4, 2]

plt.plot(x, y, marker='o')
plt.xlabel('Eixo X')
plt.ylabel('Eixo Y')
plt.title('Gráfico de Linha')
plt.show()
```

### **Gráficos de Barras**

Os gráficos de barras são usados para comparar diferentes categorias ou grupos.

#### **Exemplo:**

```python
import matplotlib.pyplot as plt

categorias = ['A', 'B', 'C']
valores = [15, 24, 30]

plt.bar(categorias, valores)
plt.xlabel('Categorias')
plt.ylabel('Valores')
plt.title('Gráfico de Barras')
plt.show()
```

### **Gráficos de Dispersão**

Os gráficos de dispersão mostram a relação entre duas variáveis em um espaço bidimensional.

#### **Exemplo:**

```python
import matplotlib.pyplot as plt

x = [1, 2, 3, 4, 5, 6]
y = [10, 8, 6, 4, 2, 19]

plt.scatter(x, y, color='red')
plt.xlabel('Eixo X')
plt.ylabel('Eixo Y')
plt.title('Gráfico de Dispersão')
plt.show()
```
*Outliers: Em estatística, são pontos de dados que se desviam significativamente do padrão geral de um conjunto de dados. Esses pontos são valores atípicos e podem distorcer a análise estatística, especialmente quando se está tentando tirar conclusões sobre a média e a variabilidade dos dados.* 

### **Histogramas**

Os histogramas são usados para visualizar a distribuição de dados.

#### **Exemplo:**

```python
import matplotlib.pyplot as plt

dados = [20, 23, 25, 30, 32, 33, 35, 40, 45, 50, 55, 60, 65, 70]

plt.hist(dados, bins=5, edgecolor='black')
plt.xlabel('Valores')
plt.ylabel('Frequência')
plt.title('Histograma')
plt.show()
```

### **Personalização de Gráficos**

O Matplotlib permite personalizar diversos aspectos dos gráficos, como cores, estilos, títulos e rótulos.

#### **Exemplo:**

```python
import matplotlib.pyplot as plt

x = [1, 2, 3, 4, 5]
y = [10, 8, 6, 4, 2]

plt.plot(x, y, marker='o', color='green', linestyle='--', label='Dados')
plt.xlabel('Eixo X')
plt.ylabel('Eixo Y')
plt.title('Gráfico Personalizado')
plt.legend()
plt.grid(True)
plt.show()
```

# Capítulo 4: Análise e Manipulação de Dados

## **Seção 4.1: Indexação e Seleção de Dados**

### **Introdução à Indexação e Seleção**

Indexação e seleção de dados são operações fundamentais ao trabalhar com arrays NumPy e DataFrames Pandas. Elas permitem acessar, filtrar e manipular os dados de acordo com critérios específicos.

### **Indexação em Arrays NumPy**

Os arrays NumPy permitem acessar elementos individuais ou fatias de dados.

#### **Exemplo:**

```python
import numpy as np

arr = np.array([10, 20, 30, 40, 50])

primeiro_elemento = arr[0]
ultimos_dois = arr[-2:]
intervalo = arr[1:4]

print(primeiro_elemento)  # Saída: 10
print(ultimos_dois)       # Saída: [40 50]
print(intervalo)          # Saída: [20 30 40]
```

### **Indexação em DataFrames Pandas**

Em um DataFrame Pandas, você pode usar rótulos de coluna para acessar os dados.

#### **Exemplo:**

```python
import pandas as pd

data = {'Nome': ['Ana', 'João', 'Maria'],
        'Idade': [25, 30, 22]}

df = pd.DataFrame(data)

nome = df['Nome']
idade_media = df['Idade'].mean()

print(nome)        # Saída: Ana, João, Maria
print(idade_media) # Saída: 25.666666666666668
```

### **Seleção por Condições**

Você pode usar condições para selecionar partes específicas de seus dados.

#### **Exemplo:**

```python
import pandas as pd

data = {'Nome': ['Ana', 'João', 'Maria'],
        'Idade': [25, 30, 22]}

df = pd.DataFrame(data)

maiores_de_idade = df[df['Idade'] >= 18]

print(maiores_de_idade)
```

### **Seleção de Linhas e Colunas**

Você pode selecionar linhas e colunas específicas usando índices ou rótulos.

#### **Exemplo:**

```python
import pandas as pd

data = {'Nome': ['Ana', 'João', 'Maria'],
        'Idade': [25, 30, 22]}

df = pd.DataFrame(data)

linha_1 = df.loc[0]
coluna_nome = df['Nome']
celula = df.at[1, 'Idade']

print(linha_1)
print(coluna_nome)
print(celula)
```

---

## **Seção 4.2: Limpeza e Pré-processamento de Dados**

### **Introdução à Limpeza e Pré-processamento de Dados**

Antes de realizar análises ou treinar modelos em dados, é crucial limpar e pré-processar os dados para garantir que eles sejam confiáveis e adequados para o uso.

### **Tratamento de Dados Ausentes**

Dados ausentes podem prejudicar análises. É importante identificar e tratar esses valores faltantes.

#### **Exemplo:**

```python
import pandas as pd

data = {'Nome': ['Ana', 'João', None, 'Maria'],
        'Idade': [25, 30, None, 22]}

df = pd.DataFrame(data)

df_limpo = df.dropna()

print(df_limpo)
```

### **Remoção de Duplicatas**

Duplicatas nos dados podem levar a análises incorretas. É essencial remover duplicatas.

#### **Exemplo:**

```python
import pandas as pd

data = {'Nome': ['Ana', 'João', 'Ana', 'Maria'],
        'Idade': [25, 30, 25, 22]}

df = pd.DataFrame(data)

df_sem_duplicatas = df.drop_duplicates()

print(df_sem_duplicatas)
```

### **Preenchimento de Dados Ausentes**

Às vezes, é melhor preencher dados ausentes em vez de removê-los.

#### **Exemplo:**

```python
import pandas as pd

data = {'Nome': ['Ana', 'João', None, 'Maria'],
        'Idade': [25, 30, None, 22]}

df = pd.DataFrame(data)

df_preenchido = df.fillna({'Nome': 'Desconhecido', 'Idade': 0})

print(df_preenchido)
```

### **Padronização e Normalização**

Padronização e normalização são técnicas para escalar os dados em intervalos específicos.

#### **Exemplo:**

```python
import pandas as pd
from sklearn.preprocessing import StandardScaler, MinMaxScaler

data = {'Idade': [25, 30, 22, 35, 28]}

df = pd.DataFrame(data)

scaler = StandardScaler()
df_padronizado = scaler.fit_transform(df)

min_max_scaler = MinMaxScaler()
df_normalizado = min_max_scaler.fit_transform(df)

print(df_padronizado)
print(df_normalizado)
```

### **Conversão de Tipos de Dados**

Às vezes, é necessário converter tipos de dados para torná-los compatíveis com análises ou modelos.

#### **Exemplo:**

```python
import pandas as pd

data = {'Idade': ['25', '30', '22', '35', '28']}

df = pd.DataFrame(data)

df['Idade'] = df['Idade'].astype(int)

print(df.dtypes)
```

---

## **Seção 4.3: Agrupamento e Agregação de Dados**

### **Introdução ao Agrupamento e Agregação de Dados**

Agrupamento e agregação de dados são operações fundamentais para resumir informações em conjuntos de dados grandes e complexos. Eles permitem extrair insights valiosos por meio de análises resumidas.

### **Agrupamento de Dados**

O agrupamento permite dividir os dados em grupos com base em uma ou mais colunas.

#### **Exemplo:**

```python
import pandas as pd

data = {'Categoria': ['A', 'B', 'A', 'B', 'A'],
        'Valor': [10, 15, 8, 12, 20]}

df = pd.DataFrame(data)

grupo_categoria = df.groupby('Categoria')

for categoria, grupo in grupo_categoria:
    print(categoria)
    print(grupo)
```

### **Agregação de Dados**

A agregação permite calcular estatísticas ou métricas resumidas para cada grupo.

#### **Exemplo:**

```python
import pandas as pd

data = {'Categoria': ['A', 'B', 'A', 'B', 'A'],
        'Valor': [10, 15, 8, 12, 20]}

df = pd.DataFrame(data)

grupo_categoria = df.groupby('Categoria')

resultado = grupo_categoria['Valor'].sum()

print(resultado)
```

### **Múltiplas Agregações**

Você pode realizar várias agregações ao mesmo tempo.

#### **Exemplo:**

```python
import pandas as pd

data = {'Categoria': ['A', 'B', 'A', 'B', 'A'],
        'Valor': [10, 15, 8, 12, 20]}

df = pd.DataFrame(data)

grupo_categoria = df.groupby('Categoria')

resultado = grupo_categoria.agg({'Valor': ['sum', 'mean', 'max']})

print(resultado)
```

### **Aplicação de Funções Personalizadas**

Você também pode aplicar funções personalizadas para realizar agregações.

#### **Exemplo:**

```python
import pandas as pd

data = {'Categoria': ['A', 'B', 'A', 'B', 'A'],
        'Valor': [10, 15, 8, 12, 20]}

df = pd.DataFrame(data)

def minha_funcao(arr):
    return arr.sum() + arr.mean()

grupo_categoria = df.groupby('Categoria')

resultado = grupo_categoria.agg({'Valor': minha_funcao})

print(resultado)
```
---

## **Seção 4.4: Junção e Combinação de DataFrames**

### **Introdução à Junção e Combinação de DataFrames**

Junção e combinação de DataFrames são operações fundamentais para integrar informações de diferentes fontes e criar conjuntos de dados mais completos.

### **Junção de DataFrames**

A junção combina informações de diferentes DataFrames com base em colunas comuns.

#### **Exemplo:**

```python
import pandas as pd

data1 = {'ID': [1, 2, 3],
         'Nome': ['Ana', 'João', 'Maria']}

data2 = {'ID': [2, 3, 4],
         'Idade': [25, 30, 22]}

df1 = pd.DataFrame(data1)
df2 = pd.DataFrame(data2)

df_juncao = pd.merge(df1, df2, on='ID')

print(df_juncao)
```

### **Combinação de DataFrames**

A combinação une informações de diferentes DataFrames, mantendo todas as linhas de ambos os DataFrames.

#### **Exemplo:**

```python
import pandas as pd

data1 = {'ID': [1, 2, 3],
         'Nome': ['Ana', 'João', 'Maria']}

data2 = {'ID': [2, 3, 4],
         'Idade': [25, 30, 22]}

df1 = pd.DataFrame(data1)
df2 = pd.DataFrame(data2)

df_combinacao = pd.concat([df1, df2], ignore_index=True)

print(df_combinacao)
```

### **Junção de Dados Externos**

Você pode fazer junção de dados a partir de fontes externas, como arquivos CSV.

#### Criando os .csv
```python
import pandas as pd

data1 = {'ID': [1, 2, 3],
         'Nome': ['Ana', 'João', 'Maria']}
df1 = pd.DataFrame(data1)

data2 = {'ID': [2, 3, 4],
         'Idade': [25, 30, 22]}
df2 = pd.DataFrame(data2)

df1.to_csv('c:/temp/dados1.csv', index=False)
df2.to_csv('c:/temp/dados2.csv', index=False)
```

#### **Exemplo:**

```python
import pandas as pd

df1 = pd.read_csv('c:/temp/dados1.csv')
df2 = pd.read_csv('c:/temp/dados2.csv')

df_juncao = pd.merge(df1, df2, on='ID')

print(df_juncao)
```

# Capítulo 5: Outros
- [Análise Exploratória de Dados - Exemplo](https://medium.com/@aasouzaconsult/python-para-an%C3%A1lise-de-dados-24028d7013b3)
- [Scripts Python](https://github.com/aasouzaconsult/DC_Data-Analytics_01/tree/main/Python/Scripts%20Python)
    - Clusterização
    - Data Cleaning
    - Missing Values
    - Profiling
    - SQL
    - Conexão com Postgres
    - Aplicação Python para popular BD

# Auxiliares
- [Anaconda](https://www.anaconda.com/)
- [VS Code](https://code.visualstudio.com/download)
- [Livro](https://www.amazon.com.br/Python-Para-An%C3%A1lise-Dados-Tratamento/dp/8575228412/)
- [Curso Auxiliar](https://www.datascienceacademy.com.br/course/fundamentos-de-linguagem-python-para-analise-de-dados-e-data-science)
- [Plotly - Gráficos Interativos](https://paulovasconcellos.com.br/como-criar-gr%C3%A1ficos-interativos-utilizando-plotly-e-python-3eb6eda57a2b)
