Proceso TAp52
	Definir fila1,columna1 Como Entero;
	Definir matriz Como Entero;
	Dimension matriz[11,11];
		Definir fila, columna, resultado Como Entero;
		
		// Calculamos los valores de la matriz
		Para fila <- 1 Hasta 10 Con Paso 1 Hacer
			Para columna <- 1 Hasta 10 Con Paso 1 Hacer
				matriz[fila,columna] <- fila * columna;
			FinPara
		FinPara
		
		// Pedimos al usuario que inserte la fila y columna
		Escribir "Inserte la fila (1-10): ";
		Leer fila;
		fila1 <- fila;
		Escribir "Inserte la columna (1-10): ";
		Leer columna;
		columna1 <- columna;
		
		// Obtenemos el resultado de la celda correspondiente
		resultado <- matriz[fila, columna];
		
		// Imprimimos la matriz
		Para fila <- 1 Hasta 10 Con Paso 1 Hacer
			Para columna <- 1 Hasta 10 Con Paso 1 Hacer
				Escribir matriz[fila,columna], " " ; sin saltar;
			FinPara
			Escribir "";
		FinPara
		
		// Imprimimos el resultado de la celda correspondiente
		Escribir "El resultado de la celda (", fila1, ", " ,columna1,") es:" ,resultado;
		

FinProceso
