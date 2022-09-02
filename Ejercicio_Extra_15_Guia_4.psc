Algoritmo Ejercicio_Extra_15_Guia_4
	//	Realizar un programa que permita visualizar el resultado del producto de una matriz de
	//	enteros de 3x3 por un vector de 3 elementos. Los valores de la matriz y el vector pueden
	//	inicializarse evitando así el ingreso de datos por teclado.
	
	Definir matriz, vector2, vector, sumatoria, nro Como real;
	Definir f, c, i, j, d Como Entero;
	
	nro = 0;
	sumatoria = 0;

	Escribir "Digite la dimension del vector";
	Leer d;
	
	Escribir "Digite cuantas filas desea que tenga la matriz";
	Leer f;
	
	Escribir "Digite cuantas columnas desea que tenga la matriz";
	Leer c;
	
	Si c = d Entonces
		Dimension vector(d);
		Dimension matriz(f, c);
		Dimension vector2(d);
		
		Para i = 0 Hasta f - 1 Con Paso 1 Hacer
			Para j = 0 Hasta c - 1 Con Paso 1 Hacer
				Escribir "Digite un numero para la 1ra matriz";
				Leer nro;
				
				matriz(i,j) = nro;
			FinPara
		FinPara
		
		Para i = 0 Hasta d - 1 Con Paso 1 Hacer
			Escribir "Digite un numero para el vector";
			Leer nro;
			
			vector(i) = nro;
		FinPara
		
		Para i <- 0 Hasta f - 1 Con Paso 1 Hacer
			Para j <- 0 Hasta c - 1 Con Paso 1 Hacer
				Escribir Sin Saltar " [ ", matriz(i, j), " ] ";
			FinPara
			
			Escribir "";
		FinPara
		
		Escribir "";
		
		Para i <- 0 Hasta d - 1 Con Paso 1 Hacer
			Escribir Sin Saltar " [ ", vector(i), " ] ";
		FinPara
		
		Escribir "";
		
		Para i <- 0 Hasta f - 1 Con Paso 1 Hacer
			sumatoria = 0;
			
			Para j <- 0 Hasta c - 1 Con Paso 1 Hacer
				sumatoria = sumatoria + (matriz(i,j) * vector(j));
			FinPara
			
			vector2(i) = sumatoria;
		FinPara
		
		Escribir "";
		Escribir "";
		
		Para i <- 0 Hasta f - 1 Con Paso 1 Hacer
			Escribir Sin Saltar " [ ", Vector2(i), " ] ";
		FinPara
	SiNo
		Escribir "Error, para poder multiplicar un vector con una matriz, el vector tiene que tener la dimension igual a la cantidad de columnas en una matriz";
	FinSi	
FinAlgoritmo
