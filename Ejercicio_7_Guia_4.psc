Algoritmo Ejercicio_7_Guia_4
////		Crear un subproceso que rellene dos arreglos de tama�o n, con n�meros aleatorios.
////		Despu�s, hacer una funci�n que reciba los dos arreglos y diga si todos sus valores son 
////		iguales o no. La funci�n debe devolver el resultado de est� validaci�n, para mostrar el 
////		mensaje en el algoritmo. Nota: recordar el uso de las variables de tipo l�gico.
	
	Definir vector1, vector2, d Como Real;
	Definir min, max Como Entero;
	
	min = 0;
	max = 0;
	d = 0;
	
	Escribir "Digite la dimension de ambos vectores";
	Leer d;
	
	Escribir "Digite un Minimo y un Maximo para el rango del vector";
	Leer min, max;
	
	Dimension vector1(d);
	Dimension vector2(d);
	
	rellenar(vector1, d, min, max);
	rellenar(vector2, d, min, max);
	
	Si validar(vector1, vector2, d) == Verdadero Entonces
		Escribir "Los vectores poseen los mismos valores";
	SiNo
		Escribir "Los vectores no poseen los mismos valores";
	FinSi
FinAlgoritmo

SubProceso rellenar(vector Por Referencia, d, min, max)
	Definir i Como Entero;
	
	Para i <- 0 Hasta d - 1 Con Paso 1 Hacer
		vector(i) = Aleatorio(min, max);
	FinPara
FinSubProceso

Funcion validacion <- validar(vector1, vector2, d)
	Definir validacion Como Logico;
	Definir conteo, i Como Entero;

	validacion = Falso;
	conteo = 0;
	
	Para i <- 0 hasta d - 1 Con Paso 1 Hacer
		Si vector1(i) = vector2(i) Entonces
			conteo = conteo + 1;
		FinSi
	FinPara
	
	Si conteo = d Entonces
		validacion = Verdadero;
	SiNo
		validacion = Falso;
	FinSi
FinFuncion
	