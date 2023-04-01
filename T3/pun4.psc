Proceso pun4
	Definir numero Como Entero;
	definir i Como Entero;
	Definir resultado Como Entero;
		
		Escribir "Ingrese el número para crear la tabla de multiplicar:";
		Leer numero;
		
		
		Para i<-1 Hasta 10 Con Paso 1 Hacer
			resultado <- i * numero;
			Escribir i, "x", numero, "=", resultado;
		FinPara
FinProceso
