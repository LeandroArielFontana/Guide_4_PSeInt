Algoritmo Ejercicio_Extra_4_Guia_4
	
	//	Crear un vector que contenga 100 notas de 100 supuestos estudiantes, con valores entre
	//	0 y 20 generadas aleatoriamente mediante el uso de la función azar() o aleatorio() de
	//	PseInt. Luego, de acuerdo a las notas contenidas, el programa debe indicar cuántos
	//	estudiantes son:
	
	//	a) Deficientes 0-5
	//	b) Regulares 6-10
	//	c) Buenos 11-15
	//	d) Excelentes 16-20
	
	Definir Vector Como Entero;
	
	Definir d Como Entero;
	
	Definir i Como Entero;
	
	Definir Contador_D Como Entero
	
	Definir Contador_R Como Entero;
	
	Definir Contador_B Como Entero;
	
	Definir Contador_E como entero;
	
	Contador_B = 0;
	
	Contador_D = 0;
	
	Contador_E = 0;
	
	Contador_R = 0;
	
	i = 0;
	
	d = 100;
	
	Dimension  Vector(d)
	
	Para i <- 0 Hasta d - 1 Con Paso 1 Hacer
		
		Vector(i) = Aleatorio(0, 20)
		
		Si Vector(i) <= 5 Entonces
			
			Contador_D = Contador_D + 1;
			
		SiNo
			
			Si Vector(i) >= 6 & Vector(i) <= 10 Entonces
				
				Contador_R = Contador_R + 1;
				
			SiNo
				
				Si Vector(i) >= 11 & Vector(i) <= 15 Entonces
					
					Contador_B = Contador_B + 1
					
				SiNo
					
					Si Vector(i) >= 16 & Vector(i) <= 20 Entonces
						
						Contador_E = Contador_E + 1;
						
					FinSi
					
				FinSi
				
			FinSi
			
		FinSi
		
	FinPara
	
	Escribir "Habra una cantidad de: " Contador_D, " Alumnos Deficientes";
	
	Escribir "Habra una cantidad de: " Contador_R, " Alumnos Regulares";
	
	Escribir "Habra una cantidad de: " Contador_B, " Alumnos Buenos";
	
	Escribir "Habra una cantidad de: " Contador_E, " Alumnos Excelentes";
	
FinAlgoritmo
