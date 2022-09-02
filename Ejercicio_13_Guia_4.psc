Algoritmo Ejercicio_13_Guia_4
	//	Una matriz mágica es una matriz cuadrada (tiene igual número de filas que de columnas) 
	//	que tiene como propiedad especial que la suma de las filas, las columnas y las 
	//	diagonales es igual.
	
	//	Considere el problema de construir un algoritmo que compruebe si una matriz de datos enteros es mágica o no, y en caso 
	//	de que sea mágica escribir la suma. Además, el programa deberá comprobar que los 
	//	números introducidos son correctos, es decir, están entre el 1 y el 9. El usuario ingresa el 
	//	tamaño de la matriz que no debe superar orden igual a 10.
	
	Definir matriz, nro, suma, validacion, conteo, validarContador, iterador, f, c, i, j, k Como Entero;
	
	iterador = 0;
	conteo = 0
	suma = 0;
	validacion = 0;
	nro = 0;
	
	Escribir "Digite cuantas filas y columnas desea que tenga la matriz";
	Leer f;
	
	Si f <= 10 Entonces
		validarContador = ( (2 * f) + 2 )
		
		c = f;
		
		Dimension matriz(f, c)
		
		Para i <- 0 Hasta f - 1 Con Paso 1 Hacer
			Para j <- 0 Hasta c - 1 Con Paso 1 Hacer
				Escribir "Fila : ", i, " Columna : ", j;
				
				Escribir "Digite un numero entre 1 y 9";
				Leer nro
				
				Hacer
					matriz(i, j) = nro;
				Hasta Que nro <= 9 & nro >= 1
			FinPara
		FinPara
		
		Para i <- 0 Hasta f - 1 Con Paso 1 Hacer
			Para j <- 0 Hasta c - 1 Con Paso 1 Hacer
				Escribir Sin Saltar " [ ", matriz(i, j), " ] "
			FinPara
			
			Escribir ""
		FinPara	
		
		validacion = (f * (( f ^ 2) + 1 )) / 2
		
		Para i <- 0 Hasta f - 1 Hacer
			suma = 0;
			
			Para j <- 0 Hasta c - 1 Con Paso 1 Hacer
				suma = suma + matriz(i, j)
			FinPara
			
			Si validacion = suma Entonces
				conteo = conteo + 1;
			FinSi
		FinPara
		
		Para j <- 0 Hasta f - 1 Hacer
			suma = 0;
			
			Para iterador = 0 Hasta 0 Con Paso 1 Hacer
				Para i = 0 Hasta c - 1 Con Paso 1 Hacer
					suma = suma + matriz(i, j)
				FinPara
			FinPara
			
			Si validacion = suma Entonces
				conteo = conteo + 1;
			FinSi
		FinPara
		
		suma = 0
		
		Para i <- 0 Hasta f - 1 Hacer
			Para j <- 0 Hasta c - 1 Con Paso 1 Hacer
				Si i = j Entonces
					suma = suma + matriz(i, j)
				FinSi
				
				Si validacion = suma Entonces
					conteo = conteo + 1;
					suma = 0;
				FinSi
			FinPara
		FinPara
		
		suma = 0;
		
		Para i <- 0 Hasta f - 1 Hacer
			Para j <- 0 Hasta c - 1 Con Paso 1 Hacer
				Si i + j = 2 Entonces
					suma = suma + matriz(i, j)
					
					Si validacion = suma Entonces
						conteo = conteo + 1;
					FinSi
				FinSi
			FinPara
		FinPara
		
		Si validarContador = conteo Entonces
			Escribir "La matriz SI es un cuadrado magico!, Su numero magico es: ", validacion;
		SiNo
			Escribir "La matriz NO es un cuadrado magico!";
		FinSi
	SiNo
		Escribir "El orden de la dimension supera a 10, reinicie el programa!"
	FinSi
	
FinAlgoritmo
