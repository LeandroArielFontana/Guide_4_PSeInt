Algoritmo Ejercicio_8_Guia_4
////		Realizar un programa que rellene una matriz de 3x3 con 9 valores ingresados por el 
////		usuario y los muestre por pantalla
	
	Definir matriz, i, j, f, c Como Entero;
	Definir nro como real;
	
	f = 3;
	c = 3;
	
	Dimension matriz(f, c);
	
	Para i <- 0 Hasta f - 1 Con Paso 1 Hacer
		Para j <- 0 Hasta c - 1 Con Paso 1 Hacer
			Escribir "Fila : ", i, " Columna : ", j;
			
			Escribir "Digite un numero";
			Leer nro;
			
			matriz(i, j) = nro;
		FinPara
	FinPara
	
	Para i <- 0 Hasta f - 1 Con Paso 1 Hacer
		Para j <- 0 Hasta c - 1 Con Paso 1 Hacer
			Escribir Sin Saltar " [ ", matriz(i, j), " ] ";
		FinPara
		
		Escribir "";
	FinPara
FinAlgoritmo
