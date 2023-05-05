#Criação de Objeto Simples
vetor <- 10:25
str(vetor)

#Criação de Objeto Complexo: Correlação Potência e Peso do Carro
data (mtcars)
correlacao <- cor(mtcars$hp, mtcars$wt)
print (correlacao)
str (correlacao)
