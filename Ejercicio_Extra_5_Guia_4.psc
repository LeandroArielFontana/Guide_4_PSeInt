Algoritmo Ejercicio_Extra_5_Guia_4
	
	Definir Vector Como Caracter;
	
	Definir Palabra Como Caracter;
	
	Definir Letra Como Caracter;
	
	Definir Nuevo_Caracter Como Caracter;
	
	Definir Posicion Como Entero;
	
	Definir Aux Como Entero;
	
	Definir i Como Entero;
	
	Definir d Como Entero;
	
	d = 20
	
	Aux = 0;
	
	Nuevo_Caracter = "";
	
	Letra = "";
	
	Palabra = "";
	
	Posicion = 0;
	
	Dimension Vector(d)
	
	Escribir "Digite una frase o palabra de no mas 20 caracteres"
	Leer Palabra;
	
	Si Longitud(Palabra) <= 20 Entonces
		
		Para i = 0 Hasta d - 1 Con Paso 1 Hacer
			
			Letra = Subcadena(Palabra, i, i)
			
			Vector(i) = Letra
			
		FinPara
		
	SiNo
		
		Escribir "La palabra o frase ingresada supera los 20 caracteres"
		
	FinSi
	
	Escribir "Digite el caracter y luego la posicion en el que desea ver si se puede agregar (Del 0 al 19)";
	Leer Nuevo_Caracter, Posicion;
	
	Si Vector(Posicion) = " " Entonces
		
		Vector(Posicion) = Nuevo_Caracter;
		
		Escribir "El nuevo vector sera: "
		
		Para i = 0 Hasta d - 1 Con Paso 1 hacer
			
			Escribir sin saltar " [ ", Vector(i) ," ] ";
			
		FinPara
		
	SiNo
		
		Para i <- Aux Hasta d - 1 Con Paso 1 Hacer
			
			Si i = Posicion Entonces
				
				Vector(i) = Nuevo_Caracter;
				
				Aux = i + 1
				
			SiNo
				
				Si Aux = 0 Entonces
					
					Letra = Subcadena(Palabra, Aux , Aux)
					
				SiNo
					
					Letra = Subcadena(Palabra, Aux - 1 , Aux - 1)
					
					Vector(i) = Letra
					
					Aux = Aux + 1
					
				FinSi
				
				
				
			FinSi
			
			
			
		FinPara
		
		Para i = 0 Hasta d - 1 Con Paso 1 hacer
			
			Escribir sin saltar " [ ", Vector(i) ," ] ";
			
		FinPara
		
		
	FinSi
	
FinAlgoritmo
