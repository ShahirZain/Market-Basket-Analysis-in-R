require(arules)
data('Groceries')
groc <- Groceries
head(groc)
summary(groc)
inspect(groc[1:2])
itemFrequency(groc[,1:5]) * 9835
itemFrequencyPlot(groc , topN = 20)
m1 <- apriori(groc , parameter = list(support = 0.009 ,confidence = 0.5, minlen=2))
summary(m1)
inspect(m1)
