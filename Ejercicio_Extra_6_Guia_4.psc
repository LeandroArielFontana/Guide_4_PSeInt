Algoritmo Ejercicio_Extra_6_Guia_4
	Definir vector, d, max, min, nro, i, diferencia Como Real;
	
	nro = 0;
	diferencia = 0;
	min = 9999;
	max = 0;
	
	Escribir "Digite la dimension del vector";
	Leer d;
	
	Dimension vector(d);
	
	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
		Escribir "Digite un numero";
		Leer nro;
		
		vector(i) = nro;
		
		Si nro > max Entonces
			max =  Nro;
		FinSi
		
		Si nro < min Entonces
			min = nro;
		FinSi
	FinPara
	
	diferencia = max - min;
	
	Para i <- 0 Hasta d - 1 Con Paso 1 Hacer
		Escribir Sin Saltar " [ ", vector(i), " ] ";
	FinPara
	
	Escribir " ";
	Escribir "La diferencia entre el numero mas grande y el numero mas chico guardado en el vector es de: ", Diferencia;
FinAlgoritmo
