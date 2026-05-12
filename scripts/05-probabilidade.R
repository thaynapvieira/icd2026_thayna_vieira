# Arquivo: 05-probabilidade.R
# Autor: Joao Silva
# Data: 11/05/2026
# Objetivos:
# 1. Praticar cálculos básicos de probabilidades
# 2. Praticar conceitos básicos de simulação de Monte Carlo

# Configuracoes globais -----------------------------------------------

# exibe números sem notação científica
options(digits = 5, scipen = 999)


# Pacotes usados ------------------------------------------------------

library(tidyverse)
library(probs) # instale esse pacote (novo pacote)


# Exemplo 1 ---------------------------------------------------------------


#Uma moeda é equilibrada se der cara ou coroa com a mesma 
#probabilidade. Você joga uma moeda equilibrada três vezes. 
#Qual é a probabilidade de que exatamente um dos lançamentos resulte em cara?

# espaço amostral do lançamento de uma moeda 2 vezes
tosscoin(times = 3)



# Exemplo 2 ---------------------------------------------------------------

# 6 numeros na mega-sena
#Qual a probabilidade de escolher os 6 números corretos entre os 60 
#possíveis fazendo apenas uma aposta.


#Em R, a função choose(n, k) calcula o número de combinações possíveis:
# para exibir os números sem notação científica
options(scipen = 999)

choose(60,6)

#Assim, a probabilidade de ganhar o prêmio principal da megasena fazendo 
#uma aposta é 1/50.063.860, ou:


# para exibir os números sem notação científica
options(scipen = 999)

# prob. de acertar os 6 números da megasena com 1 aposta
1/choose(60,6)


# A função sample() de R --------------------------------------------------

#A função sample() sorteia elementos de um conjunto de forma aleatória. 
#É a ferramenta básica para simular experimentos aleatórios no computador

#lançamentos de moedas e dados, sorteios, escolhas de clientes, 
#seleção de unidades em uma auditoria etc.

# fixa a semente para reprodutibilidade
set.seed(123)

# cria um vetor de 1 até 6 (faces do dado)
dado <- 1:6                                 

# define o n. de lançamentos do dado
n <- 10 

# simula os 10 lançamentos
lançamentos <- sample(dado, size = 10, replace = TRUE)
lançamentos

# calcula o valor médio dos 10 lançamentos
mean(lançamentos)  # média observada


# tamanho da amostra = 100 ------------------------------------------------


# fixa a semente para reprodutibilidade
set.seed(123)

# define o n. de lançamentos do dado
n <- 100 

# simula os n lançamentos
lançamentos <- sample(dado, size = 10, replace = TRUE)

# calcula o valor médio dos 10 lançamentos
mean(lançamentos)  # média observada


# tamanho da amostra = 1.000 ----------------------------------------------


# fixa a semente para reprodutibilidade
set.seed(123)

# define o n. de lançamentos do dado
n <- 1000 

# simula os n lançamentos
lançamentos <- sample(dado, size = 10, replace = TRUE)

# calcula o valor médio dos 10 lançamentos
mean(lançamentos)  # média observada


# tamanho da amostra = 10.000 ---------------------------------------------

# fixa a semente para reprodutibilidade
set.seed(123)

# define o n. de lançamentos do dado
n <- 10000 

# simula os n lançamentos
lançamentos <- sample(dado, size = 10, replace = TRUE)

# calcula o valor médio dos 10 lançamentos
mean(lançamentos)  # média observada

##tamanho da amostra = 100.000

# fixa a semente para reprodutibilidade
set.seed(123)

# define o n. de lançamentos do dado
n <- 100000

# simula os n lançamentos
lançamentos <- sample(dado, size = 10, replace = TRUE)

# calcula o valor médio dos 10 lançamentos
mean(lançamentos)  # média observada


