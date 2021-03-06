# Reference: http://www.learnbymarketing.com/tutorials/linear-regression-in-r/
# step1-lm-local.R

# Train the model
trainData <- read.csv("data-marketing-budget-12mo.csv", header = T, colClasses = c("numeric", "numeric", "numeric"))
model <- lm(sales ~ spend + month, data = trainData)
summary(model)

# Predict sales
inputData <- data.frame(
  spend = c(6000),
  month = c(5)
)
predict(model, inputData)
           
