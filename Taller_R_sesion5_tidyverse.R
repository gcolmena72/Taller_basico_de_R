
# TIDYVERSE ---------------------------------------------------------------

library(tidyverse)
library(openxlsx)
datos.banco <- read.xlsx("Data_Banco.xlsx", sheet="Data")
str(datos.banco)
glimpse(datos.banco)

datos.banco <- as.tibble(datos.banco)
str(datos.banco)

# Operador pipe %>%
#Shortcut es Ctrl+May+m
# %>% 
  
length(names(datos.banco))
datos.banco %>% names %>% length()
head(datos.banco, n=3)
datos.banco %>% head(n=3)

# SELECT ------------------------------------------------------------------
datos.banco %>% select(Transaccion, Tiempo_Servicio_seg)
datos.banco %>% select(Transaccion, Tiempo_Servicio_seg) %>% View()

datos.banco %>% select(-Cajero) %>% View()
datos.banco %>% select(contains("Tra")) %>% View()
datos.banco %>% select(starts_with("S")) %>% View()

datos.banco %>% select(matches("r?sa")) %>% View()

# FILTER ------------------------------------------------------------------
datos.banco %>% slice(3:5) %>% View()
datos.banco %>% slice_max(Tiempo_Servicio_seg, n=2) %>% View()
datos.banco %>% filter(Sucursal==62) %>% View()
datos.banco %>% filter(Sucursal==62 & Tiempo_Servicio_seg > 120) %>% View()
datos.banco %>% filter(Sucursal==62 & Tiempo_Servicio_seg > 120 & Satisfaccion=="Muy Bueno" ) %>% View()
