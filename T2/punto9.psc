Proceso punto9
	Definir opcion Como Entero;
	Definir base Como Real;
	Definir altura Como Real;
	Definir area Como Real;
	Definir baseMayor Como Real;
	Definir baseMenor Como Real;
			Escribir "Seleccione la figura geom�trica:";
			Escribir "1. Rect�ngulo";
			Escribir "2. Tri�ngulo";
			Escribir "3. Trapecio";
			Leer opcion;
			
			Si opcion = 1 entonces
				Escribir "Ingrese la base del rect�ngulo:";
				Leer base;
				Escribir "Ingrese la altura del rect�ngulo:";
				Leer altura;
				area <- base * altura;
				Escribir "El �rea del rect�ngulo es:", area;
			Sino si opcion = 2 entonces
					Escribir "Ingrese la base del tri�ngulo:";
					Leer base;
					Escribir "Ingrese la altura del tri�ngulo:";
					Leer altura;
					area <- (base * altura) / 2;
					Escribir "El �rea del tri�ngulo es:", area;
				Sino si opcion = 3 entonces
						Escribir "Ingrese la base mayor del trapecio:";
						Leer baseMayor;
						Escribir "Ingrese la base menor del trapecio:";
						Leer baseMenor;
						Escribir "Ingrese la altura del trapecio:";
						Leer altura;
						area <- ((baseMayor + baseMenor) * altura) / 2;
						Escribir "El �rea del trapecio es:", area;
					Sino
						Escribir "Opci�n inv�lida";
					FinSi
				FinSi
			FinSi

FinProceso
