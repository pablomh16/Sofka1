Proceso punto3
	Definir nombre Como Caracter;
	Definir apellidos Como Caracter;
	Definir edad como entero;
		Escribir "Ingrese su nombre:";
		Leer nombre;
		Escribir "Ingrese sus apellidos:";
		Leer apellidos;
		Escribir "Ingrese su edad:";
		Leer edad;
		
		Si edad >= 18 Entonces
			Escribir nombre, " ", apellidos, " usted es mayor de edad, por lo tanto puede entrar a la fiesta.";
		Sino
			Escribir nombre, " ", apellidos, " usted es menor de edad, por lo tanto no puede entrar a la fiesta, por favor devuélvase a su casa.";
		FinSi
FinProceso
