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
	
	Definir representante1, representante2, representante3 Como Real;
	Definir totalVentas, d, dtv Como Entero;
	
	d = 6
	dtv = d - 1
	
	Dimension representante1(d);
	Dimension representante2(d);
	Dimension representante3(d);
	Dimension totalVentas(dtv);
	
	Escribir " ---------------- Representante 1 ---------------- ";
	
	rellenar(representante1,d);
	representante1(d - 1) = sumatoriaSemanal(representante1, d - 2);
	
	Escribir " ---------------- Representante 2 ---------------- ";
	
	rellenar(representante2,d);
	representante2(d - 1) = sumatoriaSemanal(representante2, d - 2);
	
	Escribir " ---------------- Representante 3 ---------------- ";
	
	rellenar(representante3,d);
	representante3(d-1) = sumatoriaSemanal(representante3, d - 2);
	
	Escribir " -------------------------------------------- ";
	
	Escribir "                  Norte  |  Sur  |   Este  |  Oeste  |  Centro |  Total Semana |";
	Escribir sin saltar "Representante 1";
	print(representante1, d);
	Escribir sin saltar "Representante 2";
	print(representante2, d);
	Escribir sin saltar "Representante 3";
	print(representante3, d);
	Escribir Sin Saltar "Ventas / Zona  ";
	totalVentas(totalVentas, representante1, representante2, representante3, d, dtv);
	print2(totalVentas, dtv);
FinAlgoritmo

SubProceso totalVentas(totalVentas Por Referencia, representante1, representante2, representante3, d, dtv)
	Definir i Como Entero;
	
	Para i = 0 Hasta dtv - 1 Con Paso 1 Hacer
		totalVentas(i) = representante1(i) + representante2(i) + representante3(i); 
	FinPara
FinSubProceso

Funcion suma <- sumatoriaSemanal(representante_ , d)
	Definir suma Como Entero;
	
	suma = 0;
	
	Si d = 0 Entonces
		suma = representante_(d);
	SiNo
		suma = representante_(d);
		suma = suma + sumatoriaSemanal(representante_ , d - 1);
	FinSi
FinFuncion

SubProceso print(representante_, d)
	Definir i Como Entero;
	
	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
		Escribir Sin Saltar "  [ ", representante_(i)," ]  |";
	FinPara
	
	Escribir "";
FinSubProceso

SubProceso rellenar(representante_ Por Referencia, d)
	Definir i, nro Como Entero;
	
	nro = 0;
	
	Para i = 0 Hasta d  Hacer
		Segun i hacer
			0:
				Escribir "Digite la cantidad de ventas que realizo el representante en la zona Norte";
				Leer nro;
				
				representante_(i) = nro;
			
			1:
				Escribir "Digite la cantidad de ventas que realizo el representante en la zona Sur";
				Leer nro;
				
				representante_(i) = nro;
			
			2:
				Escribir "Digite la cantidad de ventas que realizo el representante en la zona Este";
				Leer nro;
				
				representante_(i) = nro;
			
			3:	
				
				Escribir "Digite la cantidad de ventas que realizo el representante en la zona Oeste";
				Leer nro;
				
				representante_(i) = nro;
			
			4:
				Escribir "Digite la cantidad de ventas que realizo el representante en la zona Centro";
				Leer nro;
				
				representante_(i) = nro;
			
			5:
				representante_(i) = 0;
			
			De Otro Modo:
				
		FinSegun
	FinPara
FinSubProceso

SubProceso print2(representante_, dtv)
	Definir i Como Entero;
	
	Para i = 0 Hasta dtv - 1 Con Paso 1 Hacer
		Escribir Sin Saltar "  [ ", Representante_(i)," ]  |";
	FinPara
	
	Escribir "";
FinSubProceso