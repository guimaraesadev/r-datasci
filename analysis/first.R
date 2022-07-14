# user_id = id para o aluno
# course_id = id para o curso 
# section_id = id para o vídeo 

# anexando no R o dataset 'aulas'
attach(aulas)

# exibindo o dataset 
section_id

# aumentando a quantidade de linhas exibidas no console
options(max.print = 40000)

# selecionando apenas os primeiros dados 

head(section_id)

# ordenando elementos 

sort(section_id)

# o valor 999999 distoa do resto, indicando um 'erro'

# alterando um dado 
# em R é trabalhado com matrizes, linhas e colunas 

# primeiro valor: nome do banco de dados
# segundo valor: linha
# terceiro valor: coluna

aulas[33137,3] <- 3255

# o símbolo '<-'significa atribuição 

# passando a variável dentro do banco de dados 
# esse comando irá exibir de forma correta o arquivo alterado
sort(aulas$section_id)

# buscando o valor alterado '3255'
aulas[33137,3]

# quantos vídeos únicos tem no dataset? (sem repetição)
unique(aulas$section_id)

# descobrindo o tamanho do vetor (coluna)
# aninhamento de funções 
# nesting em R
length(unique(aulas$section_id))

# output: 1983, ou seja, há 1983 vídeos nessa amostra 

# me fornece uma tabela 
# código do vídeo e quantas vezes foi assistido

table(aulas$section_id)

# ordenando a tabela de acordo com quantas vezes o vídeo foi assistido
sort(table(aulas$section_id))

# por ex: o vídeo 1815 foi assistido 198 vezes 

# cursos mais e menos assistidos 
sort(table(aulas$course_id))

# criando um novo DB 

install.packages("plyr")

library(plyr)

auxiliar <- count(aulas, vars = "course_id")

write.csv(auxiliar, "popularidade.csv")
