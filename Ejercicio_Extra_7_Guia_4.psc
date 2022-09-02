Algoritmo Ejercicio_Extra_7_Guia_4
	//	Crear un programa que ordene un vector lleno de números enteros aleatorios, de menor
	//	a mayor. Nota: investigar el ordenamiento burbuja.
	
	Definir vector, aux Como Real;
	Definir i, d, j Como Entero;

	Aux = 0;
	
	Escribir "Digite la dimension del vector";
	Leer d;
	
	Dimension vector(d);
	
	Para i <- 0 Hasta d - 1 Hacer
		vector(i) = Aleatorio(0, 3);
	FinPara
	
	Para i <- 0  Hasta d - 2 Con Paso 1 Hacer
		Para j <- 0 Hasta d - 2 Con Paso 1 Hacer
			Si vector(j) > vector(j + 1) Entonces
				aux = vector(j);
				vector(j) = vector(j + 1);
				vector(j + 1) = aux;
			FinSi
		FinPara		
	FinPara
	
	Para i <- 0 Hasta d - 1 Con Paso 1 Hacer
		Escribir Sin Saltar " [ ", vector(i), " ] ";
	FinPara
FinAlgoritmo
