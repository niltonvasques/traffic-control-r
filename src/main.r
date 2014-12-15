

menu <- function(){
	print( "------------------------------------------------------" )
	print( "-------------------------MENU-------------------------" )
	print( "------------------------------------------------------" )
	print( "-------ESCOLHA O ALGORITMO QUE DESEJA EXECUTAR--------" )
	print( "-------[1] - DENFIS+COG-------------------------------" )
	print( "-------[2] - HyFIS+FIRST.MAX--------------------------" )
	print( "-------[3] - HyFIS+LAST.MAX---------------------------" )
	print( "-------[4] - WM+FIRST.MAX-----------------------------" )
	print( "-------[5] - WM+LAST.MAX------------------------------" )
	print( "-------[6] - WM+COG-----------------------------------" )
	print( "-------[7] - GFS.LT.RS+COG----------------------------" )
	print( "-------[8] - GFS.MOGUL+COG----------------------------" )
	print( "-------[9] - PLOTAR VARIAVEIS LINGUISTICAS------------" )
	print( "-------[10] - EXECUTAR TODOS OS ALGORITMOS------------" )
	print( "-------[11] - COMPARAR OS ALGORITMOS------------------" )
	print( "-------[0] - SAIR-------------------------------------" )
	print( "------------------------------------------------------" )
}
runall <- function(){
	performance <- c(1:4)
	source("traffic-WM+FIRST.MAX.r")
	performance[1] <- MSE
	performance[5] <- RMSE
	source("traffic-WM+LAST.MAX.r")
	performance[2] <- MSE
	performance[6] <- RMSE
	source("traffic-HyFIS+FIRST.MAX.r")
	performance[3] <- MSE
	performance[7] <- RMSE
	source("traffic-HyFIS+LAST.MAX.r")
	performance[4] <- MSE
	performance[8] <- RMSE
	print( "-------------------RESULTADOS-------------------------" )
	print( "-------[1] - WM+FIRST.MAX---------MSE: " )
	print(performance[1])
	print( "-------[2] - WM+LAST.MAX----MSE: " )
	print(performance[2])
	print( "-------[3] - HyFIS+FIRST.MAX------MSE: " )
	print(performance[3])
	print( "-------[4] - HyFIS+LAST.MAX-MSE: " )
	print(performance[4])
	print( "-------[1] - WM+FIRST.MAX---------RMSE: " )
	print(performance[5])
	print( "-------[2] - WM+LAST.MAX----RMSE: " )
	print(performance[6])
	print( "-------[3] - HyFIS+FIRST.MAX------RMSE: " )
	print(performance[7])
	print( "-------[4] - HyFIS+LAST.MAX-RMSE: " )
	print(performance[8])
}

clear <- function() {
	elements <- ls() [! ls() %in% c("menu","n","runall", "clear") ]
	rm(list=elements)
}

comparisson <- function(){
    result.test <- cbind(traffic.class , res.test)
    x2 <- seq(from = 1, to = nrow(result.test))
    plot(x2, result.test[, 1], col="red", main = "Em vermelho: Os resultados reais. Em azul: os resultados preditos", type = "l", ylab = "MG")
    lines(x2, result.test[, 2], col="blue", type = "l")
}

readinteger <- function()
{ 
    n <- readline(prompt="Oque deseja? ")
        if(!grepl("^[0-9]+$",n))
        {
            return(readinteger())
        }

    return(as.integer(n))
}

menu()

n <- readinteger()
while(TRUE){
	if(is.na(n)){break}  # breaks when hit enter
    if(n == 0) break;
	if(n != 6) clear()
	if(n == 1) 	{     rm(list=ls(all=TRUE)); source("traffic-DENFIS+COG.r")		}
	else if(n == 2) { rm(list=ls(all=TRUE)); source("traffic-HyFIS+FIRST.MAX.r") }
	else if(n == 3) { rm(list=ls(all=TRUE)); source("traffic-HyFIS+LAST.MAX.r")  }
	else if(n == 4) { rm(list=ls(all=TRUE)); source("traffic-WM+FIRST.MAX.r")    }
	else if(n == 5) { rm(list=ls(all=TRUE)); source("traffic-WM+LAST.MAX.r")     }
	else if(n == 6) { rm(list=ls(all=TRUE)); source("traffic-WM+COG.r")			}
	else if(n == 7) { rm(list=ls(all=TRUE)); source("traffic-LT+COG.r")			}
	else if(n == 8) { rm(list=ls(all=TRUE)); source("traffic-MOGUL+COG.r")		}
	else if(n == 9) plotMF(object.cls)
	else if(n == 10) runall()
    else if(n == 11) comparisson()
	menu()	
        n <- readinteger()
}





