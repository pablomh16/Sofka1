Proceso P1_7
    Definir peso, estatura, imc Como Real;
    Escribir "Ingrese el peso en kilogramos:";
    Leer peso;
    Escribir "Ingrese la estatura en metros:";
    Leer estatura;
    imc <- peso / (estatura * estatura);
    Escribir " el indice de masa corporal es ", imc; // ES ESTE
	
    Escribir "El IMC es: ", imc;
    Escribir "El rango del IMC es: ", determinarRangoIMC(imc);
FinProceso

SubProceso respuesta<- determinarRangoIMC(imc) 
	
    Si imc < 18.5 y imc>0 Entonces
        Escribir  "Bajo peso";
    FinSi
    Si imc >= 18.5 Y imc < 25 Entonces
        Escribir  "Normal";
    FinSi
    Si imc >= 25 Y imc < 30 Entonces
        Escribir  "Sobrepeso";
    FinSi
    Si imc >= 30 Entonces
        Escribir  "Obeso";
    FinSi
FinSubProceso

