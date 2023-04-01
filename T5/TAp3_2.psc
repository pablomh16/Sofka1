Proceso PAp2
	Definir i Como Entero;
    Definir arreglo Como Entero;
	Dimension arreglo[20];
    
    llenarArreglo(arreglo);
    
    Escribir "Números pares:";
    mostrarNumeros(arreglo, 0);
	
    Escribir "";
    Escribir "Números impares:";
    mostrarNumeros(arreglo, 1);
	Escribir "";
FinProceso

SubProceso llenarArreglo(arreglo Por Referencia)
	Definir i Como Entero;
	Para i<-0 Hasta 19 Con Paso 1 Hacer
        arreglo[i] <- Aleatorio(1, 100);
    FinPara
FinSubProceso

SubProceso mostrarNumeros(arreglo , paridad)
	Definir i Como Entero;
	Para i<-0 Hasta 19 Con Paso 1 Hacer
        Si arreglo[i] MOD 2 = paridad Entonces
            Escribir arreglo[i]," "; Sin Saltar;
        FinSi
    FinPara
FinSubProceso