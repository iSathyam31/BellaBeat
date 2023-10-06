CsvFile <- read.csv("C:\\Users\\Admin\\Desktop\\FileHaiBro.csv")
head(CsvFile)
colnames(CsvFile)

library(ggplot2)

ggplot(data = CsvFile) + geom_bar(mapping = aes(x = distribution_channel , fill = distribution_channel))
#Here we see that the TA/TO distribution channel has more bookings

ggplot(data = CsvFile) + geom_bar(mapping = aes(x = distribution_channel , fill = deposit_type))

ggplot(data = CsvFile) + geom_bar(mapping = aes(x = distribution_channel , fill = market_segment))

#Let's add facet to analyze individually
ggplot(data = CsvFile) + geom_bar(mapping = aes(x = distribution_channel , fill = distribution_channel)) + facet_wrap(~deposit_type)+theme(axis.text.x = element_text(angle = 45))

#Let's check with the facet_grid function
ggplot(data = CsvFile) +
  geom_bar(mapping = aes(x = distribution_channel,fill = distribution_channel)) +
  facet_grid(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))

#Now let's explore the differences by market_segment and deposit_type
ggplot(data = CsvFile) +
  geom_bar(mapping = aes(x = distribution_channel,fill= distribution_channel)) +
  facet_wrap(~deposit_type~market_segment) +
  theme(axis.text.x = element_text(angle = 45))

