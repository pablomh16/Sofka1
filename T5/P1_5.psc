SubProceso respuesta <- ComprarProducto() 
	Definir producto Como Entero;
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
FinSubProceso


SubProceso respuesta <- ConsultarPrecios() 
	Definir producto Como Entero;
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
	finSi
FinSubProceso


SubProceso respuesta <- Devoluciones() 
	Definir producto Como Entero;
	Escribir "Ingrese el producto que desea devolver:";
	Escribir "1. Medicamento A";
	Escribir "2. Medicamento B";
	Escribir "3. Otro producto";
	Leer producto;
	Si producto = 1 Entonces
		Escribir "Se ha aceptado la devolución del Medicamento A.";
	Sino Si producto = 2 Entonces
			Escribir "Se ha aceptado la devolución del Medicamento B ";
		Sino Si producto = 3 Entonces
				Escribir "Se ha aceptado la devolución del Medicamento";
			SiNo
				Escribir "No se pudo aceptar la devolución";
			FinSi
		FinSi
	FinSi
	
FinSubProceso

Proceso punto5
	// Función principal
	Definir cliente,compra,consultar,devoluciones1 Como Caracter;
	Definir producto Como entero;
	Definir opcion Como Entero;
	
	opcion <-0;
	
	Escribir "";
	Escribir "Bienvenido(a) a Droguería Mi Salud";
	
	Mientras opcion <> 4 Hacer 
		Escribir "";
		Escribir "1. Comprar producto";
		Escribir "2. Consultar precios por producto";
		Escribir "3. Devoluciones";
		Escribir "4. Salir";
		Leer opcion;
		
		Segun opcion Hacer
			1: 
				compra<-ComprarProducto();
			2: 
				consultar<-ConsultarPrecios();
			3: 
				devoluciones1<-Devoluciones();
			De Otro Modo:
				Escribir "Opción inválida, intente de nuevo";
		FinSegun
	FinMientras
	Escribir "Gracias por visitar Droguería Mi Salud";
	
FinProceso
