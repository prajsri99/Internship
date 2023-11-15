library(ggplot2)
install.packages("rlang")
library(stringr)
library(dplyr)
update.packages()
getwd()
setwd("C:/Users/True Gamer/OneDrive/Desktop/Speedy")
data = read.csv("Clean_BA_Speedy.csv")
data$Job.Title <- as.factor(data$Job.Title)
data$Location <- as.factor(data$Location)
data$Headquarters <- as.factor(data$Headquarters)
data$Size <- as.factor(data$Size)
data$Type.of.ownership <- as.factor(data$Type.of.ownership)
data$Sector <- as.factor(data$Sector)

summary(data)
sum(is.na(data))
head(data)
str(data)

salary_plot <- ggplot(data = data.frame(salary_range), aes(x = salary_range)) +
  geom_bar(fill = "lightblue") +
  labs(title = "Salary Distribution", x = "Salary Range") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1,vjust=1))
print(salary_plot)

found_revenue <- ggplot(data=head(data,60), aes(x=factor(Founded),y=Revenue)) + geom_col()  + ggtitle("Found VS Revenue per Size of the Company") + xlab("Founded") + ylab("Revenue")
found_revenue

print(data$Job.Title)
print(data$Rating)
print(data$Location)
print(data$Sector)

top_20_industries <- data %>%
  distinct(Type.of.ownership)%>%
  top_n(n=20)
print(top_20_industries)

top_20_sectors <- data %>%
  distinct(Sector)%>%
  top_n(n=20)
print(top_20_sectors)

top_20_headquarters <- data%>%
  distinct(Headquarters)%>%
  top_n(n=20)
print(top_20_headquarters)

top_15_rating <- data %>%
  arrange(desc(Rating)) %>%
  head(15) %>%
  select(Job.Title, Rating)
print(top_15_rating)

top_15_jobs_rating_finance <- data %>%
  filter(Sector == "Information Technology") %>%
  arrange(desc(Rating)) %>%
  head(15) %>%
  select(Job.Title, Rating)
print(top_15_jobs_rating_finance)

bottom_15_job_rating <- data%>%
  arrange(Rating) %>%
  head(15) %>%
  select(Job.Title, Rating)
print(bottom_15_job_rating)

top_10_companies_consulting <- data %>%
  filter(Sector == "Information Technology" & Rating > 3)%>%
  arrange(desc(Rating)) %>%
  head(10) %>%
  select(Company.Name, Rating)
print(top_10_companies_consulting)

top_10_companies_Energy <- data %>%
  filter(Sector == "Oil, Gas, Energy & Utilities" & Rating > 3)%>%
  arrange(desc(Rating)) %>%
  head(10) %>%
  select(Company.Name, Rating)
print(top_10_companies_Energy)

top_10_companies_accounting <- data %>%
  filter(Sector == "Accounting & Legal" & Rating > 3)%>%
  arrange(desc(Rating)) %>%
  head(10) %>%
  select(Company.Name, Rating)
print(top_10_companies_accounting)

