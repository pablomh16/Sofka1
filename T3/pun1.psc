Proceso Pun1
	Definir i, j Como Entero;
	Definir concatenacion Como Caracter;
	concatenacion <- "";
	
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		Para j<-1 Hasta i Con Paso 1 Hacer
			Si i==1 Entonces
				Escribir "*"; Sin saltar;
			SiNo
				Escribir Concatenar("*",concatenacion); Sin saltar;
			FinSi
		FinPara
		Escribir "";
	FinPara
FinProceso
