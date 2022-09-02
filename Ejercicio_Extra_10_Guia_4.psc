Algoritmo Ejercicio_Extra_10_Guia_4
	
//	Realizar un programa que rellene de números aleatorios una matriz a través de un
//	subprograma y generar otro subprograma que muestre por pantalla la matriz final.
	
	Definir Matriz Como Entero;
	
	Definir f Como Entero;
	
	Definir c Como Entero;
	
	Escribir "Digite cuantas filas desea que tenga la Matriz";
	Leer f
	
	Escribir "Digite cuantas columnas desea que tenga la matriz";
	Leer c
	
	Dimension Matriz(f, c)
	
	Relleno(Matriz, f, c)
	
	Print(Matriz, f, c)
	
FinAlgoritmo

SubProceso Relleno(Matriz, f, c)
	
	Definir i Como Entero;
	
	Definir j Como Entero;
	
	i = 0;
	
	j = 0;
	
	Para i = 0 Hasta f - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta c - 1 Con Paso 1 Hacer
			
			Matriz(i, j) = Aleatorio(1, 10)
			
		FinPara
		
	FinPara
	
FinSubProceso

SubProceso Print(Matriz, f, c)
	
	Definir i Como Entero;
	
	Definir j Como Entero;
	
	i = 0;
	
	j = 0;
	
	Para i = 0 Hasta f - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta c - 1 Con Paso 1 Hacer
			
			Escribir Sin Saltar " [ ", Matriz(i, j), " ] ";
			
		FinPara
		
		Escribir " "
		
	FinPara
	
FinSubProceso
	