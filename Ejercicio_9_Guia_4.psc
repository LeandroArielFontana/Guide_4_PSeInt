Algoritmo Ejercicio_9_Guia_4
//	Escribir un programa que realice la búsqueda lineal de un número entero ingresado por 
//	el usuario en una matriz de 5x5, llena de números aleatorios y devuelva por pantalla las 
//	coordenadas donde se encuentra el valor, es decir en que fila y columna se encuentra. 
//	En caso de no encontrar el valor dentro de la matriz se debe mostrar un mensaje
	
	Definir matriz, coordenada, i, j, f, c Como Entero;
	Definir nro como real;
	
	coordenada = 0;
	f = 5;
	c = 5;
	
	Dimension matriz(f, c);
	
	Para i <- 0 Hasta f - 1 Con Paso 1 Hacer
		Para j <- 0 Hasta c - 1 Con Paso 1 Hacer			
			matriz(i, j) = Aleatorio(1, 10);
		FinPara
	FinPara
	
	Escribir "Digite el numero que desea buscar en la matriz";
	Leer nro;
	
	Para i <- 0 Hasta f - 1 Con Paso 1 Hacer
		Para j <- 0 Hasta c - 1 Con Paso 1 Hacer
			Si Matriz(i, j) = Nro Entonces
				Escribir "Fila : ", i, " Columna : ", j;
				
				coordenada = coordenada + 1
			FinSi
		FinPara
	FinPara
	
	Si coordenada = 0 Entonces
		Escribir "En la matriz no se encuentra el numero ingresado";
	FinSi	
FinAlgoritmo
