Algoritmo Ejercicio_Extra_14_Guia_4
	
	//	Crear una matriz que contenga 3 columnas y la cantidad filas que decida el usuario. Las
	//	dos primeras columnas contendrán valores enteros ingresados por el usuario y en la 3
	//	columna se deberá almacenar el resultado de sumar el número de la primera y segunda
	//	columna. Mostrar la matriz de la siguiente forma:
	
	//	3 + 5 = 8
	//	4 + 3 = 7
	//	1 + 4 = 5
	
	Definir Matriz Como Entero;
	
	Definir Nro como real;
	
	Definir i Como Entero;
	
	Definir j Como Entero;
	
	Definir f Como Entero;
	
	Definir c Como Entero;
	
	Definir k Como Entero;
	
	k = 0;
	
	f = 3;
	
	c = 3;
	
	Dimension Matriz(f, c)
	
	Para i <- 0 Hasta f - 1 Con Paso 1 Hacer
		
		Para j <- 0 Hasta c - 1 Con Paso 1 Hacer
			
			Si j = c - 1 Entonces
				
				Para k = 0 Hasta 0 Con Paso 1 Hacer
					
					Matriz(i, j) = Matriz(i, k) + Matriz(i, k + 1) ;
					
				FinPara
				
			SiNo
				
				Escribir "Fila : ", i, " Columna : ", j;
				
				Escribir "Digite un numero";
				Leer Nro
				
				Matriz(i, j) = Nro;
				
				
			FinSi
			
		FinPara
		
	FinPara
	
	Para i <- 0 Hasta f - 1 Con Paso 1 Hacer
		
		Para j <- 0 Hasta c - 1 Con Paso 1 Hacer
			
			Escribir Sin Saltar " [ ", Matriz(i, j), " ] "
			
		FinPara
		
		Escribir ""
		
	FinPara
	
FinAlgoritmo
