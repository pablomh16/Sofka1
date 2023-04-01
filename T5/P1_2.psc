
SubProceso  respuesta<-edades()
	Definir respuesta Como Entero;
	Escribir "	Que edad tiene ?";
	Leer respuesta;
	Si respuesta >= 18 Entonces
		Escribir  "Usted es mayor de edad.";
	Sino
		Escribir  "Usted es menor de edad.";
	FinSi
FinSubProceso

Proceso P1_1
	Definir edad Como Entero;
	edad<- edades();
FinProceso


