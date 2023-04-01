
	
	SubProceso  RegistroIngreso(ingreso, observaciones, cilindraje)
		Escribir  "Ingrese la fecha y hora de ingreso de la motocicleta:";
		Leer ingreso;
		Escribir  "Ingrese las observaciones del cliente:";
		Leer observaciones;
		Escribir  "Ingrese el cilindraje de la motocicleta:";
		Leer cilindraje;
FinSubProceso


SubProceso  RegistroSalida(salida, novedades, repuestos)
    Escribir  "Ingrese la fecha y hora de salida de la motocicleta:";
    Leer salida;
    Escribir  "Ingrese las novedades encontradas:";
    Leer novedades;
    Escribir  "Ingrese los repuestos cambiados:";
    Leer repuestos;
FinSubProceso



Proceso  TallerDeMotos
	
	Definir ingreso, salida, observaciones, novedades, repuestos Como Cadena;
	Definir cilindraje Como Entero;
	Definir costo, totalCosto Como Real;
Escribir "Bienvenido al taller El Maquinista";
ingreso<-"";
observaciones<-"";
cilindraje<-0;
salida<-"";
novedades<-"";
repuestos<-"";
// Registro de ingreso
RegistroIngreso(ingreso, observaciones, cilindraje);


// Registro de salida
RegistroSalida(salida, novedades, repuestos);

// Mensaje de despedida
Escribir "Gracias por confiar en El Maquinista";
FinProceso

