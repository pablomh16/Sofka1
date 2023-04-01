Proceso T4p4
	Definir matriz, centinela,i,j Como Entero;
	Dimension  matriz[4,5];
    
	centinela <- 0;
	
    matriz[0, 0] <- 1;
    matriz[0, 1] <- 2;
    matriz[0, 2] <- 3;
    matriz[0, 3] <- 4;
    matriz[0, 4] <- 5;
    
    matriz[1, 0] <- 6;
    matriz[1, 1] <- 7;
    matriz[1, 2] <- 8;
    matriz[1, 3] <- 9;
    matriz[1, 4] <- 10;
	
    matriz[2, 0] <- 11;
    matriz[2, 1] <- 12;
    matriz[2, 2] <- 13;
    matriz[2, 3] <- 14;
    matriz[2, 4] <- 15;
    
    matriz[3, 0] <- 16;
    matriz[3, 1] <- 17;
    matriz[3, 2] <- 18;
    matriz[3, 3] <- 19;
    matriz[3, 4] <- 20;
    
    Para i<-0 Hasta 3 Con Paso 1 Hacer
		
		Si centinela  = 0 o centinela =2 Entonces
			Para j<-0 Hasta 4 Con Paso 1 Hacer
				Escribir " ",matriz[i,j]; Sin Saltar;
			FinPara
			j<-4;
		SiNo
			Si centinela = 1 o centinela = 3 Entonces
				Para j<-4 Hasta 0 Con Paso -1 Hacer
					Escribir " ",matriz[i,j]; Sin Saltar;
				FinPara
				j<-0;
			FinSi
		FinSi
		Escribir "";
		centinela<-centinela+1;
		
	FinPara
	Escribir "";
FinProceso
