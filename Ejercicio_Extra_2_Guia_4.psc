Algoritmo Ejercicio_Extra_2_Guia_4
	
	//	Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
	//	usuario y muestre por pantalla el promedio de la suma de todos los valores ingresados.
	
	Definir Vector Como Real;
	
	Definir d Como Entero;
	
	Definir i Como Entero;
	
	Definir Suma Como Entero;
	
	Definir Num Como Real;
	
	Definir Prom Como Real;
	
	Prom = 0;
	
	Num = 0;
	
	Suma = 0;
	
	i = 0;
	
	Escribir "Digite la dimension del Vector"
	Leer d;
	
	Dimension Vector(d);
	
	Para i <- 0 Hasta d - 1 Con Paso 1 Hacer
		
		Escribir "Digite un numero";
		Leer Num;
		
		Vector(i) = Num;
		
		Suma = Suma + Num;
		
	FinPara
	
	Prom = Suma / d
	
	Escribir "El promedio de los numeros ingresados en el vector es de: ", Prom;
	
FinAlgoritmo
