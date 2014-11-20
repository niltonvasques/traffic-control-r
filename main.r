rm(list=ls(all=TRUE))               # Comando que limpa todos os objetos antigos

source("traffic-WM.r")

WM.err <- err

source("traffic-ANFIS.r")

ANFIS.err <- err

print(WM.err)

print(ANFIS.err)
