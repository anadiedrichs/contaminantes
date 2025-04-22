# Instalar renv si no está disponible
if (!requireNamespace("renv", quietly = TRUE)) {
  install.packages("renv")
}

# Inicializar renv en el directorio actual
renv::init()

# Install packages 
renv::install("DataExplorer")  
renv::install("tidyverse")  
renv::install("tidymodels")  
renv::install("glmnet")
renv::install("vip")
renv::install("ranger")
renv::install("readxl")
renv::install("fastshap")
renv::install("kernelshap")
renv::install("shapviz")

