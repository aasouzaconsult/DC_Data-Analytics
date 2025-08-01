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
  ggtitle("Gr�fico de Dispers�o do tamanho da S�pala vs o tamanho das P�talas das Plantas")+
  xlab("Tamanho das S�palas") +
  ylab("Tamanho das P�talas")

grafico_dispersao_tamanho
ggplotly(grafico_dispersao_tamanho)

#-------------------------------
# Exemplo 4 - Criando uma base
require(plotly)

# Qualitativas ordinais - tem uma ordem implicita
# Classe social, grau de instru��o e est�gio da doen�a. 

classe_social=c("A","B","C","D","E")
grau_instrucao=c("Ensino fundamental","Ensino m�dio","Ensino Superior")
estagio_doenca=c("Est�gio inicial","Est�gio intermedi�rio","Est�gio terminal")
meses=c("Janeiro","Fevereiro","mar�o")
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

#Gr�fico de Colunas ou barras verticais
grafico_coluna=ggplot(variaveis_categoricas_ordinais,aes(x=a_classe_social)) + 
  geom_bar(position = "dodge") +
  ggtitle("N�mero de pessoas por classe social")+
  xlab("Classe social") +
  ylab("N�mero de pessoas (Frequ�ncia simples)")

grafico_coluna