Proceso punto9
	Definir opcion Como Entero;
	Definir base Como Real;
	Definir altura Como Real;
	Definir area Como Real;
	Definir baseMayor Como Real;
	Definir baseMenor Como Real;
			Escribir "Seleccione la figura geométrica:";
			Escribir "1. Rectángulo";
			Escribir "2. Triángulo";
			Escribir "3. Trapecio";
			Leer opcion;
			
			Si opcion = 1 entonces
				Escribir "Ingrese la base del rectángulo:";
				Leer base;
				Escribir "Ingrese la altura del rectángulo:";
				Leer altura;
				area <- base * altura;
				Escribir "El área del rectángulo es:", area;
			Sino si opcion = 2 entonces
					Escribir "Ingrese la base del triángulo:";
					Leer base;
					Escribir "Ingrese la altura del triángulo:";
					Leer altura;
					area <- (base * altura) / 2;
					Escribir "El área del triángulo es:", area;
				Sino si opcion = 3 entonces
						Escribir "Ingrese la base mayor del trapecio:";
						Leer baseMayor;
						Escribir "Ingrese la base menor del trapecio:";
						Leer baseMenor;
						Escribir "Ingrese la altura del trapecio:";
						Leer altura;
						area <- ((baseMayor + baseMenor) * altura) / 2;
						Escribir "El área del trapecio es:", area;
					Sino
						Escribir "Opción inválida";
					FinSi
				FinSi
			FinSi

FinProceso
