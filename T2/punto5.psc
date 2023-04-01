Proceso punto5
	
	// Definici�n de variables
	Definir cliente Como Caracter;
	Definir producto Como entero;
	Definir opcion Como Entero;
	
	
	// Men� de opciones
	
	Escribir "Bienvenido(a) a Droguer�a Mi Salud";
	Escribir "1. Comprar producto";
	Escribir "2. Consultar precios por producto";
	Escribir "3. Devoluciones";
	Escribir "4. Salir";
	Leer opcion;
	
	// Acciones seg�n opci�n seleccionada
	Segun opcion Hacer
		1:
			Escribir "Seleccione el producto que desea comprar:";
			Escribir "1. Medicamento A";
			Escribir "2. Medicamento B";
			Escribir "3. Otro producto";
			Leer producto;
			
			Si producto = 1 Entonces
				Escribir "Ha seleccionado Medicamento A";
			SiNo Si producto = 2 Entonces
					Escribir "Ha seleccionado Medicamento B";
				SiNo
					Escribir "Ha seleccionado otro producto";
				FinSi
			FinSi
		2:
			Escribir "Seleccione el producto del que desea conocer el precio:";
			Escribir "1. Medicamento A";
			Escribir "2. Medicamento B";
			Escribir "3. Otro producto";
			Leer producto;
			Si producto = 1 Entonces
				Escribir "El precio de Medicamento A es de $50";
			Sino 
				Si producto = 2 Entonces
					Escribir "El precio de Medicamento B es de $75";
					
				Sino si producto <> 1 y producto <> 2 Entonces
						Escribir "El precio del otro producto es de $100";
					FinSi
				FinSi
			FinSi
		3:
			Escribir "Ingrese el producto que desea devolver:";
			Escribir "1. Medicamento A";
			Escribir "2. Medicamento B";
			Escribir "3. Otro producto";
			Leer producto;
			Si producto = 1 Entonces
				Escribir "Se ha aceptado la devoluci�n del Medicamento A.";
			Sino Si producto = 2 Entonces
					Escribir "Se ha aceptado la devoluci�n del Medicamento B ";
				Sino Si producto = 3 Entonces
						Escribir "Se ha aceptado la devoluci�n del Medicamento";
					SiNo
						Escribir "No se pudo aceptar la devoluci�n";
					FinSi
				FinSi
			FinSi
		4:
			Escribir "Gracias por visitar Droguer�a Mi Salud";
		De Otro Modo:
			Escribir "Opci�n inv�lida, intente de nuevo";
	FinSegun
FinProceso