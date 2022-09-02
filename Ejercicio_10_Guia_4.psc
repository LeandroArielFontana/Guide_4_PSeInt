Algoritmo Ejercicio_10_Guia_4
	
//	Dada una matriz de orden n * m (donde n y m son valores ingresados por el usuario) 
//	realizar un subprograma que llene la matriz de numeros aleatorios. Despues, crearemos 
//	otro subprograma que calcule y muestre la suma de los elementos de la matriz. Mostrar 
//	la matriz y los resultados por pantalla.
	
	Definir Matriz, f, c, min, max Como Entero;

	min = 0;
	max = 0;
	
	Escribir "Digite cuantas filas desea que tenga la matriz";
	Leer f;
	
	Escribir "Digite cuantas columnas desea que tenga la matriz";
	Leer c;
	
	Dimension matriz(f, c);
	
	Escribir "Digite el valor minimo que desea que tenga la matriz";
	Leer min;
	
	Escribir "Digite el valor maximo que desea que tenga la matriz";
	Leer max;
	
	relleno(matriz, f, c, min, max);
	sumatoria(matriz, f, c);
FinAlgoritmo

SubProceso relleno(matriz Por Referencia, f, c, min, max)
	Definir i, j Como Entero;
	
	Para i <- 0 Hasta f - 1 Con Paso 1 Hacer
		Para j <- 0 Hasta c - 1 Con Paso 1 Hacer
			matriz(i, j) = Aleatorio(min, max);
		FinPara
	FinPara
	
	Para i <- 0 Hasta f - 1 Con Paso 1 Hacer
		Para j <- 0 Hasta c - 1 Con Paso 1 Hacer
			Escribir Sin Saltar " [ ", matriz(i, j), " ] ";
		FinPara
		
		Escribir "";
	FinPara
FinSubProceso

SubProceso sumatoria(matriz, f, c)
	Definir i, j Como Entero;
	Definir suma Como Real;
	
	suma = 0;
	
	Para i <- 0 Hasta f - 1 Con Paso 1 Hacer
		Para j <- 0 Hasta c - 1 Con Paso 1 Hacer
			suma = suma + matriz(i, j);
		FinPara
	FinPara
	
	Escribir "La suma total de los subindices es de: ", suma;
FinSubProceso
