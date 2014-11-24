

menu <- function(){
	print( "------------------------------------------------------" )
	print( "-------------------------MENU-------------------------" )
	print( "------------------------------------------------------" )
	print( "-------ESCOLHA O ALGORITMO QUE DESEJA EXECUTAR--------" )
	print( "-------[1] - WM+FIRST.MAX-----------------------------" )
	print( "-------[2] - WM+LAST.MAX------------------------------" )
	print( "-------[3] - HyFIS+FIRST.MAX--------------------------" )
	print( "-------[4] - HyFIS+LAST.MAX---------------------------" )
	print( "-------[5] - RUN ALL----------------------------------" )
	print( "-------[6] - PLOT-------------------------------------" )
	print( "-------[7] - WM+COG-----------------------------------" )
	print( "-------[8] - DENFIS+COG-------------------------------" )
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
menu()

n <- readline("OPCAO: ")

while(n > 0 && n < 9 ){
	if(is.na(n)){break}  # breaks when hit enter

	if(n != 6) clear()
	if(n == 1) 	source("traffic-WM+FIRST.MAX.r")
	else if(n == 2) source("traffic-WM+LAST.MAX.r")
	else if(n == 3) source("traffic-HyFIS+FIRST.MAX.r")
	else if(n == 4) source("traffic-HyFIS+LAST.MAX.r")
	else if(n == 7) source("traffic-WM+COG.r")
	else if(n == 8) source("traffic-DENFIS+COG.r")
	else if(n == 6) plotMF(object.cls)
	else if(n == 5) {
		runall()
	}
	menu()	
	n <- readline("OPCAO: ")
}





