Algoritmo Ejercicio_Extra_10_Guia_4
//	Realizar un programa que rellene de números aleatorios una matriz a través de un
//	subprograma y generar otro subprograma que muestre por pantalla la matriz final.

	Definir f, c, matriz Como Entero;
	
	Escribir "Digite cuantas filas desea que tenga la Matriz";
	Leer f;
	
	Escribir "Digite cuantas columnas desea que tenga la matriz";
	Leer c;
	
	Dimension matriz(f, c);
	
	relleno(matriz, f, c);
	print(matriz, f, c);
FinAlgoritmo

SubProceso relleno(matriz, f, c)
	Definir i, j Como Entero;
	
	Para i = 0 Hasta f - 1 Con Paso 1 Hacer
		Para j = 0 Hasta c - 1 Con Paso 1 Hacer
			matriz(i, j) = Aleatorio(1, 10);
		FinPara
	FinPara
FinSubProceso

SubProceso print(matriz, f, c)
	Definir i, j Como Entero;
	
	Para i = 0 Hasta f - 1 Con Paso 1 Hacer
		Para j = 0 Hasta c - 1 Con Paso 1 Hacer
			Escribir Sin Saltar " [ ", matriz(i, j), " ] ";
		FinPara
		
		Escribir " ";
	FinPara
FinSubProceso
	