Proceso punto6
		Definir matricula Como Caracter;
		Definir cilindraje Como Entero;
		Definir fecha_ingreso Como Caracter;
		Definir observaciones_cliente Como Caracter;
		Definir fecha_salida Como Caracter;
		Definir novedades Como Caracter;
		Definir arreglos Como Caracter;
		novedades <- "";
		arreglos <- "";
		
		Escribir "Ingrese la matrícula de la motocicleta:";
		Leer matricula;
		
		Escribir "Ingrese el cilindraje de la motocicleta:";
		Leer cilindraje;
		
		Escribir "Ingrese la fecha de ingreso de la motocicleta:";
		Leer fecha_ingreso;
		
		Escribir "Ingrese las observaciones del cliente:";
		Leer observaciones_cliente;
		
		// Revisión de la motocicleta
		Si cilindraje > 500 Entonces
			Escribir "La motocicleta de alta cilindrada necesita revisión adicional";
			Escribir "Ingrese las novedades encontradas:";
			Leer novedades;
		FinSi
		
		Escribir "Ingrese la fecha de salida de la motocicleta:";
		Leer fecha_salida;
		
		// Arreglos en la motocicleta
		Si novedades <> "" Entonces
			Escribir "Ingrese los arreglos hechos en la motocicleta:";
			Leer arreglos;
		FinSi
		
		// Mostrar información de la motocicleta y su revisión
		Escribir "Motocicleta con matrícula " , matricula , " y cilindraje " , cilindraje;
		Escribir "Fecha de ingreso: " ,fecha_ingreso;
		Escribir "Observaciones del cliente: " , observaciones_cliente;
		
		Si novedades <> "" Entonces
			Escribir "Novedades encontradas: " , novedades;
		FinSi
		
		Escribir "Fecha de salida: " , fecha_salida;
		
		Si arreglos <> "" Entonces
			Escribir "Arreglos hechos en la motocicleta: " , arreglos;
		FinSi


FinProceso
