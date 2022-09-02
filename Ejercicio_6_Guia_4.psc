Algoritmo Ejercicio_6_Guia_4
	Definir vector, palabra, letra, nuevoCaracter Como Caracter;
	Definir posicion, d, i Como Entero;
	
	d = 20;
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
	Leer nuevoCaracter, posicion;
	
	Si vector(posicion) = " " Entonces
		vector(posicion) = nuevoCaracter;
		
		Escribir "El nuevo vector sera: ";
		
		Para i = 0 Hasta d - 1 Con Paso 1 hacer
			Escribir sin saltar " [ ", Vector(i) ," ] ";
		FinPara
	SiNo
		Escribir "No se puede ingresar el caracter correspondiente ya que esta ocupado!";
	FinSi
FinAlgoritmo
