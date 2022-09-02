Algoritmo Ejercicio_11_Guia_4
	//	Rellenar en un subproceso una matriz cuadrada con números aleatorios salvo en la 
	//	diagonal principal, la cual debe rellenarse con ceros. Una vez llena la matriz debe 
	//	generar otro subproceso para imprimir la matriz
	
	Definir matriz, f, c, min, max Como Entero;
	
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
	show(Matriz, f, c);
FinAlgoritmo

SubProceso relleno(matriz, f, c, min, max)
	Definir i, j Como Entero;
	
	Para i <- 0 Hasta f - 1 Con Paso 1 Hacer
		Para j <- 0 Hasta c - 1 Con Paso 1 Hacer
			Si i = j Entonces
				matriz(i, j) = 0;
			SiNo
				matriz(i, j) = Aleatorio(min, max);
			FinSi
		FinPara
	FinPara
FinSubProceso

SubProceso show(matriz, f, c)
	Definir i, j Como Entero;
	
	Para i <- 0 Hasta f - 1 Con Paso 1 Hacer
		Para j <- 0 Hasta c - 1 Con Paso 1 Hacer
			Escribir Sin Saltar " [ ", Matriz(i, j), " ] ";
		FinPara
		
		Escribir "";
	FinPara
FinSubProceso
