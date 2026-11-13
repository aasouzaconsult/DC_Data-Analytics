<div align="center">

# 📊 Formação em Data Analytics
### Digital College · Professor Alex Souza

**Do banco de dados à análise que apoia decisões.**

Materiais de aula, apostilas, bases de dados e exercícios para estudar SQL, integração de dados, Python e Power BI.

[Trilha de estudos](#trilha-de-estudos) · [Materiais e arquivos](#mapa-do-repositório) · [Ferramentas](#ferramentas-e-referências) · [Portfólio](https://omestredosdados.com.br/portfolio)

</div>

---

## Por onde começar

Este repositório reúne os materiais de apoio à formação em **Data Analytics da Digital College**. Use-o para acompanhar as aulas, revisar conceitos e praticar com scripts, notebooks, transformações e dashboards.

| Você precisa… | Acesse |
| --- | --- |
| Acompanhar as apresentações | [Slides de aula](Slides%20Aula/) |
| Estudar pelos materiais de leitura | [Apostilas das quatro unidades](Apostilas/) |
| Praticar consultas e modelagem | [Scripts SQL](Scripts%20SQL/readme.md) · [Bases de dados](Banco%20de%20Dados/) |
| Explorar integração e carga de dados | [Transformações e jobs do Pentaho](Transformacoes/) |
| Trabalhar com Python | [Material de apoio](Python/README.md) · [Notebooks e aplicações](Python/Scripts%20Python/) |
| Construir visualizações | [Materiais de Power BI](Power%20BI/) · [Exemplos em Excel](Excel%20para%20An%C3%A1lise%20de%20Dados/) |

**Sugestão de estudo:** acompanhe a unidade da turma, consulte a apresentação e a apostila correspondente e pratique com os arquivos indicados. Registre suas consultas, decisões de tratamento e interpretações dos resultados.

## Trilha de estudos

| Unidade | Foco | Materiais principais |
| --- | --- | --- |
| **1 — Bancos de dados** | Modelagem relacional e dimensional, SQL para análise e NoSQL. | [Módulos e exercícios](#unidade-1--bancos-de-dados) |
| **2 — Integração e preparação** | Descoberta do conhecimento, BI, ETL e pipelines de dados. | [Conceitos e Pentaho](#unidade-2--integração-e-preparação-de-dados) |
| **3 — Python para análise** | Fundamentos, manipulação de dados, pandas e gráficos. | [Notebooks e exemplos](#unidade-3--python-para-análise-de-dados) |
| **4 — Power BI** | Modelagem, análise e construção de dashboards. | [Bases, ferramentas e visualização](#unidade-4--power-bi-e-visualização) |

## Unidade 1 — Bancos de dados

### Módulos

| Módulo | Conteúdo | Slides | Apostila |
| --- | --- | --- | --- |
| **1** | Bancos de dados relacionais | [Apresentação](Slides%20Aula/Aulas%20Unidade%201%20-%20M1%20-%20BD%20Relacionais%20-%20Alex%20Souza.pdf) | [Material](Apostilas/Unidade%201/APOSTILA%20DATA%20ANALYTICS%20U1%20M1%20-%20BANCO%20DE%20DADOS%20RELACIONAL.pdf) |
| **2** | Bancos de dados dimensionais | [Apresentação](Slides%20Aula/Aulas%20Unidade%201%20-%20M2%20-%20BD%20Dimensionais%20-%20Alex%20Souza.pdf) | [Material](Apostilas/Unidade%201/APOSTILA%20DATA%20ANALYTICS%20U1%20M2%20-%20BANCO%20DE%20DADOS%20DIMENSIONAL.pdf) |
| **3** | SQL para análise de dados / SQL avançado | [Apresentação](Slides%20Aula/Aulas%20Unidade%201%20-%20M3%20-%20SQL%20Avan%C3%A7ado%20-%20Alex%20Souza.pdf) | [Material](Apostilas/Unidade%201/APOSTILA%20DATA%20ANALYTICS%20U1%20M3%20-%20SQL%20PARA%20ANALISE%20DE%20DADOS.pdf) |
| **4** | Bancos de dados não relacionais — NoSQL | [Apresentação](Slides%20Aula/Aulas%20Unidade%201%20-%20M4%20-%20NoSQL%20-%20Alex%20Souza.pdf) | [Material](Apostilas/Unidade%201/APOSTILA%20DATA%20ANALYTICS%20U1%20M4%20-%20BANCO%20DE%20DADOS%20N%C3%83O%20RELACIONAIS.docx.pdf) |

### Para praticar

- [Scripts e exercícios de SQL](Scripts%20SQL/readme.md) — criação de base, consultas, Data Warehouse e resolução de desafios.
- [Bases SQL e arquivos de apoio](Banco%20de%20Dados/) — exemplos como Northwind, salários e modelo corporativo.
- [Excel para análise de dados](Excel%20para%20An%C3%A1lise%20de%20Dados/README.md).
- [Vídeo — introdução a SQL com PostgreSQL](https://www.youtube.com/watch?v=Y65qqzwAe5c).
- [Leitura — aprofundando em Data Warehouse](https://medium.com/@aasouzaconsult/aprofundando-em-data-warehouse-65ed2bca9a33).
- [**Desafio final da Unidade 1**](https://blogdozouza.files.wordpress.com/2023/11/desafio-final-unidade-1.pdf).

## Unidade 2 — Integração e preparação de dados

**Como transformar dados de diferentes fontes em uma base organizada para análise?**

Esta unidade reúne materiais sobre descoberta do conhecimento, Business Intelligence, ETL e pipelines, além de exemplos de integração com Pentaho.

[**📑 Slides da unidade**](Slides%20Aula/Aulas%20Unidade%202%20-%20Alex%20Souza.pdf) · [**📚 Apostilas dos quatro módulos**](Apostilas/Unidade%202/)

| Conceito | Leitura de apoio |
| --- | --- |
| **ETL / ELT** | [Extração, transformação e carga](https://medium.com/blog-do-zouza/etl-extra%C3%A7%C3%A3o-transforma%C3%A7%C3%A3o-e-carga-simplificando-o-processo-de-an%C3%A1lise-de-dados-elt-631e3a56c8bb) |
| **KDD** | [Knowledge Discovery in Databases](https://medium.com/blog-do-zouza/knowledge-discovery-in-databases-kdd-462ea2775715) |
| **CRISP-DM** | [Uma abordagem para projetos de dados](https://medium.com/blog-do-zouza/metodologia-crisp-dm-uma-abordagem-abrangente-para-projetos-de-dados-d7e7135b907e) |

### Prática com Pentaho

- [Exemplos de transformações](Transformacoes/).
- [Carga do modelo corporativo](Transformacoes/preenche%20modelo%20corporativo/).
- [Projeto de Data Warehouse de vendas](Transformacoes/projeto_data_warehouse_vendas/) — arquivos de stage, carga dimensional e jobs.
- [Orientações de jobs e agendamento](Transformacoes/Job_Email_Pentaho.md).
- [Playlist de apoio](https://www.youtube.com/watch?v=NMxI4j7g4Ps&list=PLo04OWzokNVCD5LdnGGg8ssjGmIYbTyCG).
- [Leitura — construir um Data Warehouse com Pentaho](https://powerbiexperience.com/pt/blog/como-construir-um-data-warehouse-dw-com-pentaho/).

Os arquivos `.ktr` são transformações e os `.kjb` são jobs. Antes de executá-los, ajuste caminhos de arquivos, conexões, drivers e parâmetros ao seu ambiente.

## Unidade 3 — Python para análise de dados

**Como explorar, tratar e analisar dados com código?**

As apostilas percorrem Python básico, manipulação de dados, análise com pandas e gráficos. Os exemplos complementam esse percurso com acesso a banco, tratamento de valores ausentes, exploração e agrupamento.

[**📑 Slides da unidade**](Slides%20Aula/Aulas%20Unidade%203%20-%20Alex%20Souza.pdf) · [**📚 Apostilas**](Apostilas/Unidade%203/) · [**🐍 Material de apoio**](Python/README.md)

| Exemplo | Material |
| --- | --- |
| **Acesso ao PostgreSQL** | [Notebook](Python/Scripts%20Python/AcessandoPostgreSQL.ipynb) |
| **Tratamento de valores ausentes** | [Notebook e dados](Python/Scripts%20Python/Misssing%20Values/) |
| **Exploração e profiling** | [Exemplos com Sweetviz e pandas profiling](Python/Scripts%20Python/Profiling/) |
| **Agrupamento de clientes** | [Estudo com K-Means](Python/Scripts%20Python/Clustering/) |
| **SQL em Python** | [Tutorial e bancos de exemplo](Python/Scripts%20Python/SQL/) |
| **Aplicação Flask com PostgreSQL** | [Passo a passo](Python/Scripts%20Python/app%20python/README.md) |

Os notebooks podem ser lidos diretamente no GitHub. Para executá-los, baixe os arquivos necessários e configure as bibliotecas, caminhos e conexões indicados em cada exemplo.

## Unidade 4 — Power BI e visualização

**Como organizar um modelo e apresentar informações que ajudem a entender o negócio?**

[**📑 Slides da unidade**](Slides%20Aula/Aulas%20Unidade%204%20-%20Alex%20Souza.pdf) · [**📚 Apostilas**](Apostilas/Unidade%204/) · [**🎥 Vídeo de introdução**](https://www.youtube.com/watch?v=2VSF4IaF_OE)

### Arquivos para estudar e construir

- [Bases de dados](Power%20BI/Bases%20de%20dados/) — materiais de Censo Escolar e exemplos financeiros e logísticos.
- [Planos de fundo e arquivos editáveis](Power%20BI/Planos%20de%20Fundo/).
- [Dashboard modelo — arquivo PBIX](Power%20BI/dashboard_Modelo.pbix).
- [Material de DAX](Power%20BI/Dax.pdf).
- [Guia de gráficos](Power%20BI/Visual%20Chart%20Guide.pdf).

### Ferramentas e referências complementares

| Tema | Recursos |
| --- | --- |
| **Dimensão calendário** | [Exemplo em Power Query](https://github.com/joaoaraujo21/PowerQuery/blob/main/dCalendario) |
| **Compartilhamento** | [Como gerar um link público](https://www.youtube.com/watch?v=faCW6Hsa9iI) |
| **Análise e modelagem** | [DAX Studio](https://daxstudio.org/) · [Tabular Editor](https://www.sqlbi.com/tools/tabular-editor/) · [Power BI Helper](https://powerbihelper.org/) |
| **Design de dashboards** | [Referência no Figma — logística](https://www.figma.com/community/file/1288971828710821668/dashboard-logistica-imersao-em-power-bi) |
| **DRE** | [Artigo com DAX](https://xperiun.com/blog/dashboard-demonstrativo-de-resultado-dre-contabil-com-dax-avancado/) · [Vídeo](https://www.youtube.com/watch?v=CDu35brFR9o) |

Para explorar os arquivos `.pbix`, utilize o Power BI Desktop e ajuste os caminhos das fontes de dados ao seu ambiente.

## Mapa do repositório

| Pasta | Conteúdo |
| --- | --- |
| [`Apostilas/`](Apostilas/) | Materiais organizados por unidade e módulo. |
| [`Slides Aula/`](Slides%20Aula/) | Apresentações utilizadas nas aulas. |
| [`Scripts SQL/`](Scripts%20SQL/) | Índice de scripts, exercícios e referências. |
| [`Banco de Dados/`](Banco%20de%20Dados/) | Bases SQL e arquivos em diferentes formatos. |
| [`Transformacoes/`](Transformacoes/) | Transformações, jobs e arquivos de apoio ao Pentaho. |
| [`Python/`](Python/) | Conteúdo de apoio, notebooks e aplicação de exemplo. |
| [`Power BI/`](Power%20BI/) | Bases, modelos, DAX e recursos visuais. |
| [`Excel para Análise de Dados/`](Excel%20para%20An%C3%A1lise%20de%20Dados/) | Planilhas e exemplos de dashboards. |
| [`Github/`](Github/readme.md) | Material de apoio sobre GitHub. |

## Ferramentas e referências

### Fundamentos de lógica

- [Curso básico de algoritmos — Curso em Vídeo](https://www.youtube.com/watch?v=8mei6uVttho&list=PLHz_AreHm4dmSj0MHol_aoNYCSGFqvfXV).
- [Leituras e materiais de algoritmos](https://github.com/aasouzaconsult/Algoritmos).

### Modelagem e bancos de dados

- **Leituras:** [Modelagem de Dados](https://blogdozouza.files.wordpress.com/2023/09/modelagem-de-banco-de-dados-paulo-henrique-cayres-escola-superior-de-redes-2015-rede-nacional-de-ensino-e-pesquisa-e28093-rnp-9788563630506-37caf95a2d36bf7ac5dfc4456c143e28-annas-archive.pdf) · [Sistemas de Banco de Dados](https://www.amazon.com.br/Sistemas-Banco-Dados-Ramez-Elmasri/dp/8543025001) · [E-book SQL](https://github.com/aasouzaconsult/banco-de-dados-para-analistas-e-cientistas-de-dados/blob/main/Ebook%20-%20SQL/SQL.pdf).
- **Modelagem conceitual e lógica:** [BR Modelo online](https://app.brmodeloweb.com/) · [BR Modelo desktop](https://sourceforge.net/projects/brmodelo/) · [MySQL Workbench](https://dev.mysql.com/downloads/workbench/).
- **PostgreSQL:** [Site oficial](https://www.postgresql.org/) · [Download](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads) · [Documentação da versão 14](https://www.postgresql.org/docs/14/index.html).
- **Instalação:** [Passo a passo em imagens — PostgreSQL 14](Instala%C3%A7%C3%A3o%20PostgreSQL%2014%20em%20Imagens/).
- **Consultas no navegador:** [Ambiente online para testes](https://sqliteonline.com/) — confira o mecanismo selecionado antes de executar seus comandos.

### Pentaho e Java

[Download do Pentaho](https://www.hitachivantara.com/en-us/products/pentaho-platform/data-integration-analytics/pentaho-community-edition.html) · [Download do Java](https://www.oracle.com/br/java/technologies/downloads/) · [Referência de etapas de transformação — Pentaho 10.0](https://help.hitachivantara.com/Documentation/Pentaho/Data_Integration_and_Analytics/10.0/Products/Transformation_step_reference)

Os materiais incluem referências a versões específicas das ferramentas. Confira a compatibilidade entre a versão instalada, o Java e os drivers utilizados nos exercícios.

## Apoio ao estudo e comunicação

- [**ZouzaGPT — página de acesso**](https://sites.google.com/view/alexsouza/home).
- [**ZouzaGPT — GPT especializado em dados**](https://chat.openai.com/g/g-TI8xRV9Pg-zouzagpt).
- [**Discord — canal de comunicação**](https://discord.gg/kP4D7QGNVg).

Use os recursos de IA como apoio ao aprendizado: confira as respostas, teste as consultas e procure entender as escolhas feitas no código e na análise.

---

**Alex Souza — liderança em dados e professor**

[Portfólio](https://omestredosdados.com.br/portfolio) · [YouTube](https://www.youtube.com/@alexsouzamsc) · [Blog](https://medium.com/blog-do-zouza) · [LinkedIn](https://www.linkedin.com/in/alex-souza/) · [Instagram](https://www.instagram.com/alexsouzamsc/)

[Digital College](https://digitalcollege.com.br/)
