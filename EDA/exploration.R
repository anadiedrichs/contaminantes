library(readr)
database <- read_delim("2024-04-24/database_2022_2023.csv", 
                       delim = ";", escape_double = FALSE, col_types = cols(Dia = col_date(format = "%d/%m/%y")), 
                       locale = locale(date_names = "es", decimal_mark = ",", 
                                       grouping_mark = ";"), trim_ws = TRUE)
View(database)

library(DataExplorer)

create_report(database) 