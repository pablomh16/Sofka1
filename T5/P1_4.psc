
SubProceso alquilar_pelicula(nombrePelicula)
	Limpiar Pantalla;
	Escribir "Alquilando ", nombrePelicula, "...";
FinSubProceso


Funcion consultar_peliculas_disponibles()
	Escribir "Las películas disponibles: ";
	Escribir "Peli N1";
	Escribir "Peli N2";
	Escribir "Peli N3";
FinFuncion

Funcion recibir_pelicula()
	Definir  comentario Como Entero;
	Definir novedad Como Caracter;
	Escribir "¿Quieres realizar un comentario?";
	Escribir "1. Si";
	Escribir "2. No";
	Leer comentario;
	
	Si comentario == 1 Entonces
		Escribir "Ingrese comentario";
		
		Leer novedad;
		Limpiar Pantalla;
		Escribir "La Novedad ha sido registrada de forma correcta";
	Sino
		Escribir "Saliendo del sistema";
	FinSi
FinFuncion


Proceso punto4
	
	Definir opcion Como Entero;
	Definir nombrePelicula Como Caracter;
	Definir comentario Como Caracter;
	
	Escribir "Bienvenido a la video tienda El Porvenir";
	Escribir "1. Alquilar película";
	Escribir "2. Consultar películas disponibles";
	Escribir "3. Recibir película y realizar anotaciones";
	Escribir "4. Salir";
	Leer opcion;
	
	Mientras opcion <> 4 Hacer
		Segun opcion Hacer
			1:
				Escribir "nombre de la película: ";
				Leer nombrePelicula;
				
				alquilar_pelicula(nombrePelicula);
			2:
				consultar_peliculas_disponibles();
			3:
				recibir_pelicula();
			De Otro Modo:
				Escribir "opción no válida";
		FinSegun
		
		Escribir "";
		Escribir "Bienvenido a la video tienda El Porvenir";
		Escribir "1. Alquilar película";
		Escribir "2. Consultar películas disponibles";
		Escribir "3. Recibir película y realizar anotaciones";
		Escribir "4. Salir";
		
		Leer opcion;
	FinMientras
	
	Escribir "Saliendo del sistema";
	
FinProceso