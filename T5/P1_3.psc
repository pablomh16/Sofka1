SubProceso  respuesta<-edades()
	Definir respuesta Como Entero;
	Escribir "	Que edad tiene ?";
	Leer respuesta;
	Si respuesta < 18 Entonces
		Escribir  "Usted no tiene autorizacion de entrar a la fiesta.";
	Sino
		Escribir  "Usted es mayor de edad, tiene autorizacion de entrar a la fiesta.";
	FinSi
FinSubProceso

SubProceso respuesta<-nom1()
	Definir respuesta Como Caracter;
	Escribir "¿Cuál es tu nombre?";
	Leer respuesta;
FinSubProceso

SubProceso respuesta<-ape1()
	Definir respuesta Como Caracter;
	Escribir"¿Cuales son tus apellidos?";
	Leer respuesta;
FinSubProceso

Proceso P1_1
	Definir edad Como Entero;
	
	Definir nombre, apellido Como Caracter;
	nombre<- nom1();
	apellido<- ape1();
	edad<- edades();
	
FinProceso
