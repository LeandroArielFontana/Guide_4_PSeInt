Algoritmo Ejercicio_Extra_1_Guia_4
	//	Realizar un programa que rellene dos vectores al mismo tiempo, con 5 valores aleatorios
	//	y los muestre por pantalla.
	
	Definir vector1, vector2, d, i Como Entero;
	
	d = 5;
	
	Dimension vector1(d);
	Dimension vector2(d);
	
	Para i <- 0 Hasta d - 1 Con Paso 1 Hacer
		vector1(i) = Aleatorio(1, 10);
		vector2(i) = Aleatorio(1, 10);
	FinPara
	
	Para i <- 0 Hasta d - 1 Con Paso 1 Hacer
		Escribir Sin Saltar " [ ", vector1(i), " ] ";
	FinPara
	
	Escribir "";
	
	Para i <- 0 Hasta d - 1 Con Paso 1 Hacer
		Escribir Sin Saltar " [ ", vector2(i), " ] ";
	FinPara
	
FinAlgoritmo
