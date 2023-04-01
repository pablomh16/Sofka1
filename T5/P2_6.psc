Proceso sin_titulo
	// Declaración de variables
	Definir opcion, contador,i como entero ;
	Definir nombre, telefono, organizacion, telefono_buscar como caracter; 
	Dimension nombre[3],telefono[3],organizacion[3];
	
	telefono[0]<-"";
	telefono[1]<-"";
	telefono[2]<-"";
	
	nombre[0]<-"";
	nombre[1]<-"";
	nombre[2]<-"";
	
	organizacion[0]<-"";
	organizacion[1]<-"";
	organizacion[2]<-"";
	// Inicialización de variables
	contador <- 0;
	
	// Menú de opciones
	repetir
		Escribir "1. Añadir contacto";
		Escribir "2. Buscar contacto";
		Escribir "3. Eliminar contacto";
		Escribir "4. Salir";
		Leer opcion;
		
		segun opcion Hacer
			
			1:
				AgregarContacto(nombre, telefono, organizacion, contador);
			2:
				BuscarContacto(nombre, telefono, organizacion);
			3:
				EliminarContacto(nombre, telefono, organizacion, contador);
				
		finsegun
		
	hasta que opcion = 4;
FinProceso

SubProceso AgregarContacto(nombre por Referencia, telefono por Referencia, organizacion por Referencia, contador por Referencia)
	si contador < 3 entonces
		Escribir "Ingrese el nombre completo del contacto:";
		Leer nombre[contador];
		Escribir "Ingrese el teléfono del contacto:";
		Leer telefono[contador];
		Escribir "Ingrese la organización del contacto:";
		Leer organizacion[contador];
		contador <- contador + 1;
	sino
		Escribir "No se pueden almacenar más contactos.";
	finSi
FinSubProceso

SubProceso BuscarContacto(nombre por Referencia, telefono por Referencia, organizacion por Referencia)
    Definir nombre_buscar como caracter;
    Definir i como entero;
    Definir encontrado Como Logico;
    
    Escribir "Ingrese el nombre del contacto a buscar:";
    Leer nombre_buscar;
    encontrado <- falso;
    
    para i<-0 hasta 2 con paso 1 hacer
        si nombre[i] = nombre_buscar entonces
            Escribir "Nombre: ", nombre[i];
            Escribir "Teléfono: ", telefono[i];
            Escribir "Organización: ", organizacion[i];
            encontrado <- verdadero;
        finsi
    finpara
    
    si no encontrado entonces
        Escribir "No se encontró el contacto con el nombre ingresado.";
    finsi
FinSubProceso

SubProceso EliminarContacto(nombre por Referencia, telefono por Referencia, organizacion por Referencia, contador por Referencia)
    Definir nombre_eliminar como caracter;
    Definir i, j como entero;
    Definir encontrado Como Logico;
    
    Escribir "Ingrese el nombre del contacto a eliminar:";
    Leer nombre_eliminar;
    encontrado <- falso;
    
    para i<-0 hasta 2 con paso 1 hacer
        si nombre[i] = nombre_eliminar entonces
            para j<-i hasta 1 con paso 1 hacer
                nombre[j] <- nombre[j+1];
                telefono[j] <- telefono[j+1];
                organizacion[j] <- organizacion[j+1];
            finpara
            contador <- contador - 1;
            encontrado <- verdadero;
        finsi
    finpara
    
    si no encontrado entonces
        Escribir "No se encontró el contacto con el nombre ingresado.";
    finsi
FinSubProceso