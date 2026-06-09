# Arquivo: 02-avaliacao-resolucao.R
# Integrante 1: Thayná Pereira Vieira
# Integrante 2: Leticia Paôla
# Integrante 3: Júlia Arantes
# Integrante 4: Livia 
# Data: 09/06/2026
# Objetivo: Resolução da Avaliação 2 — Introdução à Ciência de Dados


# Configurações globais ---------------------------------------
options(digits = 5, scipen = 999)

# Exercício 1 -------------------------------------------------

# a) 
# S={renovou ou não renovou}

# b) 
# A= {renovação do contrato}

# c) 
#P(A) ou P(renovou um contrat)

# d) 
#Não. O resultado é uma variável qualitativa (categórica), pois representa o 
#status de uma ação ("renovou" ou "não renovou"), e não uma medida ou contagem.

# e) 
#x=1 renovou contrato
#x=0 não renovou contrato

# f) 
#A distribuição de Bernoulli é utilizada para modelar um único experimento 
#probabilístico que possui exatamente dois resultados possíveis e 
#mutuamente exclusivos (sucesso ou fracasso).


# a) X = 12, quando o cupom é utilizado
#    X = 0, quando o cupom não é utilizado


# b) P(X = 12) = 0.10


# c) P(X = 0) = 0.90


# d) E(X) = x1 * P(x = 12) + X2 * P(X = 0)
#    E(X) = 12 * 0.10 + 0 * 0.90
#    E(X) = R$ 1,20


# e) O custo esperado do cupom é de R$ 1,20 por compra.

# Não necessariamente o custo não será de 1,20 por compra.

# Entretanto, o custo será de R$ 0 ou R$ 12,00.

# o valor esperado é o valor médio teórico da distribuição, interpretado
# em muitas repetições do experimento, nesse caso é o custo médio por compra
# quando tem muitas compras sendo realizadas sob as mesmas condições.



# Exercício 3 -------------------------------------------------

# Digite e execute o código necessário e escreva a 
# interpretação em comentários.

# fixa a semente para reprodutibilidade
set.seed(123)

# item a) define os parâmetros da simulação
lambda <- 10
capacidade <- 13
n_simulacoes <- 1000

#item b) 
X <- rpois(n = n_simulacoes, lambda = lambda)

# item c) 
#simula 1.000 realizações de X  
# cada valor é uma contagem de clientes 
# por hora de pico

clientes <- rpois(n = n_simulacoes, lambda = lambda)

# exibe as primeiras contagens simuladas de clientes
head(clientes)

#item d)
#calcula a proporção de simulações em que a capacidade 
# de 13 clientes foi excedida pela contagem de clientes

prop_acima_capacidade <- mean(clientes > capacidade)
prop_acima_capacidade

#item e)
# calcula o percentil 95 da contagem de clientes por hora de pico
percentil_95 <- quantile(clientes, 0.95)
percentil_95


#item f)


#item f)
# interpretação
# A média simulada ficou acima de 12 clientes por hora, como evidênciado 
# pelo modelo Poisson(lambda = 10).
#
# A capacidade de 13 clientes foi excedida em cerca de 12,5% dos valores
# simulados. Portanto, em uma hora de pico sob esse modelo, a unidade ficaria
# acima da capacidade com alguma frequência.
#
# O percentil 95 foi igual a 15. Nesta simulação, isso indica que uma
# capacidade de 15 clientes por hora ultrapassa a capacidade atual de 13 
# clientes, ou seja, em apenas 5% dos casos o número de clientes 
# ultrapassará esse valor. 
 

# Não, a capacidade atual de 13 clientes não parece totalmente razoável para 
# garantir um bom fluxo no horário de pico. Como a demanda excede a capacidade
# em uma proporção considerável do tempo (mais de 10% das horas de pico), 
# a unidade enfrentará com frequência a formação de filas e possíveis atrasos 
# no atendimento, ou seja, havendo saturação na unidade, quando a demanda
# excede a capacidade. 
