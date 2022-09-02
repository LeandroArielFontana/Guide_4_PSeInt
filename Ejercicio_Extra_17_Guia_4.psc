Algoritmo Ejercicio_Extra_17_Guia_4
	
	//	Una distribuidora de Nescafé tiene 4 representantes que viajan por toda la Argentina 
	//	ofreciendo sus productos. Para tareas administrativas el país está dividido en cinco 
	//	zonas: Norte, Sur, Este, Oeste y Centro. Mensualmente almacena sus datos y obtiene 
	//	distintas estadísticas sobre el comportamiento de sus representantes en cada zona. Se 
	//	desea hacer un programa que lea el monto de las ventas de los representantes en cada 
	//	zona y calcule luego: 
	
	//		a) el total de ventas de una zona introducida por teclado
	//		b) el total de ventas de un vendedor introducido por teclado en cada una de las zonas 
	//		c) el total de ventas de todos los representantes
	
	Definir Representante_1 Como Real;
	
	Definir Representante_2 Como Real;
	
	Definir Representante_3 Como Real;
	
	Definir Total_Ventas Como Entero;
	
	Definir d Como Entero
	
	Definir dtv Como Entero
	
	d = 6
	
	dtv = d - 1
	
	Dimension Representante_1(d)
	Dimension Representante_2(d)
	Dimension Representante_3(d)
	Dimension Total_Ventas(dtv)
	
	
	Escribir " ---------------- Representante 1 ---------------- ";
	
	Rellenar(Representante_1,d)
	
	Representante_1(d-1) = SumatoriaSemanal(Representante_1, d - 2)
	
	Escribir " ---------------- Representante 2 ---------------- ";
	
	Rellenar(Representante_2,d)
	
	Representante_2(d-1) = SumatoriaSemanal(Representante_2, d - 2)
	
	Escribir " ---------------- Representante 3 ---------------- ";
	
	Rellenar(Representante_3,d)
	
	Representante_3(d-1) = SumatoriaSemanal(Representante_3, d - 2)
	
	Escribir " -------------------------------------------- ";
	
	Escribir "                  Norte  |  Sur  |   Este  |  Oeste  |  Centro |  Total Semana |"
	
	Escribir sin saltar "Representante 1"
	
	Print(Representante_1, d)
	
	Escribir sin saltar "Representante 2"
	
	Print(Representante_2, d)
	
	Escribir sin saltar "Representante 3"
	
	Print(Representante_3, d)
	
	Escribir Sin Saltar "Ventas / Zona  "
	
	TotalVentas(Total_Ventas, Representante_1, Representante_2, Representante_3, d, dtv)
	
	Print2(Total_Ventas, dtv)
	
FinAlgoritmo

SubProceso TotalVentas(Total_Ventas Por Referencia, Representante_1, Representante_2, Representante_3, d, dtv)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta dtv - 1 Con Paso 1 Hacer
		
		Total_Ventas(i) = Representante_1(i) + Representante_2(i) + Representante_3(i) 
		
	FinPara
	
FinSubProceso

Funcion Suma <- SumatoriaSemanal(Representante_ , d)
	
	Definir Suma Como Entero
	
	Suma = 0
	
	Si d = 0 Entonces
		
		Suma = Representante_(d)
		
	SiNo
		
		Suma = Representante_(d)
		
		Suma = Suma + SumatoriaSemanal(Representante_ , d-1)
		
	FinSi
	
FinFuncion

SubProceso Print(Representante_, d)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
		
		Escribir Sin Saltar "  [ ", Representante_(i)," ]  |"
		
	FinPara
	
	Escribir ""
	
FinSubProceso

SubProceso Rellenar(Representante_ Por Referencia, d)
	
	Definir i Como Entero;
	
	Definir Nro Como Entero
	
	Nro = 0
	
	Para i = 0 Hasta d  Hacer
		
		Segun i hacer
			
			0:
				
				Escribir "Digite la cantidad de ventas que realizo el representante en la zona Norte";
				Leer Nro
				
				Representante_(i) = Nro	
			1:
				Escribir "Digite la cantidad de ventas que realizo el representante en la zona Sur";
				Leer Nro
				
				Representante_(i) = Nro
				
			2:
				Escribir "Digite la cantidad de ventas que realizo el representante en la zona Este";
				Leer Nro
				
				Representante_(i) = Nro
				
			3:	
				
				Escribir "Digite la cantidad de ventas que realizo el representante en la zona Oeste";
				Leer Nro
				
				Representante_(i) = Nro
				
				
			4:
				
				Escribir "Digite la cantidad de ventas que realizo el representante en la zona Centro"
				Leer Nro
				
				Representante_(i) = Nro
				
			5:
				
				Representante_(i) = 0
				
			De Otro Modo:
				
				
		FinSegun
		
	FinPara
	
FinSubProceso

SubProceso Print2(Representante_, dtv)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta dtv - 1 Con Paso 1 Hacer
		
		Escribir Sin Saltar "  [ ", Representante_(i)," ]  |"
		
	FinPara
	
	Escribir ""
	
FinSubProceso