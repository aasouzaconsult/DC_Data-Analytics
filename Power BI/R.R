library(datasets)

#-------------------------------
# Exemplo 1 - Histograma
hist(iris$Sepal.Length)

#-------------------------------
# Exemplo 2 - Gerando um boxPlot
par(mar=c(7,5,1,1)) # more space to labels
boxplot(iris,las=2)

#-------------------------------
# Exemplo 3 - Dispersao
require(ggplot2)
require(plotly)

dados=iris

grafico_dispersao_tamanho = ggplot(dados, aes(x=Sepal.Length, y=Petal.Length,col=Species)) + 
  geom_point(aes(size=Species))+
  ggtitle("Gráfico de Dispersão do tamanho da Sépala vs o tamanho das Pétalas das Plantas")+
  xlab("Tamanho das Sépalas") +
  ylab("Tamanho das Pétalas")

grafico_dispersao_tamanho
ggplotly(grafico_dispersao_tamanho)

#-------------------------------
# Exemplo 4 - Criando uma base
require(plotly)

# Qualitativas ordinais - tem uma ordem implicita
# Classe social, grau de instrução e estágio da doença. 

classe_social=c("A","B","C","D","E")
grau_instrucao=c("Ensino fundamental","Ensino médio","Ensino Superior")
estagio_doenca=c("Estágio inicial","Estágio intermediário","Estágio terminal")
meses=c("Janeiro","Fevereiro","março")
ranking=c("Primeiro","Segundo","Terceiro")

a_classe_social=sample(classe_social,size=100, replace=TRUE)
a_grau_intrucao=sample(grau_instrucao,size=100, replace=TRUE)
a_estagio_doenca=sample(estagio_doenca,size=100, replace=TRUE)
a_meses=sample(meses,size=100, replace=TRUE)
a_ranking=sample(ranking,size=100, replace=TRUE)

variaveis_categoricas_ordinais=data.frame(a_classe_social,
                                          a_grau_intrucao,
                                          a_estagio_doenca,
                                          a_meses,a_ranking)
variaveis_categoricas_ordinais
View(variaveis_categoricas_ordinais)

#Gráfico de Colunas ou barras verticais
grafico_coluna=ggplot(variaveis_categoricas_ordinais,aes(x=a_classe_social)) + 
  geom_bar(position = "dodge") +
  ggtitle("Número de pessoas por classe social")+
  xlab("Classe social") +
  ylab("Número de pessoas (Frequência simples)")

grafico_coluna