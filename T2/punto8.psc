Proceso punto8
		Definir tortaDisponible, sabor, cantidad, decoracion Como Cadena;
		Definir ventasDiarias, cantidadVendida Como Entero;
		Definir opcion Como Entero;
		ventasDiarias <-0;
		
		Escribir "Bienvenido a la aplicaci�n de registro de pedidos de Don Carlos, el mejor pastelero de la ciudad";
		
		
			
			Escribir "";
			Escribir "Por favor, seleccione una opci�n:";
			Escribir "1. Registrar pedido";
			Escribir "2. Ver tortas disponibles";
			Escribir "3. Ver ventas diarias";
			Escribir "4. Salir";
			Leer opcion;
			
			Si opcion = 1 Entonces
				Escribir "";
				Escribir "Ingrese el sabor de la torta (ejemplo: chocolate, vainilla, etc.):";
				Leer sabor;
				Escribir "Ingrese la cantidad de porciones:";
				Leer cantidad;
				Escribir "Ingrese la decoraci�n (ejemplo: con flores, con frutas, etc.):";
				Leer decoracion;
				
				Escribir "";
				Escribir "Pedido registrado con �xito:";
				Escribir "Sabor: " , sabor;
				Escribir "Cantidad: " , cantidad;
				Escribir "Decoraci�n: " , decoracion;
				
				Sino Si opcion = 2 Entonces
				Escribir "";
				Escribir "Las tortas disponibles son:";
				Escribir "1. Torta de chocolate";
				Escribir "2. Torta de vainilla";
				Escribir "3. Torta de fresa";
				
				Sino Si opcion = 3 Entonces
				Escribir "";
				Escribir "Las ventas diarias son:";
				Escribir ventasDiarias;
				
				Sino Si opcion = 4 Entonces
				Escribir "";
				Escribir "�Gracias por utilizar nuestra aplicaci�n!";
				
				
			Sino
				Escribir "";
				Escribir "Opci�n no v�lida. Por favor, seleccione una opci�n v�lida.";
				
			FinSI
		FinSi
	FinSi
FinSi

		

FinProceso
