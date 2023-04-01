Proceso TAp52
	Definir fila1,columna1 Como Entero;
	Definir matriz Como Entero;
	Dimension matriz[11,11];
	Definir fila, columna, resultado Como Entero;
	
	CalcularValores(matriz);
	
	Escribir "Inserte la fila (1-10): ";
	Leer fila;
	fila1 <- fila;
	Escribir "Inserte la columna (1-10): ";
	Leer columna;
	columna1 <- columna;
	resultado <- matriz[fila, columna];
	
	ImprimirMatriz(matriz);
	
	Escribir "El resultado de la celda (", fila1, ", " ,columna1,") es:" ,resultado;
	
FinProceso

SubProceso CalcularValores(matriz)
	Definir fila Como Entero;
	Definir columna Como Entero;
	Para fila <- 1 Hasta 10 Con Paso 1 Hacer
		Para columna <- 1 Hasta 10 Con Paso 1 Hacer
			matriz[fila,columna] <- fila * columna;
		FinPara
	FinPara
	
FinSubProceso

SubProceso ImprimirMatriz(matriz)
	Definir fila Como Entero;
	Definir columna Como Entero;
    Para fila <- 1 Hasta 10 Con Paso 1 Hacer
        Para columna <- 1 Hasta 10 Con Paso 1 Hacer
            Escribir matriz[fila,columna], " "; sin saltar;
        FinPara
        Escribir "";
    FinPara
FinSubProceso