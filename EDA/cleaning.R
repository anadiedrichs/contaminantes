library(readr)
database_2022_2023 <- read_delim("2024-04-24/database_2022_2023.csv", 
                                 delim = ";", escape_double = FALSE, 
                                 col_types = cols(`Dir viento (°N)` = col_skip(), 
                                  `Dir viento` = col_skip()), 
                                 locale = locale(date_names = "es",                                                                                                                                   decimal_mark = ",", grouping_mark = ";"), 
                                 trim_ws = TRUE)

#View(database_2022_2023)

library(lubridate)

# clean hour to correct format
hora <- database_2022_2023$Hora
library(stringr)

hora <- str_replace(hora,"a.*m.$","AM")
hora <- str_replace(hora,"p.*m.$","PM")
var <- str_c(database_2022_2023$Dia, " ", hora)

# create timestamp column from fecha and hour 
database_2022_2023$time <- parse_date_time(var,"%d/%m/%y %H:%M %Op")

