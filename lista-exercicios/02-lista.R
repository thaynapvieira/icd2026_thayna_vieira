# Arquivo: 02-lista.R
# Autor(a): Thayna Pereira Vieira
# Data: 06/04/2026
# Objetivo:
# 1. Resolver os exercícios da lista 2


# Configurações globais ---------------------------------------------------

# Configura o número de dígitos a serem exibidos
options(digits = 5, scipen = 999)


# Exercicio 1 -------------------------------------------------------------


## a)

# carrega os pacotes necessários

library(here)
library(tidyverse) # Nota: O pacote readr é carregado automaticamente com o tidyverse
library(janitor) 

## b)

#define o caminho para o arquivo csv
Caminho_csv <- here("dados/bruto/dados-marketing.csv")

#importar os dados e armazenar no objeto dados_marketing
dados_maketing <- read_csv (caminho_csv, show_col_types = FALSE)


## c)

# exiba uma visão geral dos dados
glimpse(dados_marketing)

# Exercicio 2 -------------------------------------------------------------

## a)


## b)


# Exercicio 3 -------------------------------------------------------------

## a)


## b)



# Exercicio 4 -------------------------------------------------------------



# Exercicio 5 -------------------------------------------------------------



# Exercicio 6 -------------------------------------------------------------




# Exercicio 7 -------------------------------------------------------------




# Exercicio 8 -------------------------------------------------------------





# Exercicio 9 -------------------------------------------------------------