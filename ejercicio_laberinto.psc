Algoritmo sin_titulo
	Definir matrizInicial Como Caracter;
	Definir f, c Como entero;
	
	Escribir "Digite la dimension del laberinto (Filas y Columnas)";
	Leer f;
	
	c = f;
	
	Dimension matrizInicial(f + 1, c + 1);
	
	rellenar(matrizInicial,f,c);
FinAlgoritmo

SubProceso rellenar(matrizInicial, f, c)
	Definir i, j Como Entero;
	
	Para i = 0 hasta f Con Paso 1 Hacer
		Para j = 0 Hasta c Con Paso 1 Hacer
			Si i = 0 | j = 0 Entonces
				matrizInicial(i,j) = " X ";
			SiNo
				Si i = f | j = f Entonces
					matrizInicial(i,j) = " X ";
				SiNo
					Si i = 1 & j = 1 Entonces
						matrizInicial(i,j) = " 2 ";
					SiNo
						Si i = f - 1 & j = f - 1 Entonces
							matrizInicial(i,j) = " 0 ";
						SiNo
							Si (i = Aleatorio(3, f -1) | j = Aleatorio(1, f - 2)) & (i = Aleatorio(3, f -2) | j = Aleatorio(3, f - 3)) Entonces
								matrizInicial(i,j) = " X ";
							SiNo
								matrizInicial(i,j) = " 0 ";
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinPara
	FinPara
	
	Para i = 0 hasta f Con Paso 1 Hacer
		Para j = 0 Hasta c Con Paso 1 Hacer
			Escribir Sin Saltar "  ", matrizInicial(i,j), "  "
		FinPara
		
		Escribir "";
	FinPara
FinSubProceso
	