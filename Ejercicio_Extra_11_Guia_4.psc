Algoritmo Ejercicio_Extra_11_Guia_4
	//	Crear una matriz de orden n * m (donde n y m son valores ingresados por el usuario), 
	//	lenarla con números aleatorios entre 1 y 100 y mostrar su traspuesta. NOTA: si no 
	//	conoces lo que es una traspuesta, mirar el siguiente link: Matriz Traspuesta
	
	Definir matriz, f, c, i, j Como Entero;
	
	Escribir "Definir la cantidad de filas que desea que tenga la matriz";
	Leer f;
	
	Escribir "Digite la cantidad de columnas que desea que tenga la matriz";
	Leer c;
	
	Dimension matriz(f, c);
	
	rellenarM(matriz, f, c);
	
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
			Escribir Sin Saltar " [ ", matriz(j, i), " ] ";
		FinPara
		
		Escribir " "; 
	FinPara
FinAlgoritmo

SubProceso rellenarM(matriz, f, c)
	Definir i, j Como Entero;
	
	Para i = 0 Hasta f - 1 Con Paso 1 Hacer
		Para j = 0 Hasta c - 1 Con Paso 1 Hacer
			matriz(i,j) = Aleatorio(1, 100);
		FinPara
	FinPara
FinSubProceso
	