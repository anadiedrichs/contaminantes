library(readr)
database <- read_delim("2024-04-24/database_2022_2023.csv", 
                       delim = ";", escape_double = FALSE, col_types = cols(Dia = col_date(format = "%d/%m/%y"), 
                                                                            `Dir viento (°N)` = col_skip(), 
                                                                            `Dir viento` = col_skip()), locale = locale(date_names = "es", 
                                                                                                                        decimal_mark = ",", grouping_mark = ";"), 
                       trim_ws = TRUE)

#View(database)
library(lubridate)

# clean hour to correct format
hora <- database$Hora
library(stringr)

hora <- str_replace(hora,"a.*m.$","AM")
hora <- str_replace(hora,"p.*m.$","PM")
database$Hora <- hora

# create timestamp column from fecha and hour 