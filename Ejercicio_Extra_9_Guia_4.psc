Algoritmo Ejercicio_Extra_9_Guia_4
	
	//	Programe una función que calcule el producto de un arreglo de números enteros. Para
	//	esto imagine, por ejemplo, que para un vector V de tamaño 4, el producto de todos los
	//	valores es igual a (V[1]*V[2]*V[3]*V[4])
	
	Definir vector, i, d, subindice Como Entero;
	
	Escribir "Digite la dimension del vector";
	Leer d;
	
	subindice = d - 1; 
	
	Dimension vector(d);
	
	Para i <- 0 Hasta d - 1 Hacer
		vector(i) = Aleatorio(1, 3);
	FinPara
	
	Para i <- 0 Hasta d - 1 Con Paso 1 Hacer
		Escribir Sin Saltar " [ ", vector(i), " ] ";
	FinPara
	
	Escribir " ";
	Escribir Sin Saltar "La sumatoria de todos los valores del Vector sera de: ";
	Escribir multiplicacionN(vector, subindice)
FinAlgoritmo

Funcion multiplicacion <- multiplicacionN(vector, subindice)
	Definir multiplicacion Como Real;
	
	multiplicacion = 1;
	
	Si subindice = 0 Entonces
		multiplicacion = multiplicacion * vector(Subindice);
	SiNo
		multiplicacion = Vector(Subindice);
		multiplicacion = multiplicacion * multiplicacion(vector, Subindice - 1);
	FinSi	
FinFuncion


