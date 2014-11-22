

menu <- function(){
	print( "------------------------------------------------------" )
	print( "-------------------------MENU-------------------------" )
	print( "------------------------------------------------------" )
	print( "-------ESCOLHA O ALGORITMO QUE DESEJA EXECUTAR--------" )
	print( "-------[1] - WM+WAM-----------------------------------" )
	print( "-------[2] - WM+LAST.MAX------------------------------" )
	print( "-------[3] - HyFIS+WAM--------------------------------" )
	print( "-------[4] - HyFIS+LAST.MAX---------------------------" )
	print( "-------[5] - RUN ALL----------------------------------" )
	print( "-------[6] - PLOT-------------------------------------" )
	print( "------------------------------------------------------" )
}
runall <- function(){
	performance <- c(1:4)
	source("traffic-WM+WAM.r")
	performance[1] <- MSE
	source("traffic-WM+LAST.MAX.r")
	performance[2] <- MSE
	source("traffic-HyFIS+WAM.r")
	performance[3] <- MSE
	source("traffic-HyFIS+LAST.MAX.r")
	performance[4] <- MSE
	print( "-------------------RESULTADOS-------------------------" )
	print( "-------[1] - WM+WAM---------MSE: " )
	print(performance[1])
	print( "-------[2] - WM+LAST.MAX----MSE: " )
	print(performance[2])
	print( "-------[3] - HyFIS+WAM------MSE: " )
	print(performance[3])
	print( "-------[4] - HyFIS+LAST.MAX-MSE: " )
	print(performance[4])
}

clear <- function() {
	elements <- ls() [! ls() %in% c("menu","n","runall", "clear") ]
	rm(list=elements)
}
menu()

n <- readline("OPCAO: ")

while(n > 0 && n < 7 ){
	if(is.na(n)){break}  # breaks when hit enter

	if(n != 6) clear()
	if(n == 1) 	source("traffic-WM+WAM.r")
	else if(n == 2) source("traffic-WM+LAST.MAX.r")
	else if(n == 3) source("traffic-HyFIS+WAM.r")
	else if(n == 4) source("traffic-HyFIS+LAST.MAX.r")
	else if(n == 6) plotMF(object.cls)
	else if(n == 5) {
		runall()
	}
	menu()	
	n <- readline("OPCAO: ")
}





