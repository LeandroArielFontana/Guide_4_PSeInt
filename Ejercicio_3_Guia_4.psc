Algoritmo Ejercicio_3_Guia_4
	///	Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
	///	usuario. A continuación, se debe buscar un elemento dentro del arreglo (el número a
	///	buscar también debe ser ingresado por el usuario). El programa debe indicar la posición
	///	donde se encuentra el valor. En caso que el número se encuentre repetido dentro del
	///	arreglo se deben imprimir todas las posiciones donde se encuentra ese valor.
	///	Finalmente, en caso que el número a buscar no está adentro del arreglo se debe mostrar
	///	un mensaje.
	
	Definir vector, d, i Como Entero;
	Definir value, num Como Real;
	
	Escribir "Digite la cantidad de valores que va a ingresar";
	Leer d;
	
	Dimension vector(d);
	
	Escribir "Digite los numeros para guardar en el array";
	
	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
		Escribir "Digite un numero que quedara guardado";
		Leer num;
		
		vector(i) = num;
	FinPara
	
	Escribir "Digite el numero del valor a buscar";
	Leer value;
	
	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
		Si vector(i) =  value Entonces
			Escribir "El valor ", value, " Se encuentra en la posicion ", i, " Del Array";			
		SiNo
			Escribir "El valor ", value, " No se encuentra en la posicion ", i, " Del Array"
		FinSi
	FinPara
FinAlgoritmo
