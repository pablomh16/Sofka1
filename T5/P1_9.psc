SubProceso areaRectangulo (base, altura) 
		Definir area Como Real;
			area <- base * altura;
			Escribir "El �rea del rect�ngulo es: ", area;
FinSubProceso

SubProceso areaTriangulo (base , altura ) 
		Definir area Como Real;
			area <- (base * altura) / 2;
			Escribir "El �rea del tri�ngulo es: ", area;
FinSubProceso

SubProceso areaTrapecio (baseMayor, baseMenor,altura ) 
			Definir area Como Real;
				area <- ((baseMayor + baseMenor) * altura) / 2;
				Escribir "El �rea del trapecio es: ", area;
FinSubProceso

Proceso CalcularArea 
Definir opcion, base, altura, baseMayor, baseMenor, area Como Real;
    
    Escribir "Seleccione la figura geom�trica de la que desea calcular el �rea:";
    Escribir "1. Rect�ngulo";
    Escribir "2. Tri�ngulo";
    Escribir "3. Trapecio";
    Leer opcion;
    
    Si opcion = 1 Entonces
        Escribir "Ingrese la base del rect�ngulo:";
        Leer base;
        Escribir "Ingrese la altura del rect�ngulo:";
        Leer altura;
        areaRectangulo(base, altura);
        
	Sino
		Si opcion = 2 Entonces
        Escribir "Ingrese la base del tri�ngulo:";
        Leer base;
        Escribir "Ingrese la altura del tri�ngulo:";
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
        Escribir "Opci�n inv�lida";
    FinSi
FinSi
FinSi

FinProceso
