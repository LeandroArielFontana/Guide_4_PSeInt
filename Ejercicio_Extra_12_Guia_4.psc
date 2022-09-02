Algoritmo Ejercicio_Extra_12_Guia_4
	
	//	Realizar un programa que cree una matriz de 5x15 y deberemos llenar la matriz de unos 
	//	y ceros. Llenando el marco o la delimitación externa de la matriz de unos y la parte interna 
	//	de ceros.
	
	Definir Matriz Como Entero;
	
	Definir f Como Entero;
	
	Definir c Como Entero;
	
	Definir i Como Entero;
	
	Definir j Como Entero;
	
	i = 0;
	
	j = 0;
	
	f = 5;
	
	c = 15;
	
	Dimension Matriz(f, c)
	
	Para i = 0 Hasta f - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta c - 1 Con Paso 1 Hacer
			
			Si (i = 0) | (j = 0) | (i = f - 1) | (j = c - 1) Entonces
				
				Matriz(i,j) = 1
				
			SiNo
				
				Matriz(i,j) = 0
				
			FinSi
			
		FinPara
		
	FinPara
	
	Para i = 0 Hasta f - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta c - 1 Con Paso 1 Hacer
			
			Escribir Sin Saltar " [ ", Matriz(i, j), " ] ";
			
		FinPara
		
		Escribir " "; 
		
	FinPara
	
FinAlgoritmo
