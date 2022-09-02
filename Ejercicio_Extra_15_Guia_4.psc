Algoritmo Ejercicio_Extra_15_Guia_4
	
	//	Realizar un programa que permita visualizar el resultado del producto de una matriz de
	//	enteros de 3x3 por un vector de 3 elementos. Los valores de la matriz y el vector pueden
	//	inicializarse evitando así el ingreso de datos por teclado.
	
	Definir Matriz Como real;
	
	Definir Vector2 Como real;
	
	Definir f Como Entero;
	
	Definir c Como Entero;
	
	Definir i Como Entero;
	
	Definir j Como Entero;
	
	Definir Vector Como real;
	
	Definir Sumatoria Como real;
	
	Definir d Como Entero;
	
	Definir Nro Como real;
	
	Nro = 0
	
	Sumatoria = 0;
	
	i = 0
	
	j = 0
	
	Escribir "Digite la dimension del vector"
	Leer d;
	
	Escribir "Digite cuantas filas desea que tenga la matriz"
	Leer f;
	
	Escribir "Digite cuantas columnas desea que tenga la matriz"
	Leer c;
	
	Si c = d Entonces
		
		Dimension  Vector(d)
		
		Dimension  Matriz(f, c)
		
		Dimension Vector2(d)
		
		Para i = 0 Hasta f - 1 Con Paso 1 Hacer
			
			Para j = 0 Hasta c - 1 Con Paso 1 Hacer
				
				Escribir "Digite un numero para la 1ra matriz"
				
				Leer Nro;
				
				Matriz(i,j) = Nro
				
			FinPara
			
		FinPara
		
		Para i = 0 Hasta d - 1 Con Paso 1 Hacer
			
			Escribir "Digite un numero para el vector"
			Leer Nro;
			
			Vector(i) = Nro;
			
		FinPara
		
		Para i <- 0 Hasta f - 1 Con Paso 1 Hacer
			
			Para j <- 0 Hasta c - 1 Con Paso 1 Hacer
				
				Escribir Sin Saltar " [ ", Matriz(i, j), " ] "
				
			FinPara
			
			Escribir ""
			
		FinPara
		
		Escribir ""
		
		Para i <- 0 Hasta d - 1 Con Paso 1 Hacer
			
			Escribir Sin Saltar " [ ", Vector(i), " ] "
			
		FinPara
		
		Escribir ""
		
		Para i <- 0 Hasta f - 1 Con Paso 1 Hacer
			
			Sumatoria = 0
			
			Para j <- 0 Hasta c - 1 Con Paso 1 Hacer
				
				Sumatoria = Sumatoria + (Matriz(i,j) * Vector(j))
				
			FinPara
			
			Vector2(i) = Sumatoria
			
		FinPara
		
		Escribir ""
		Escribir ""
		
		Para i <- 0 Hasta f - 1 Con Paso 1 Hacer
			
			Escribir Sin Saltar " [ ", Vector2(i), " ] "
			
		FinPara
		
	SiNo
		
		Escribir "Error, para poder multiplicar un vector con una matriz, el vector tiene que tener la dimension igual a la cantidad de columnas en una matriz"
		
	FinSi
	
	
	
FinAlgoritmo
