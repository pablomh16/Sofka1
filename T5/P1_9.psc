SubProceso areaRectangulo (base, altura) 
		Definir area Como Real;
			area <- base * altura;
			Escribir "El área del rectángulo es: ", area;
FinSubProceso

SubProceso areaTriangulo (base , altura ) 
		Definir area Como Real;
			area <- (base * altura) / 2;
			Escribir "El área del triángulo es: ", area;
FinSubProceso

SubProceso areaTrapecio (baseMayor, baseMenor,altura ) 
			Definir area Como Real;
				area <- ((baseMayor + baseMenor) * altura) / 2;
				Escribir "El área del trapecio es: ", area;
FinSubProceso

Proceso CalcularArea 
Definir opcion, base, altura, baseMayor, baseMenor, area Como Real;
    
    Escribir "Seleccione la figura geométrica de la que desea calcular el área:";
    Escribir "1. Rectángulo";
    Escribir "2. Triángulo";
    Escribir "3. Trapecio";
    Leer opcion;
    
    Si opcion = 1 Entonces
        Escribir "Ingrese la base del rectángulo:";
        Leer base;
        Escribir "Ingrese la altura del rectángulo:";
        Leer altura;
        areaRectangulo(base, altura);
        
	Sino
		Si opcion = 2 Entonces
        Escribir "Ingrese la base del triángulo:";
        Leer base;
        Escribir "Ingrese la altura del triángulo:";
        Leer altura;
        areaTriangulo(base, altura);
	
	
Sino
	Si opcion = 3 Entonces
        Escribir "Ingrese la base mayor del trapecio:";
        Leer baseMayor;
        Escribir "Ingrese la base menor del trapecio:";
        Leer baseMenor;
        Escribir "Ingrese la altura del trapecio:";
        Leer altura;
        areaTrapecio(baseMayor, baseMenor, altura);
        
    Sino
        Escribir "Opción inválida";
    FinSi
FinSi
FinSi

FinProceso
