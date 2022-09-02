Algoritmo Ejercicio_Extra_2_Guia_4
	//	Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
	//	usuario y muestre por pantalla el promedio de la suma de todos los valores ingresados.
	
	Definir vector, num, prom Como Real;
	Definir d, i, suma Como Entero;
	
	prom = 0;
	num = 0;
	suma = 0;
	
	Escribir "Digite la dimension del Vector"
	Leer d;
	
	Dimension vector(d);
	
	Para i <- 0 Hasta d - 1 Con Paso 1 Hacer
		Escribir "Digite un numero";
		Leer num;
		
		vector(i) = num;
		suma = suma + num;
	FinPara
	
	prom = suma/d;
	
	Escribir "El promedio de los numeros ingresados en el vector es de: ", prom;
FinAlgoritmo
