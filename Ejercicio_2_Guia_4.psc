Algoritmo Ejercicio_2_Guia_4
	///	Realizar un programa que lea 10 números reales por teclado, los almacene en un arreglo
	///	y muestre por pantalla la suma, resta y multiplicación de todos los números ingresados
	///	al arreglo.
	
	Definir n, suma, resta, vector Como Real;
	Definir i Como Entero;
	
	Dimension Vector(10)
	
	suma = 0;
	resta = 0;
	multiplicacion = 1;
	i = 0;
	
	Escribir "Digite 10 numeros reales"
	
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		Leer n
		
		vector(i) = n		
	FinPara
	
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		suma = suma + vector(i)
	FinPara
	
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		resta = resta - vector(i)
	FinPara
	
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		multiplicacion = multiplicacion * vector(i)
	FinPara
	
	Escribir "La suma va a resultar: ", suma;
	Escribir "La resta va a resultar: ", resta;
	Escribir "La multiplicacion va a resultar: ", multiplicacion;
FinAlgoritmo
