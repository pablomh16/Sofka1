Proceso PAp2
	Definir i Como Entero;
    Definir arreglo Como Entero;
	Dimension arreglo[20];
    
    Para i<-0 Hasta 19 Con Paso 1 Hacer
        arreglo[i] <- Aleatorio(1, 100);
    FinPara
    
    Escribir "Números pares:";
    Para i<-0 Hasta 19 Con Paso 1 Hacer
        Si arreglo[i] MOD 2 = 0 Entonces
            Escribir arreglo[i]," "; Sin Saltar;
        FinSi
    FinPara
	
    Escribir "";
    Escribir "Números impares:";
    Para i<-0 Hasta 19 Con Paso 1 Hacer
        Si arreglo[i] MOD 2 <> 0 Entonces
            Escribir arreglo[i]," "; Sin Saltar;
        FinSi
    FinPara
	Escribir "";
FinProceso
