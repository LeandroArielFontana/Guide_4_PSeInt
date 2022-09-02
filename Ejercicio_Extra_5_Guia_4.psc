Algoritmo Ejercicio_Extra_5_Guia_4
	Definir vector, palabra, letra, nuevoCaracter Como Caracter;
	Definir posicion, aux, i, d Como Entero;
	
	d = 20;
	aux = 0;
	nuevoCaracter = "";
	letra = "";
	posicion = 0;
	
	Dimension vector(d);
	
	Escribir "Digite una frase o palabra de no mas 20 caracteres";
	Leer palabra;
	
	Si Longitud(palabra) <= 20 Entonces
		Para i = 0 Hasta d - 1 Con Paso 1 Hacer
			letra = Subcadena(palabra, i, i);
			vector(i) = letra;
		FinPara
	SiNo
		Escribir "La palabra o frase ingresada supera los 20 caracteres";
	FinSi
	
	Escribir "Digite el caracter y luego la posicion en el que desea ver si se puede agregar (Del 0 al 19)";
	Leer nuevoCaracter, Posicion;
	
	Si vector(posicion) = " " Entonces
		vector(posicion) = nuevoCaracter;
		
		Escribir "El nuevo vector sera: ";
		
		Para i = 0 Hasta d - 1 Con Paso 1 hacer
			Escribir sin saltar " [ ", vector(i) ," ] ";
		FinPara
	SiNo
		Para i <- aux Hasta d - 1 Con Paso 1 Hacer
			Si i = posicion Entonces
				vector(i) = nuevoCaracter;
				aux = i + 1;
			SiNo
				Si aux = 0 Entonces
					letra = Subcadena(palabra, aux , aux);
				SiNo
					letra = Subcadena(palabra, aux - 1 , aux - 1);
					vector(i) = letra;
					aux = aux + 1;
				FinSi
			FinSi
		FinPara
		
		Para i = 0 Hasta d - 1 Con Paso 1 hacer
			Escribir sin saltar " [ ", vector(i) ," ] ";
		FinPara
	FinSi
FinAlgoritmo
