Proceso pun7
	// Declaración de variables
	Definir placa,placa1,placa2,placa3,placa4,placa5  Como Caracter;
	Definir marca1,marca2,marca3,marca4,marca5 Como Caracter;
	Definir nombre1,nombre2,nombre3,nombre4,nombre5 Como Caracter;
	Definir telefono1,telefono2,telefono3,telefono4,telefono5 Como caracter;
	Definir retirar Como Entero;
	Definir opcion,contador Como Entero;
	
	// Inicialización de variables
	placa<-"";
	
	placa1<-"";
	marca1<-"";
	nombre1<-"";
	telefono1<-"";
	
	placa2<-"";
	marca2<-"";
	nombre2<-"";
	telefono2<-"";
	
	placa3<-"";
	marca3<-"";
	nombre3<-"";
	telefono3<-"";
	
	placa4<-"";
	marca4<-"";
	nombre4<-"";
	telefono4<-"";
	
	placa5<-"";
	marca5<-"";
	nombre5<-"";
	telefono5<-"";
	
	contador<-0;
	
	// Menú principal 
	Repetir 
		Escribir "Menú principal" ;
		Escribir "1. Ingresar vehículo al parqueadero" ;
		Escribir "2. Retirar vehículo del parqueadero" ;
		Escribir "3. Consultar vehículo en el parqueadero" ;
		Escribir "4. Salir" ;
		Leer opcion ;
		
		Segun opcion Hacer 
				// Ingresar vehículo al parqueadero 
			1:
				Si placa1="" Entonces 
					Escribir "Ingrese la placa del vehículo:" ;
					Leer placa1 ;
					Escribir "Ingrese la marca del vehículo:" ;
					Leer marca1 ;
					Escribir "Ingrese el nombre completo del cliente:" ;
					Leer nombre1  ;
					Escribir "Ingrese el número de teléfono del cliente:"  ;
					Leer telefono1 ;
					contador <- contador+1;
					
				Sino Si placa2="" Entonces  
						Escribir "Ingrese la placa del vehículo:"  ;
						Leer placa2  ;
						Escribir "Ingrese la marca del vehículo:" ; 
						Leer marca2  ;
						Escribir "Ingrese el nombre completo del cliente:"  ;
						Leer nombre2 ;  
						Escribir "Ingrese el número de teléfono del cliente:"   ;
						Leer telefono2 ; 
						contador <- contador+1;
					Sino Si placa3="" Entonces   
							Escribir "Ingrese la placa del vehículo:"  ;
							Leer placa3  ;
							Escribir "Ingrese la marca del vehículo:"  ;
							Leer marca3  ;
							Escribir "Ingrese el nombre completo del cliente:"  ;
							Leer nombre3   ;
							Escribir "Ingrese el número de teléfono del cliente:"   ;
							Leer telefono3  ;
							contador <- contador+1;
						Sino Si placa4="" Entonces    
								Escribir "Ingrese la placa del vehículo:" ; 
								Leer placa4  ;
								Escribir "Ingrese la marca del vehículo:" ; 
								Leer marca4  ;
								Escribir "Ingrese el nombre completo del cliente:";  
								Leer nombre4   ;
								Escribir "Ingrese el número de teléfono del cliente:" ;  
								Leer telefono4  ;
								contador <- contador+1;
							Sino Si placa5="" Entonces    
									Escribir "Ingrese la placa del vehículo:"  ;
									Leer placa5  ;
									Escribir "Ingrese la marca del vehículo:"  ;
									Leer marca5  ;
									Escribir "Ingrese el nombre completo del cliente:"  ;
									Leer nombre5   ;
									Escribir "Ingrese el número de teléfono del cliente:";   
									Leer telefono5  ;
								contador <- contador+1;
							Sino    
								Escribir "El parqueadero está lleno";
								
							FinSi 
						FinSi
					FinSi
				FinSi
			FinSi
			2: // Retirar 
							Escribir "----------Salida de vehículos ---------";
							Escribir "Vehiculos guardados : ",contador;
							Escribir "1.placa ",placa1;
							Escribir "2.placa ",placa2;
							Escribir "3.placa ",placa3;
							Escribir "4.placa ",placa4;
							Escribir "5.placa ",placa5;
							Escribir "¿Que vehiculo desea retirar? ";
							Escribir "placa : ";
							leer retirar;
							Limpiar Pantalla;
							
							Si contador = 0 Entonces
								Escribir "No hay vehículos en el parqueadero";
							SiNo
								
								Segun retirar Hacer
									
									1:
										Escribir "Placa: ",placa1;
										Escribir "Vehiculo retirado del parqueadero  ";
										
										placa1 <- placa2;
										
										placa2 <- placa3;
										
										placa3 <- placa4;
										
										placa4 <- placa5;
										
										placa5 <- "";
										
										contador <- contador-1;
										
									2:
										
										Escribir "Placa: ",placa2;
										Escribir "Vehiculo retirado del parqueadero ";
										
										placa2 <- placa3;
										
										placa3 <- placa4;
										
										placa4 <- placa5;
										
										placa5 <- "";
										
										contador <- contador-1;
									3:
										
										Escribir "Placa: ",placa3;
										Escribir "Vehiculo retirado del parqueadero  ";
										
										placa3 <- placa4;
										
										placa4 <- placa5;
										
										placa5 <- "";
										
										contador <- contador-1;
									4:
										Escribir "Placa: ",placa4;
										Escribir "Vehiculo retirado del parqueadero  ";
										
										placa4 <- placa5;
										
										placa5 <- "";
										contador <- contador-1;
										
									5:	
										Escribir "Placa: ",placa5;
										Escribir "Vehiculo retirado del parqueadero  ";
										placa5 <- "";
										contador <- contador-1;
										
									De Otro Modo:
										Escribir "Vehiculo no se encuentra en el parqueadero  ";
								FinSegun
								
								
							FinSi
							
						3:
							Escribir "----------Buscar un vehiculo--------------";
							Escribir "Ingrese la placa del vehiculo";
							Leer placa;
							
							si placa <> placa1 y placa <> placa2 y placa <> placa3 y placa <> placa4 y placa <> placa5 Entonces
								
								Escribir "Este vehiculo no se guarda en el parqueadero";
								
							SiNo
								Si placa = placa1 Entonces
									Escribir "Nombre: ",nombre1;
									Escribir "Telefono: ",telefono1;
									Escribir "Placa: ",placa1;
									Escribir "Marca: ",marca1;
								SiNo
									Si placa =placa2 Entonces
										Escribir "Nombre: ",nombre2;
										Escribir "Telefono: ",telefono2;
										Escribir "Placa: ",placa2;
										Escribir "Marca: ",marca2;
									SiNo 
										Si placa = placa3 Entonces
											Escribir "Nombre: ",nombre3;
											Escribir "Telefono: ",telefono3;
											Escribir "Placa: ",placa3;
											Escribir "Marca: ",marca3;
										SiNo
											Si placa = placa4 Entonces
												Escribir "Nombre: ",nombre4;
												Escribir "Telefono: ",telefono4;
												Escribir "Placa: ",placa4;
												Escribir "Marca: ",marca4;
											SiNo
												Si placa = placa5 Entonces
													
													Escribir "Nombre: ",nombre5;
													Escribir "Telefono: ",telefono5;
													Escribir "Placa: ",placa5;
													Escribir "Marca: ",marca5;
												FinSi
												
											FinSi
										FinSi
									FinSi
									
								FinSi
							FinSi
					
				4:
					Escribir "Gracias por usar nuestros servicios.";
				De Otro Modo:
					Escribir "Opcion incorrecta";	
		FinSegun
Hasta Que opcion=4
FinProceso