

menu <- function(){
	print( "------------------------------------------------------" )
	print( "-------------------------MENU-------------------------" )
	print( "------------------------------------------------------" )
	print( "-------ESCOLHA O ALGORITMO QUE DESEJA EXECUTAR--------" )
	print( "-------[1] - WM+WAM-----------------------------------" )
	print( "-------[2] - WM+LAST.MAX------------------------------" )
	print( "-------[3] - HyFIS+WAM--------------------------------" )
	print( "-------[4] - HyFIS+LAST.MAX---------------------------" )
	print( "------------------------------------------------------" )
}

menu()

n <- readline("OPCAO: ")

while(n > 0 && n < 5 ){
	if(is.na(n)){break}  # breaks when hit enter

	if(n == 1) source("traffic-WM+WAM.r")
	else if(n == 2) source("traffic-WM+LAST.MAX.r")
	else if(n == 3) source("traffic-HyFIS+WAM.r")
	else if(n == 4) source("traffic-HyFIS+LAST.MAX.r")
	menu()	
	n <- readline("OPCAO: ")
}





