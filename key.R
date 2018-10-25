library(tree)
library(rpart)
library(rpart.plot)

setwd("~/Material didático/0 Meus cursos/4_Mini-curso monographaR/2 - Descrições")

read.csv("data.csv") -> dat


### rpart

f <- as.formula(species ~ .)


fit <- rpart(f, data=dat,  control=rpart.control(minsplit=1))
fit

prp(fit) 


labels(fit) -> nodes


### Generate tree

sink("fit.txt")
print(fit)
sink()


