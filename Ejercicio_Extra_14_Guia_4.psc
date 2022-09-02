Algoritmo Ejercicio_Extra_14_Guia_4
	
	//	Crear una matriz que contenga 3 columnas y la cantidad filas que decida el usuario. Las
	//	dos primeras columnas contendrán valores enteros ingresados por el usuario y en la 3
	//	columna se deberá almacenar el resultado de sumar el número de la primera y segunda
	//	columna. Mostrar la matriz de la siguiente forma:
	
	//	3 + 5 = 8
	//	4 + 3 = 7
	//	1 + 4 = 5
	
	Definir matriz, j, i, f, c, k Como Entero;
	Definir nro como real;
	
	k = 0;
	f = 3;
	c = 3;
	
	Dimension matriz(f, c)
	
	Para i <- 0 Hasta f - 1 Con Paso 1 Hacer
		Para j <- 0 Hasta c - 1 Con Paso 1 Hacer
			Si j = c - 1 Entonces
				Para k = 0 Hasta 0 Con Paso 1 Hacer
					matriz(i, j) = matriz(i, k) + matriz(i, k + 1);
				FinPara
			SiNo
				Escribir "Fila : ", i, " Columna : ", j;
				Escribir "Digite un numero";
				Leer nro
				
				matriz(i, j) = nro;
			FinSi
		FinPara
	FinPara
	
	Para i <- 0 Hasta f - 1 Con Paso 1 Hacer
		Para j <- 0 Hasta c - 1 Con Paso 1 Hacer
			Escribir Sin Saltar " [ ", matriz(i, j), " ] ";
		FinPara
		
		Escribir "";
	FinPara
FinAlgoritmo
