Proceso TAp3_1F
	Definir vector como Entero;
	Dimension vector[5];
	
	LlenarVector(vector);
	MostrarVector(vector);
FinProceso

SubProceso LlenarVector(Arreglo Por Referencia)
		Definir i Como Entero;
		
		Para i <- 0 Hasta 4 Con Paso 1 Hacer
			Escribir "Escriba un n�mero para la posici�n ", i, " del vector:";
			Leer Arreglo[i];
		FinPara
FinSubProceso

SubProceso MostrarVector( Arreglo Por Referencia )
		Definir i Como Entero;
		
		Para i <- 0 Hasta 4 Con Paso 1 Hacer
			Escribir "[", i, "] = ", Arreglo[i];
		FinPara
FinSubProceso