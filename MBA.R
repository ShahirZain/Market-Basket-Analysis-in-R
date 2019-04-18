require("arules")
data("Groceries")
Groc <- Groceries
head(Groc)
summary(Groc)
inspect(Groc[1:3])
itemFrequency(Groc[,1]) #this tell us that how much the density of mostcommon item in data
itemFrequency(Groc[,1:4]) #first four items density in whole data
itemFrequencyPlot(Groc,topN=4 ) #top 4 item in data
# apriori algorithm
# apriori(data_set)
# if we leave other parameters the alogirthm use default values min support=0.1 and min confidence=0.8
m1 <- apriori(Groc, parameter = list(support=0.007, confidence = 0.25, minlen=2))
summary(m1)
inspect(m1)
