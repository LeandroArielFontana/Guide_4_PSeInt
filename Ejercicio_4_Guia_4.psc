Algoritmo Ejercicio_4_Guia_4
	///	Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
	///	usuario. A continuación, se deberá crear una función que reciba el vector y devuelva el
	///	valor más grande del vector.
	
	Definir Vector, d, i, num Como Real;	

	Escribir "Digite la dimension del vector";
	Leer d;
	
	Dimension vector(d)
	
	Escribir "Digite los numeros para guardar en el array";
	
	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
		Escribir "Digite un numero que quedara guardado";
		Leer num;
		
		vector(i) = num;
	FinPara

	Escribir "El numero mas grande en el array es: ", mayorArray(vector, d);
FinAlgoritmo

Funcion mayor <- mayorArray(vector, d)
	Definir mayor, i Como Real;

	mayor = 0;
	
	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
		Si mayor < vector(i) Entonces
			mayor = vector(i)
		FinSi
	FinPara
FinFuncion
	