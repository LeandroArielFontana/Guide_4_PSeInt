Algoritmo Ejercicio_Extra_7_Guia_4
	
	//	Crear un programa que ordene un vector lleno de números enteros aleatorios, de menor
	//	a mayor. Nota: investigar el ordenamiento burbuja.
	
	Definir Vector Como Real;
	
	Definir i Como Entero;
	
	Definir d Como Entero;
	
	Definir k Como Entero;
	
	Definir j Como Entero;
	
	Definir Aux Como Real;
	
	k = 0;
	
	d = 0;
	
	Aux = 0;
	
	Escribir "Digite la dimension del vector"
	Leer d;
	
	Dimension Vector(d);
	
	Para i <- 0 Hasta d - 1 Hacer
		
		Vector(i) = Aleatorio(0, 3)
		
	FinPara
	
	Para i <- 0  Hasta d - 2 Con Paso 1 Hacer
		
		Para j <- 0 Hasta d - 2 Con Paso 1 Hacer
			
			Si Vector(j) > Vector(j + 1) Entonces
				
				Aux = Vector(j)
				
				Vector(j) = Vector(j + 1)
				
				Vector(j + 1) = Aux
				
			FinSi
			
		FinPara		
		
	FinPara
	
	Para i <- 0 Hasta d - 1 Con Paso 1 Hacer
		
		Escribir Sin Saltar " [ ", Vector(i), " ] "
		
	FinPara
	
FinAlgoritmo
