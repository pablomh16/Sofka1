Proceso punto8
	Definir tortaDisponible, sabor, cantidad, decoracion Como Cadena;
	Definir ventasDiarias, cantidadVendida Como Entero;
	Definir opcion Como Entero;
	ventasDiarias <-0;
	opcion<-0;
	Mientras opcion <>4 Hacer
			mostrarMenu();
		Leer opcion;
		
		Si opcion = 1 Entonces
			registrarPedido();
			ventasDiarias<-ventasDiarias+1;
		Sino
			Si opcion = 2 Entonces
				mostrarTortasDisponibles();
			Sino
				Si opcion = 3 Entonces
				Escribir "ventas diarias",ventasDiarias;
				Sino
					Si opcion = 4 Entonces
						Escribir "";
						Escribir "�Gracias por utilizar nuestra aplicaci�n!";
					Sino
						Escribir "";
						Escribir "Opci�n no v�lida. Por favor, seleccione una opci�n v�lida.";
						
					FinSi
				FinSi
			FinSi
		FinSi
		
	FinMientras
	
FinProceso


				SubProceso mostrarMenu()
					Escribir "";
					Escribir "Por favor, seleccione una opci�n:";
					Escribir "1. Registrar pedido";
					Escribir "2. Ver tortas disponibles";
					Escribir "3. Ver ventas diarias";
					Escribir "4. Salir";
					
				FinSubProceso

SubProceso registrarPedido()
	Definir sabor Como Caracter;
	Definir decoracion Como Caracter;
	Definir cantidad como entero;
	Escribir "";
	Escribir "Ingrese el sabor de la torta (ejemplo: chocolate, vainilla, etc.):";
	Leer sabor;
	Escribir "Ingrese la cantidad de porciones:";
	Leer cantidad;
	Escribir "Ingrese la decoraci�n (ejemplo: con flores, con frutas, etc.):";
	Leer decoracion;
	
	Escribir "";
	Escribir "Pedido registrado con �xito:";
	Escribir "";
	Escribir "Pedido registrado con �xito:";
	Escribir "Sabor: ", sabor;
	Escribir "Cantidad: ", cantidad;
	Escribir "Decoraci�n: ", decoracion;
FinSubProceso

SubProceso mostrarTortasDisponibles()
	Escribir "";
	Escribir "Las tortas disponibles son:";
	Escribir "1. Torta de chocolate";
	Escribir "2. Torta de vainilla";
	Escribir "3. Torta de fresa";
FinSubProceso


