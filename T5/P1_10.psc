SubProceso  respuesta <- IngresarValor(CuentaCantidad)
	Definir dinero Como Real;
	
	Escribir "Ingresos";
	Escribir "¿Cuánto dinero desea ingresar a la cuenta?";
	Leer dinero;
	
	Si dinero> 0 Entonces
		Escribir "Valor a ingresar: ", dinero;
		CuentaCantidad <- CuentaCantidad + dinero;
		Escribir "Saldo actual: ", CuentaCantidad;
	FinSi
FinSubProceso
		
SubProceso  respuesta<-RetirarValor(CuentaCantidad)
	Definir retirar Como Real;
	
	Escribir "Retiros";
	Escribir "¿Cuánto dinero desea retirar de la cuenta?";
	Leer retirar;
	Si CuentaCantidad -retirar < 0  Entonces
		Escribir "No se pudo realizar la operacion";
	SiNo
		CuentaCantidad <- CuentaCantidad-retirar;
		
	FinSi
FinSubProceso

Proceso  BancoFiel
Definir Cuenta, CuentaBancaria Como real;
Definir Titular como Cadena;
Definir Valores Como Real;
Definir Opcion Como Entero;
Definir Cuentatitular Como cadena;
Definir CuentaCantidad Como Real;
Definir nuevoValor como real;
definir retiroValor como real;
	
    Escribir "Bienvenido al banco Su banco fiel";
    Escribir "Ingrese el nombre del titular de la cuenta:";
    Leer Titular;
    Escribir "Ingrese la cantidad inicial en la cuenta:";
    Leer Valores;
	
    Cuentatitular <- Titular;
    CuentaCantidad <- Valores;
	Cuenta<-0;
    Repetir
        Escribir "";
        Escribir "¿Qué operación desea realizar?";
        Escribir "1. Ingreso de valor";
        Escribir "2. Retiro de valor";
        Escribir "3. Consulta de saldo";
        Escribir "4. Salir";
        Leer Opcion;
		
        Segun Opcion Hacer
            1:
				nuevoValor<-IngresarValor(CuentaCantidad);
            2: 
				retiroValor<-RetirarValor(Valores);
            3: Escribir  " ", CuentaCantidad;
            4: Escribir "Gracias por utilizar nuestro servicio";
        FinSegun
    Hasta Que Opcion = 4
FinProceso

