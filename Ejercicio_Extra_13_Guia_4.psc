Algoritmo Ejercicio_Extra_13_Guia_4
	//	Realizar un programa que calcule la multiplicación de dos matrices de enteros de 3x3. 
	//	Inicialice las matrices para evitar el ingreso de datos por teclado.
	
	Definir matriz,matriz2, matriz3, sumatoria, f, c, i, j, k, nro Como Entero;
	
	k = 0; 
	sumatoria = 0;
	f = 3;
	c = 3;
	
	Dimension matriz(f,c);
	Dimension matriz2(f,c);
	Dimension matriz3(f,c);
	
	Para i = 0 Hasta f - 1 Con Paso 1 Hacer
		Para j = 0 Hasta c - 1 Con Paso 1 Hacer
			Escribir "Digite un numero para la 1ra matriz"
			Leer nro;
			
			matriz(i,j) = nro;
		FinPara
	FinPara
	
	Para i = 0 Hasta f - 1 Con Paso 1 Hacer
		Para j = 0 Hasta c - 1 Con Paso 1 Hacer
			Escribir "Digite un numero para la 2da matriz"
			Leer nro;
			
			matriz2(i,j) = nro;
		FinPara
	FinPara
	
	Para i = 0 Hasta f - 1 Con Paso 1 Hacer
		Para j = 0 Hasta c - 1 Con Paso 1 Hacer
			Escribir Sin Saltar " [ ", matriz(i, j), " ] ";
		FinPara
		
		Escribir " "; 
	FinPara
	
	Escribir " ";
	Escribir " ";
	
	Para i = 0 Hasta f - 1 Con Paso 1 Hacer
		Para j = 0 Hasta c - 1 Con Paso 1 Hacer
			Escribir Sin Saltar " [ ", matriz2(i, j), " ] ";
		FinPara
		
		Escribir " "; 
	FinPara
	
	Para i <- 0 Hasta f - 1 Con Paso 1 Hacer
		k = 0;
		
		Mientras k <= 2 Hacer
			sumatoria = 0;
			
			Para j <- 0 Hasta c - 1 Con Paso 1 Hacer
				sumatoria = sumatoria + (matriz(i,j) * matriz2(j,k));
			FinPara
			
			matriz(i, k) = sumatoria;
			k = k + 1;
		FinMientras
	FinPara
	
	Escribir " ";
	Escribir " ";
	
	Para i = 0 Hasta f - 1 Con Paso 1 Hacer
		Para j = 0 Hasta c - 1 Con Paso 1 Hacer
			Escribir Sin Saltar " [ ", Matriz3(i, j), " ] ";
		FinPara
		
		Escribir " "; 
	FinPara
FinAlgoritmo
