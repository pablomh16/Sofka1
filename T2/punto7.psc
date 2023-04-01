Proceso punto7
	Definir opcion Como Entero;
	Definir peso Como Entero;
	Definir Estatura Como Real;
	Definir rango Como Real;
	
	Escribir "Secretaría de Salud Municipal";
	Escribir "-----------------------------";
	
	Escribir "¿Digita tu peso?";
	Leer Peso;
	
	Escribir "¿Digita tu estatura?";
	Leer Estatura;
	rango <- Peso/(Estatura*2);
	
	Si rango < 18.5 Entonces
		Escribir "el rango es de : ",rango,",usted esta en:";
		Escribir "Bajo peso.";
	SiNo
		Si rango >= 18.5 & rango <= 24.9 Entonces
			Escribir "el rango es de : ",rango,",usted esta en:";
			Escribir "Peso normal.";
		SiNo
			Si rango >= 25 & rango <= 29.9 Entonces
				Escribir "el rango es de : ",rango,", usted esta en:";
				Escribir "Sobre peso.";
			SiNo
				Si rango >= 30 & rango <= 34.9 Entonces
					Escribir "el rango es de : ",rango,", usted esta en:";
					Escribir "Obesidad grado I";
				SiNo
					Si rango >= 35 & rango <= 39.9 Entonces
						Escribir "el rango es de : ",rango,", usted esta en:";
						Escribir "Obesidad grado II";
					SiNo
						Si rango >= 40 Entonces
							Escribir "el rango es de : ",rango,", usted esta en:";
							Escribir "Obesidad grado III";
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		Escribir "";
	FinSi
FinProceso
