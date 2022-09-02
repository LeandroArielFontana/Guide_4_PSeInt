Algoritmo Ejercicio_Extra_8_Guia_4
	
	//	Programe una función recursiva que calcule la suma de un arreglo de números enteros.
	
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
		
		Vector(i) = Aleatorio(0, 3)
		
	FinPara
	
	Para i <- 0 Hasta d - 1 Con Paso 1 Hacer
		
		Escribir Sin Saltar " [ ", Vector(i), " ] "
		
	FinPara
	
	Escribir " "
	
	Escribir Sin Saltar "La sumatoria de todos los valores del Vector sera de: ";
	
	Escribir SumatoriaN(Vector, Subindice)
	
FinAlgoritmo

Funcion Suma <- SumatoriaN(Vector, Subindice)
	
	Definir Suma Como Real;
	
	Suma = 0;
	
	Si Subindice = 0 Entonces
		
		Suma = Suma + Vector(Subindice)
		
	SiNo
		
		Suma = Vector(Subindice)
		
		Suma = Suma + SumatoriaN(Vector, Subindice - 1)
		
	FinSi	
	
FinFuncion


	