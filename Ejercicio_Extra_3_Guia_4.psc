Algoritmo Ejercicio_Extra_3_Guia_4
	
	//	Crear dos vectores que tengan el mismo tamaño (el tamaño se pedirá por teclado) y
	//	almacenar en uno de ellos nombres de personas como cadenas. En el segundo vector
	//	se debe almacenar la longitud de cada uno de los nombres (para ello puedes usar la
	//	función Longitud() de PseInt). Mostrar por pantalla cada uno de los nombres junto con su
	//	longitud.
	
	Definir vector1, nombre Como Caracter;
	Definir vector2, i, d Como Entero;
	
	Escribir "Digite el tamaño de los vectores";
	Leer d;
	
	Dimension vector1(d);
	Dimension vector2(d);
	
	Para i <- 0 Hasta d - 1 Con Paso 1 Hacer
		Escribir "Digite un nombre que se guardara en el vector 1";
		Leer Nombre;
		
		Vector1(i) = nombre;
		Vector2(i) = Longitud(nombre);
	FinPara
	
	Para i <- 0 Hasta d - 1 Con Paso 1 Hacer
		Escribir Sin Saltar " [ ", Vector1(i), " ] ";
	FinPara
	
	Escribir "";
	
	Para i <- 0 Hasta d - 1 Con Paso 1 Hacer
		Escribir Sin Saltar " [ ", Vector2(i), " ] ";
	FinPara
	
	Escribir "";
FinAlgoritmo
