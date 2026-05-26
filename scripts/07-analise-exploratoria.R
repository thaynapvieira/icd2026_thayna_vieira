# Arquivo: 07-analise-exploratoria.R
# Autor(a): <seu nome>
# Data: 25/05/2026
# Objetivos:
# 1. Calcular estatísticas descritivas amostrais.
# 2. Visualizar a distribuição empírica dos dados.
# 3. Comparar padrões entre grupos.

# 0. Configurações globais ---------------------------------------------

# Controla a forma como os valores numéricos aparecem no console.
options(digits = 5, scipen = 999)

# Carrega os pacotes usados para caminhos, manipulação e visualização.
library(here)
library(tidyverse)
library(tidyplots)

# Permite que os gráficos do tidyplots usem o espaço disponível.
tidyplots_options(width = NA, height = NA)


# 1. Carregamento dos dados -----------------------------------------------

# Usa um caminho relativo ao projeto para encontrar os dados limpos.
caminho_dados <- here("dados/limpos/dados_marketing_limpos.rds")

# Carrega os dados de marketing preparados na Lista 2.
dados_marketing <- read_rds(caminho_dados)

# Confere variáveis, tipos e primeiras observações dos dados.
glimpse(dados_marketing)


# 2. Inspeção incial ------------------------------------------------------

# Verifica o tamanho dos dados: quantidade de linhas e colunas.
dim(dados_marketing)

# Lista os nomes das variáveis disponíveis.
names(dados_marketing)

# Mostra as primeiras linhas para uma inspeção rápida dos dados.
head(dados_marketing)

# Conta quantas semanas aparecem em cada status de promoção.
dados_marketing |>
  count(status_promocao)


# 3. Primeira inspeção estatística da receita -----------------------------


# Calcula estatísticas iniciais da receita semanal de vendas.
inspecao_receita <- dados_marketing |>
  summarize(
    n = n(),
    minimo = min(receita_vendas),
    maximo = max(receita_vendas),
    amplitude = max(receita_vendas) -
      min(receita_vendas)
  )



# Pacote tidyplots --------------------------------------------------------


# Mostra a tabela de inspeção no console.

inspecao_receita

dados_marketing |>
  tidyplot(x = receita_vendas) |>
  add_histogram()

dados_marketing |>
  tidyplot(y = receita_vendas) |>
  add_boxplot()

dados_marketing |>
  tidyplot(x = status_promocao, y = receita_vendas) |>
  add_boxplot()


# 4. Distribuição empírica da receita -------------------------------------

# Visualiza como a receita semanal se distribui nos dados observados.
# tidyplot() inicia o gráfico e add_histogram() adiciona o histograma.
# O argumento bins controla a quantidade de classes do histograma.
dados_marketing |>
  tidyplot(x = receita_vendas) |>
  add_histogram(bins = 20)


