Proceso pun5
	
	Definir opcion Como Entero;
	Definir nombre,nombre1 Como Caracter;
	nombre<-"";
	
	Repetir
		Escribir "Menu de Usuario";
		Escribir "1. Captura nombre";
		Escribir "2. Saludar persona";
		Escribir "3. Salir del sistema";
		
		Leer opcion;
		
		Segun opcion Hacer
			1:
				Escribir "Ingrese su nombre:";
				Leer nombre;
				Escribir "Nombre capturado:", nombre;
				
			2:
				Si nombre <> "" Entonces
					Escribir "Hola,",nombre,"!";
				SiNo
					Escribir "Ingrese primero un nombre:";
				FinSi
				
			3:
				Escribir "Adios!";
			De Otro Modo:
				Escribir "Opcion invalida, digite un numero entre 1 y 3";
		FinSegun
		Escribir "";
	Hasta Que  opcion = 3;
	
FinProceso