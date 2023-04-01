Proceso Contactos
    Definir opcion Como Entero;
    Definir nombre1,nombre2,nombre3 Como Caracter;
    Definir telefono1,telefono2,telefono3 Como Caracter;
    Definir organizacion1,organizacion2,organizacion3 Como Caracter;
    Definir contador Como Entero;
	Definir busqueda Como Caracter;
	Definir eliminar Como Caracter;
    contador <- 0;
	telefono2<-"";
    telefono3<-"";
	organizacion1<-"";
	organizacion2<-"";
	organizacion3<-"";
	nombre1<-"";
	nombre2<-"";
	nombre3<-"";
	
    Repetir
        Escribir "Menu:";
        Escribir "1. Agregar contacto";
        Escribir "2. Buscar contacto";
        Escribir "3. Eliminar contacto";
        Escribir "4. Salir";
        Leer opcion;
        
        Segun opcion Hacer
            1:
                Si contador < 3 Entonces
                    contador <- contador + 1;
					
                    Segun contador Hacer
                        1:
                            Escribir "Ingrese el nombre completo:";
                            Leer nombre1;
                            Escribir "Ingrese el telefono:";
                            Leer telefono1;
                            Mientras telefono1 = telefono2 o telefono1 = telefono3 Hacer
                                Escribir "El numero ya esta almacenado.";
                                Escribir "Ingrese el telefono:";
                                Leer telefono1;
                            FinMientras
                            Escribir "Ingrese la organizacion:";
                            Leer organizacion1; 
                        2:
                            Escribir "Ingrese el nombre completo:";
                            Leer nombre2;
                            Escribir "Ingrese el telefono:";
                            Leer telefono2; 
							Mientras telefono2 = telefono1 o telefono2 = telefono3 Hacer
								Escribir "El numero ya esta almacenado.";
								Escribir "Ingrese el telefono:";
								Leer telefono2;
							FinMientras
							Escribir "Ingrese la organizacion:";
							Leer organizacion2;
						3:
							Escribir "Ingrese el nombre completo:";
							Leer nombre3;
							Escribir "Ingrese el telefono:";
							Leer telefono3; 
							Mientras telefono3 = telefono1 o telefono3 = telefono2 Hacer
								Escribir "El numero ya esta almacenado.";
								Escribir "Ingrese el telefono:";
								Leer telefono3;
							FinMientras
							Escribir "Ingrese la organizacion:";
							Leer organizacion3;
                    FinSegun
                Sino
                    Escribir "No se pueden agregar mas contactos.";
                FinSi
            2:
                
                Escribir "Ingrese el nombre del contacto que desea buscar:";
                Leer busqueda;
                Si busqueda = nombre1 Entonces
                    Escribir "Nombre completo: ",nombre1;
                    Escribir "Telefono: ",telefono1;
                    Escribir "Organizacion: ",organizacion1;
                Sino 
					Si busqueda = nombre2 Entonces
						Escribir "Nombre completo: ",nombre2;
						Escribir "Telefono: ",telefono2;
						Escribir "Organizacion: ",organizacion2; 
					Sino
						Si busqueda = nombre3 Entonces
							Escribir "Nombre completo: ",nombre3;
							Escribir "Telefono: ",telefono3;
							Escribir "Organizacion: ",organizacion3;
						Sino
							Escribir "No se encontro el contacto.";
						FinSi
					FinSi
				FinSi
					3:
						Escribir "Ingrese el nombre del contacto que desea eliminar:";
						Leer eliminar;
						Si eliminar = nombre1 Entonces
							nombre1 <- "";
							telefono1 <- "";
							organizacion1 <- "";
							Escribir "Contacto eliminado.";
							contador <- contador - 1;
						Sino 
							Si eliminar = nombre2 Entonces
								nombre2 <- "";
								telefono2 <- "";
								organizacion2 <- "";
								Escribir "Contacto eliminado.";
								contador <- contador - 1;
							Sino 
								Si eliminar = nombre3 Entonces
									nombre3 <- "";
									telefono3 <- "";
									organizacion3 <- "";
									Escribir "Contacto eliminado.";
									contador <- contador - 1;
								Sino
									Escribir "No se encontro el contacto.";
								FinSi
				FinSi
			FinSi
		FinSegun
	Hasta Que opcion = 4;
FinProceso