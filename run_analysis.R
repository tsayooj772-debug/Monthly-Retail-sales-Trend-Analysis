# Monthly Retail Sales Trend Analysis
sales_data <- read.csv("monthly_sales_data.csv")

str(sales_data)
colSums(is.na(sales_data))
sum(duplicated(sales_data))

sales_data <- sales_data[!duplicated(sales_data), ]

mean(sales_data$Sales)
median(sales_data$Sales)
sd(sales_data$Sales)
mean(sales_data$Customers)
sum(sales_data$Sales)
sum(sales_data$Returns)

cor(sales_data$Advertising_Spend, sales_data$Sales)
cor(sales_data$Customers, sales_data$Sales)

plot(sales_data$Month, sales_data$Sales, type="o",
     main="Monthly Sales Trend", xlab="Month", ylab="Sales", las=2)

barplot(sales_data$Customers, names.arg=sales_data$Month,
        main="Monthly Customer Count", xlab="Month", ylab="Customers", las=2)

plot(sales_data$Advertising_Spend, sales_data$Sales,
     main="Advertising Spend vs Sales",
     xlab="Advertising Spend", ylab="Sales", pch=19)
abline(lm(Sales ~ Advertising_Spend, data=sales_data))

hist(sales_data$Sales, main="Distribution of Monthly Sales",
     xlab="Sales", ylab="Number of Months")

plot(sales_data$Month, sales_data$Returns, type="o",
     main="Monthly Returns", xlab="Month", ylab="Returns", las=2)
