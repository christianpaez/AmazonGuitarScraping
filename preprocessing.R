books_data_frame = as.data.frame(results)
#PRICE PROCESSING
books_data_frame$Price = as.character(books_data_frame$Price)
books_data_frame$Price = gsub("�", "", books_data_frame$Price)
books_data_frame$Price = as.numeric(books_data_frame$Price)
price_avg = mean(books_data_frame$Price, na.rm =TRUE)
books_data_frame$Price[is.na(books_data_frame$Price)] = price_avg
hist(books_data_frame$Price)
summary(books_data_frame$Price)

#AVAILABILITY PROCESSING
books_data_frame$Availability = as.character(books_data_frame$Availability)
books_data_frame$Availability = gsub(" available)", "", books_data_frame$Availability)
books_data_frame$Availability = gsub("In stock \\(", "", books_data_frame$Availability)
books_data_frame$Availability = as.numeric(books_data_frame$Availability)
availability_avg = mean(books_data_frame$Availability, na.rm=TRUE)
books_data_frame$Availability[is.na(books_data_frame$Availability)] = availability_avg
hist(books_data_frame$Availability)
summary(books_data_frame$Availability)

#RATING PROCESSING
books_data_frame$Rating = as.character(books_data_frame$Rating)
books_data_frame$Rating = as.numeric(books_data_frame$Rating)
rating_avg = mean(books_data_frame$Rating, na.rm= TRUE)
books_data_frame$Rating[is.na(books_data_frame$Rating)] = rating_avg
hist(books_data_frame$Rating)
summary(books_data_frame$Rating)
boxplot(books_data_frame$Rating)

str(books_data_frame)

