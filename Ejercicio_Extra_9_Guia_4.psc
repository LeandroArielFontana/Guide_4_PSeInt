Algoritmo Ejercicio_Extra_9_Guia_4
	
	//	Programe una función que calcule el producto de un arreglo de números enteros. Para
	//	esto imagine, por ejemplo, que para un vector V de tamaño 4, el producto de todos los
	//	valores es igual a (V[1]*V[2]*V[3]*V[4])
	
	Definir Vector Como Entero;
	
	Definir i Como Entero;
	
	Definir Subindice como entero;
	
	Definir d Como Entero;
	
	d = 0;
	
	i = 0;
	
	Escribir "Digite la dimension del vector";
	Leer d;
	
	Subindice = d - 1
	
	Dimension Vector(d);
	
	Para i <- 0 Hasta d - 1 Hacer
		
		Vector(i) = Aleatorio(1, 3)
		
	FinPara
	
	Para i <- 0 Hasta d - 1 Con Paso 1 Hacer
		
		Escribir Sin Saltar " [ ", Vector(i), " ] "
		
	FinPara
	
	Escribir " "
	
	Escribir Sin Saltar "La sumatoria de todos los valores del Vector sera de: ";
	
	Escribir MultiplicacionN(Vector, Subindice)
	
FinAlgoritmo

Funcion Multiplicacion <- MultiplicacionN(Vector, Subindice)
	
	Definir Multiplicacion Como Real;
	
	Multiplicacion = 1;
	
	Si Subindice = 0 Entonces
		
		Multiplicacion = Multiplicacion * Vector(Subindice)
		
	SiNo
		
		Multiplicacion = Vector(Subindice)
		
		Multiplicacion = Multiplicacion * MultiplicacionN(Vector, Subindice - 1)
		
	FinSi	
	
FinFuncion


