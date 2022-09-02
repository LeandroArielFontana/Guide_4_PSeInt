Algoritmo sin_titulo
	
	Definir Matriz_Inicial Como Caracter
	
	Definir f Como entero;
	
	Definir c Como Entero;
	
	Escribir "Digite la dimension del laberinto (Filas y Columnas)"
	Leer f
	
	c = f
	
	Dimension Matriz_Inicial(f + 1, c + 1)
	
	Rellenar(Matriz_Inicial,f,c)
	
FinAlgoritmo

SubProceso Rellenar(Matriz_Inicial, f, c)
	
	Definir i Como Entero;
	
	Definir j Como Entero;
	
	Para i = 0 hasta f Con Paso 1 Hacer
		
		Para j = 0 Hasta c Con Paso 1 Hacer
			
			Si i = 0 | j = 0 Entonces
				
				Matriz_Inicial(i,j) = " X "
				
			SiNo
				
				Si i = f | j = f Entonces
					
					Matriz_Inicial(i,j) = " X "
					
				SiNo
					
					Si i = 1 & j = 1 Entonces
						
						Matriz_Inicial(i,j) = " 2 "
						
					SiNo
						
						Si i = f - 1 & j = f - 1 Entonces
							
							Matriz_Inicial(i,j) = " 0 "
							
						SiNo
							
							Si (i = Aleatorio(3, f -1) | j = Aleatorio(1, f - 2)) & (i = Aleatorio(3, f -2) | j = Aleatorio(3, f - 3)) Entonces
								
								Matriz_Inicial(i,j) = " X "
								
							SiNo
								
								Matriz_Inicial(i,j) = " 0 "
								
							FinSi
							
						FinSi
						
					FinSi
					
				FinSi
				
			FinSi
			
		FinPara
		
	FinPara
	
	Para i = 0 hasta f Con Paso 1 Hacer
		
		Para j = 0 Hasta c Con Paso 1 Hacer
			
			Escribir Sin Saltar "  ", Matriz_Inicial(i,j), "  "
			
		FinPara
		
		Escribir ""
		
	FinPara
	
FinSubProceso
	