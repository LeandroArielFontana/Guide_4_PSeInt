Algoritmo Ejercicio_Extra_8_Guia_4
	//	Programe una función recursiva que calcule la suma de un arreglo de números enteros.
	
	Definir vector, i, d, subindice Como Entero;
	
	Escribir "Digite la dimension del vector";
	Leer d;
	
	subindice = d - 1;
	
	Dimension vector(d);
	
	Para i <- 0 Hasta d - 1 Hacer
		vector(i) = Aleatorio(0, 3);
	FinPara
	
	Para i <- 0 Hasta d - 1 Con Paso 1 Hacer
		Escribir Sin Saltar " [ ", vector(i), " ] ";
	FinPara
	
	Escribir " ";
	Escribir Sin Saltar "La sumatoria de todos los valores del Vector sera de: ";
	Escribir sumatoriaN(vector, subindice);
FinAlgoritmo

Funcion suma <- sumatoriaN(vector, subindice)
	Definir suma Como Real;
	
	suma = 0;
	
	Si subindice = 0 Entonces
		suma = suma + vector(subindice)
	SiNo
		suma = vector(subindice)
		suma = suma + SumatoriaN(vector, subindice - 1)
	FinSi	
FinFuncion


	