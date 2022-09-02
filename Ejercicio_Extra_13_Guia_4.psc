Algoritmo Ejercicio_Extra_13_Guia_4
	
	//	Realizar un programa que calcule la multiplicación de dos matrices de enteros de 3x3. 
	//	Inicialice las matrices para evitar el ingreso de datos por teclado.
	
	Definir Matriz Como Entero;
	
	Definir Matriz2 Como Entero;
	
	Definir Matriz3 Como Entero;
	
	Definir Sumatoria Como Entero
	
	Definir f Como Entero;
	
	Definir c Como Entero;
	
	Definir i Como Entero;
	
	Definir j Como Entero;
	
	Definir k Como Entero;
	
	Definir Nro Como Entero;
	
	Nro = 0;
	
	k = 0; 
	
	Sumatoria = 0;
	
	f = 3
	
	c = 3
	
	i = 0;
	
	j = 0;
	
	Dimension Matriz(f,c)
	
	Dimension Matriz2(f,c)
	
	Dimension Matriz3(f,c)
	
	Para i = 0 Hasta f - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta c - 1 Con Paso 1 Hacer
			
			Escribir "Digite un numero para la 1ra matriz"
			
			Leer Nro;
			
			Matriz(i,j) = Nro
			
		FinPara
		
	FinPara
	
	Para i = 0 Hasta f - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta c - 1 Con Paso 1 Hacer
			
			Escribir "Digite un numero para la 2da matriz"
			
			Leer Nro;
			
			Matriz2(i,j) = Nro
			
		FinPara
		
	FinPara
	
	Para i = 0 Hasta f - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta c - 1 Con Paso 1 Hacer
			
			Escribir Sin Saltar " [ ", Matriz(i, j), " ] ";
			
		FinPara
		
		Escribir " "; 
		
	FinPara
	
	Escribir " ";
	Escribir " ";
	
	Para i = 0 Hasta f - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta c - 1 Con Paso 1 Hacer
			
			Escribir Sin Saltar " [ ", Matriz2(i, j), " ] ";
			
		FinPara
		
		Escribir " "; 
		
	FinPara
	
	Para i <- 0 Hasta f - 1 Con Paso 1 Hacer
		
		k = 0;
		
		Mientras k <= 2 Hacer
			
			Sumatoria = 0
			
			Para j <- 0 Hasta c - 1 Con Paso 1 Hacer
				
				Sumatoria = Sumatoria + (Matriz(i,j) * Matriz2(j,k))
				
			FinPara
			
			Matriz3(i, k) = Sumatoria
			
			k = k + 1
			
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
