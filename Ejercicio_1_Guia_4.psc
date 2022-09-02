Algoritmo Ejercicio_1_Guia_4
	///	Realizar un programa que rellene un vector con 5 valores ingresados por el usuario y los
	///	muestre por pantalla.
	
	Definir vector, i, n Como Entero;
	
	i = 0;
	
	Dimension Vector(5);
	
	Escribir "Digite 5 numeros para leerlos en el vector";
	
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		Leer n;
		Vector(i) = n
	FinPara
	
	Escribir "El array seria : "
	
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		Escribir Sin Saltar " [ ", Vector(i), " ] "
	FinPara
FinAlgoritmo
