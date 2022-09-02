Algoritmo Ejercicio_12_Guia_4
//	Rellenar una matriz, de 3 x 3, con una palabra de 9 de longitud, pedida por el usuario,
//	encontrando la manera de que la frase se muestre de manera continua en la matriz
	
	Definir matriz, palabra, aux Como Caracter;
	Definir f, c, i, j, k Como Entero;

	f = 3;
	c = 3;
	
	Dimension matriz(f, c)
	
	Escribir "Digite la palabra ( no mayor a 9 caracteres ) para meterla en una matriz de 3x3";
	Leer palabra;
	
	Si longitud(palabra) <= 9 Entonces
		Para i <- 0 Hasta f - 1 Con Paso 1 Hacer
			Para j <- 0 Hasta c - 1 Con Paso 1 Hacer
				aux = Subcadena(palabra, k, k);
				matriz(i, j) = aux
				k = k + 1;
			FinPara
		FinPara
		
		Para i <- 0 Hasta f - 1 Con Paso 1 Hacer
			Para j <- 0 Hasta c - 1 Con Paso 1 Hacer
				Escribir Sin Saltar " [ ", matriz(i, j), " ] "
			FinPara
			
			Escribir "";
		FinPara
	SiNo
		Escribir "La palabra contiene mas de 9 caracteres";
	FinSi
FinAlgoritmo
