Proceso punto4
	
	Definir nombrePelicula,novedad Como Caracter;
	Definir opcion,comentario Como Entero;
		
			Escribir "Bienvenido a la video tienda El Porvenir";
			Escribir "1. Alquilar pel�cula";
			Escribir "2. Consultar pel�culas disponibles";
			Escribir "3. Recibir pel�cula y realizar anotaciones";
			Escribir "4. Salir";
			
			Leer opcion;
			Segun opcion Hacer
				1:
					Escribir"nombre de la pel�cula: ";
					Leer nombrePelicula;
					
					Limpiar Pantalla;
					Escribir "Alquilando ",nombrePelicula,"...";
				2:
					Escribir "Las peliculas disponibles: ";
					Escribir "Peli N1";
					Escribir "Peli N2";
					Escribir "Peli N3";
					
				3:
					Escribir "�Quieres realizar un comentario?";
					Escribir "1. Si";
					Escribir "2. No";
					Leer  comentario;
					
					Si comentario == 1 Entonces
						Escribir "Ingrese comentario";
						Leer novedad;
						Limpiar Pantalla;
						Escribir " La Novedad ha sido registrada de forma correcta";
					SiNo
						Escribir "Saliendo del sistema";
					FinSi
				De Otro Modo:
					Escribir "opci�n no v�lida";
			FinSegun
FinProceso
