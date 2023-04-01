Proceso punto10

		Definir titular como Caracter;
		Definir cantidad, ingreso, retiro como Real;
		Definir opcion Como Entero;
		
		Escribir "Bienvenido a Su banco fiel";
		Escribir "Ingrese su nombre: ";
		Leer titular;
		Escribir "Ingrese la cantidad inicial: ";
		Leer cantidad;
		
			Escribir "";
			Escribir "Titular: ", titular;
			Escribir "Cantidad: $", cantidad;
			Escribir "1 - Ingreso de dinero";
			Escribir "2 - Retiro de dinero";
			Escribir "3 - Consulta de saldo";
			Escribir "0 - Salir";
			Escribir "Seleccione una opción: ";
			Leer opcion;
			
			Segun opcion Hacer
				1:
					Escribir "Ingrese la cantidad a ingresar: ";
					Leer ingreso;
					Si ingreso > 0 Entonces
						cantidad <- cantidad + ingreso;
						Escribir "Ingreso realizado correctamente";
					SiNo
						Escribir "Error: no se pueden ingresar valores negativos";
					FinSi
				2:
					Escribir "Ingrese la cantidad a retirar: ";
					Leer retiro;
					Si retiro <= cantidad Entonces
						cantidad <- cantidad - retiro;
						Escribir "Retiro realizado correctamente";
					SiNo
						Escribir "Error: fondos insuficientes";
					FinSi
				3:
					Escribir "Saldo actual: $", cantidad;
				0:
					Escribir "Adiós";
				De Otro Modo:
					Escribir "Opción inválida";
			FinSegun
FinProceso
