Algoritmo Ejercicio_Extra_11_Guia_4
	
	
	//	Crear una matriz de orden n * m (donde n y m son valores ingresados por el usuario), 
	//	lenarla con números aleatorios entre 1 y 100 y mostrar su traspuesta. NOTA: si no 
	//	conoces lo que es una traspuesta, mirar el siguiente link: Matriz Traspuesta
	
	Definir Matriz Como Entero;
	
	Definir f Como Entero;
	
	Definir c Como Entero;
	
	Definir i Como Entero;
	
	Definir j Como Entero
	
	i = 0
	
	j = 0
	
	Escribir "Definir la cantidad de filas que desea que tenga la matriz";
	Leer f
	
	Escribir "Digite la cantidad de columnas que desea que tenga la matriz";
	Leer c;
	
	Dimension Matriz(f, c)
	
	RellenarM(Matriz, f, c)
	
	Para i = 0 Hasta f - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta c - 1 Con Paso 1 Hacer
			
			Escribir Sin Saltar " [ ", Matriz(i, j), " ] ";
			
		FinPara
		
		Escribir " "; 
		
	FinPara
	
	Escribir " "
	Escribir " "	
	
	Para i = 0 Hasta f - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta c - 1 Con Paso 1 Hacer
			
			Escribir Sin Saltar " [ ", Matriz(j, i), " ] ";
			
		FinPara
		
		Escribir " "; 
		
	FinPara
	
	
FinAlgoritmo

SubProceso RellenarM(Matriz, f, c)
	
	Definir i Como Entero;
	
	Definir j Como Entero
	
	i = 0;
	
	j = 0;
	
	Para i = 0 Hasta f - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta c - 1 Con Paso 1 Hacer
			
			Matriz(i,j) = Aleatorio(1, 100)
			
		FinPara
		
	FinPara
	
FinSubProceso
	