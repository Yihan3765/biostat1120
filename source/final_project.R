ataxia <- read.csv("./data/ataxia_data.csv")

# plot of sample data
pdf("./result/ataxia_plot.pdf")
boxplot (ataxia$lifespan ~ ataxia$treatment, main = "Boxplot of Spinocerebellar Ataxia Sample Data", 
         xlab = "Treatment", ylab = "Life Span (days)")
dev.off()

# test statistics
sink("./result/result.txt")
result <- t.test(ataxia$lifespan ~ ataxia$treatment, data = ataxia, var.equal = FALSE)
print(result)
