Algoritmo Ejercicio_Extra_12_Guia_4
	//	Realizar un programa que cree una matriz de 5x15 y deberemos llenar la matriz de unos 
	//	y ceros. Llenando el marco o la delimitaci�n externa de la matriz de unos y la parte interna 
	//	de ceros.
	
	Definir matriz, f, c, i, j Como Entero;
	
	f = 5;
	c = 15;
	
	Dimension matriz(f, c)
	
	Para i = 0 Hasta f - 1 Con Paso 1 Hacer
		Para j = 0 Hasta c - 1 Con Paso 1 Hacer
			Si (i = 0) | (j = 0) | (i = f - 1) | (j = c - 1) Entonces
				matriz(i,j) = 1;
			SiNo
				matriz(i,j) = 0;
			FinSi
		FinPara
	FinPara
	
	Para i = 0 Hasta f - 1 Con Paso 1 Hacer
		Para j = 0 Hasta c - 1 Con Paso 1 Hacer
			Escribir Sin Saltar " [ ", matriz(i, j), " ] ";
		FinPara
		
		Escribir " "; 
	FinPara
FinAlgoritmo
