Proceso PAp3
	Definir i,numEvaluar,cont Como Entero;
	Definir num Como Entero;
	Dimension num[1001];
	
	Escribir " números primos del 1 al 1000 :";
	
	Para numEvaluar <- 1 Hasta 1001 Con Paso 1 Hacer
		i<-1;
		cont <- 0;
		Mientras i<= numEvaluar Hacer
			Si numEvaluar mod i == 0 Entonces
				cont <- cont+1;
			FinSi
			i<-i+1;
		FinMientras
		
		si cont == 2 Entonces
			num[0] <- numEvaluar;
			Escribir num[0];
		FinSi
	FinPara
FinProceso
