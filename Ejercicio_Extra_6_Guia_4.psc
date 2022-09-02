Algoritmo Ejercicio_Extra_6_Guia_4
	
	Definir Vector Como Real
	
	Definir d Como Real
	
	Definir Diferencia Como Real
	
	Definir Max Como Real
	
	Definir Nro Como Real;
	
	Definir Min Como Real
	
	Definir i Como Real
	
	Nro = 0;
	
	i = 0;
	
	Diferencia = 0;
	
	Min = 9999;
	
	Max = 0;
	
	d = 0;
	
	Escribir "Digite la dimension del vector";
	Leer d;
	
	Dimension Vector(d)
	
	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
		
		Escribir "Digite un numero"
		Leer Nro;
		
		Vector(i) = Nro;
		
		Si Nro > Max Entonces
			
			Max =  Nro
			
		FinSi
		
		Si Nro < Min Entonces
			
			Min = Nro
			
		FinSi
		
	FinPara
	
	Diferencia = Max - Min
	
	Para i <- 0 Hasta d - 1 Con Paso 1 Hacer
		
		Escribir Sin Saltar " [ ", Vector(i), " ] "
		
	FinPara
	
	Escribir " "
	
	Escribir "La diferencia entre el numero mas grande y el numero mas chico guardado en el vector es de: ", Diferencia;
	
	
FinAlgoritmo
