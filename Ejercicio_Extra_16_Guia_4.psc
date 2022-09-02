Algoritmo Ejercicio_Extra_16_Guia_4
	//	Una empresa de venta de productos por correo desea realizar una estadística de las
	//	ventas realizadas de cada uno de sus productos a lo largo de una semana. Distribuya
	//	luego 5 productos en los 5 días hábiles de la semana. Se desea conocer:
	
	//	a. Total de ventas por cada día de la semana.
	//	b. Total de ventas de cada producto a lo largo de la semana.
	//	c. El producto más vendido en cada semana.
	//	d. El nombre, el día de la semana y la cantidad del producto más vendido.
	
	Definir producto_1, producto_2, producto_3, producto_4, producto_5 Como Real;
	Definir totalVentas, d, dtv, i Como Entero;
	
	d = 6;
	dtv = d - 1;
	
	Dimension producto_1(d);
	Dimension producto_2(d);
	Dimension producto_3(d);
	Dimension producto_4(d);
	Dimension producto_5(d);
	Dimension totalVentas(dtv);
	
	Escribir " ---------------- Producto 1 ---------------- ";
	
	rellenar(producto_1,d);
	producto_1(d-1) = sumatoriaSemanal(producto_1, d - 2);
	
	Escribir " ---------------- Producto 2 ---------------- ";
	
	rellenar(producto_2,d);
	producto_2(d-1) = sumatoriaSemanal(producto_2, d - 2);
	
	Escribir " ---------------- Producto 3 ---------------- ";
	
	rellenar(producto_3,d);
	producto_3(d-1) = sumatoriaSemanal(producto_3, d - 2);
	
	Escribir " ---------------- Producto 4 ---------------- ";
	
	rellenar(producto_4,d);
	producto_4(d-1) = sumatoriaSemanal(producto_4, d - 2);
	
	Escribir " ---------------- Producto 5 ---------------- ";
	
	rellenar(Producto_5,d);
	producto_5(d-1) = sumatoriaSemanal(producto_5, d - 2);
	
	Escribir " -------------------------------------------- ";
	Escribir "  Lunes  | Martes   |  Mier. |  Jueves  |  Viernes |  Total Semana |";
	
	print(producto_1, d);
	print(producto_2, d);
	print(producto_3, d);
	print(producto_4, d);
	print(producto_5, d);
	
	Escribir " ---------------- Total de Ventas por Dia ---------------- ";
	
	totalVentas(totalVentas, producto_1, producto_2, producto_3, producto_4, producto_5, d, dtv);
	productoDeLaSemana(producto_1, producto_2, producto_3, producto_4, producto_5, d);
	ubicacion(producto_1, producto_2, producto_3, producto_4, producto_5, d);
FinAlgoritmo

SubProceso rellenar(producto_ Por Referencia, d)
	Definir i, nro Como Entero;
	
	nro = 0;
	
	Para i = 0 Hasta d  Hacer
		Segun i hacer
			0:
				Escribir "Digite la cantidad de ventas que hizo del producto el dia Lunes";
				Leer nro
				
				producto_(i) = nro	
			
			1:
				Escribir "Digite la cantidad de ventas que hizo del producto el dia Martes";
				Leer Nro;
				
				producto_(i) = nro;
			
			2:
				Escribir "Digite la cantidad de ventas que hizo del producto el dia Miercoles";
				Leer nro;
				
				producto_(i) = nro;
			
			3:	
				Escribir "Digite la cantidad de ventas que hizo del producto el dia Jueves";
				Leer Nro;
				
				producto_(i) = nro;
			
			4:
				Escribir "Digite la cantidad de ventas que hizo del producto el dia Viernes";
				Leer Nro;
				
				producto_(i) = nro;
			
			5:
				producto_(i) = 0;
			
			De Otro Modo:	
		FinSegun
	FinPara
FinSubProceso

SubProceso print(producto_, d)
	Definir i Como Entero;
	
	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
		Escribir Sin Saltar "  [ ", producto_(i)," ]  |"
	FinPara
	
	Escribir ""
FinSubProceso

SubProceso print2(producto_, dtv)
	Definir i Como Entero;
	
	Para i = 0 Hasta dtv - 1 Con Paso 1 Hacer
		Escribir Sin Saltar " [ ", producto_(i)," ] ";
	FinPara
	
	Escribir "";
FinSubProceso

SubProceso totalVentas(totalVentas Por Referencia, producto_1, producto_2, producto_3, producto_4, producto_5, d, dtv)
	Definir i Como Entero;
	
	Para i = 0 Hasta dtv - 1 Con Paso 1 Hacer
		totalVentas(i) = producto_1(i) + producto_2(i) + producto_3(i) + producto_4(i) +  producto_5(i)
	FinPara
FinSubProceso

Funcion suma <- sumatoriaSemanal(producto_ , d)
	Definir suma Como Entero
	
	suma = 0
	
	Si d = 0 Entonces
		suma = producto_(d)
	SiNo
		suma = producto_(d)
		suma = suma + sumatoriaSemanal(producto_ , d-1)
	FinSi
FinFuncion

SubProceso productoDeLaSemana(producto_1, producto_2, producto_3, producto_4, producto_5, d)
	Definir vectorDeVecotres, mayor, aux, i Como Entero;

	mayor = 0;
	aux = 0;
	
	Dimension vectorDeVecotres(5);
	
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		Segun i hacer
			0:
				vectorDeVecotres(i) = producto_1(5);
			
			1:
				vectorDeVecotres(i) = producto_2(5);
			
			2:
				vectorDeVecotres(i) = producto_3(5);
			
			3:
				vectorDeVecotres(i) = producto_4(5);
			
			4:
				vectorDeVecotres(i) = producto_5(5);
		FinSegun
	FinPara
	
	i = 0;
	
	Para i = 0 Hasta 4 Hacer
		Si Mayor < Vector_De_Vecotres(i) Entonces
			Mayor = Vector_De_Vecotres(i);
			aux = i;
		FinSi
	FinPara
	
	Si aux = 0 Entonces
		Escribir "El producto 1 fue el mas vendido de la semana";
	SiNo
		Si aux = 1 Entonces
			Escribir "El producto 2 fue el mas vendido de la semana";
		SiNo
			Si aux = 2 Entonces
				Escribir "El producto 3 fue el mas vendido de la semana";
			SiNo
				Si aux =  3 Entonces
					Escribir "El producto 4 fue el mas vendido de la semana";
				SiNo
					Si aux = 4 Entonces
						Escribir "El producto 5 fue el mas vendido de la semana";
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinSubProceso

SubProceso ubicacion(producto_1, producto_2, producto_3, producto_4, producto_5, d)
	Definir matrizVectores, i, j, max, dia, producto Como Entero;
	
	Dimension matrizVectores(5,5);
	
	max = 0;
	
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		Si i = 0 Entonces
			Para j = 0 Hasta 4 Con Paso 1 Hacer
				matrizVectores(i,j) = producto_1(j);
			FinPara
		FinSi
		
		Si i = 1 Entonces
			Para j = 0 Hasta 4 Con Paso 1 Hacer
				matrizVectores(i,j) = producto_2(j);
			FinPara
		FinSi
		
		Si i = 2 Entonces
			Para j = 0 Hasta 4 Con Paso 1 Hacer
				matrizVectores(i,j) = producto_3(j);
			FinPara
		FinSi
		
		Si i = 3 Entonces
			Para j = 0 Hasta 4 Con Paso 1 Hacer
				matrizVectores(i,j) = producto_4(j);
			FinPara
		FinSi
		
		Si i = 4 Entonces
			Para j = 0 Hasta 4 Con Paso 1 Hacer
				matrizVectores(i,j) = producto_5(j);
			FinPara
		FinSi
	FinPara
	
	Escribir "";
	
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		Para j = 0 Hasta 4 Con Paso 1 Hacer
			Si matrizVectores(i, j) > max Entonces
				max = matrizVectores(i, j);
				dia = j;
				producto = i;
			FinSi
		FinPara
	FinPara
	
	Segun producto Hacer
		0:
			Segun dia hacer
				0:
					Escribir "Con un total de: ", max, " Productos vendidos, el Producto_1, Es el que mas fue vendido en toda la semana, el dia : Lunes "; 
					
				1:
					Escribir "Con un total de: ", max, " Productos vendidos, el Producto_1, Es el que mas fue vendido en toda la semana, el dia : Martes ";
					
				2:
					Escribir "Con un total de: ", max, " Productos vendidos, el Producto_1, Es el que mas fue vendido en toda la semana, el dia : Miercoles ";
					
				3:
					Escribir "Con un total de: ", max, " Productos vendidos, el Producto_1, Es el que mas fue vendido en toda la semana, el dia : Jueves ";
					
				4:
					Escribir "Con un total de: ", max, " Productos vendidos, el Producto_1, Es el que mas fue vendido en toda la semana, el dia : Viernes ";
			FinSegun
			
		1:
			Segun dia hacer
				0:
					Escribir "Con un total de: ", max, " Productos vendidos, el Producto_2, Es el que mas fue vendido en toda la semana, el dia : Lunes ";
					
				1:
					Escribir "Con un total de: ", max, " Productos vendidos, el Producto_2, Es el que mas fue vendido en toda la semana, el dia : Martes ";
					
				2:
					Escribir "Con un total de: ", max, " Productos vendidos, el Producto_2, Es el que mas fue vendido en toda la semana, el dia : Miercoles ";
					
				3:
					Escribir "Con un total de: ", max, " Productos vendidos, el Producto_2, Es el que mas fue vendido en toda la semana, el dia : Jueves ";
					
				4:
					Escribir "Con un total de: ", max, " Productos vendidos, el Producto_2, Es el que mas fue vendido en toda la semana, el dia : Viernes ";
			FinSegun
			
		2:
			Segun dia hacer
				0:
					Escribir "Con un total de: ", max, " Productos vendidos, el Producto_3, Es el que mas fue vendido en toda la semana, el dia : Lunes ";
					
				1:
					Escribir "Con un total de: ", max, " Productos vendidos, el Producto_3, Es el que mas fue vendido en toda la semana, el dia : Martes ";
					
				2:
					Escribir "Con un total de: ", max, " Productos vendidos, el Producto_3, Es el que mas fue vendido en toda la semana, el dia : Miercoles ";
					
				3:
					Escribir "Con un total de: ", max, " Productos vendidos, el Producto_3, Es el que mas fue vendido en toda la semana, el dia : Jueves ";
					
				4:
					Escribir "Con un total de: ", max, " Productos vendidos, el Producto_3, Es el que mas fue vendido en toda la semana, el dia : Viernes ";
			FinSegun
			
		3:
			Segun dia hacer
				0:
					Escribir "Con un total de: ", max, " Productos vendidos, el Producto_4, Es el que mas fue vendido en toda la semana, el dia : Lunes ";
					
				1:
					Escribir "Con un total de: ", max, " Productos vendidos, el Producto_4, Es el que mas fue vendido en toda la semana, el dia : Martes ";
					
				2:
					Escribir "Con un total de: ", max, " Productos vendidos, el Producto_4, Es el que mas fue vendido en toda la semana, el dia : Miercoles ";
					
				3:
					Escribir "Con un total de: ", max, " Productos vendidos, el Producto_4, Es el que mas fue vendido en toda la semana, el dia : Jueves ";
					
				4:
					Escribir "Con un total de: ", max, " Productos vendidos, el Producto_4, Es el que mas fue vendido en toda la semana, el dia : Viernes ";
			FinSegun
			
		4:
			Segun dia hacer
				0:
					Escribir "Con un total de: ", max, " Productos vendidos, el Producto_5, Es el que mas fue vendido en toda la semana, el dia : Lunes ";
					
				1:
					Escribir "Con un total de: ", max, " Productos vendidos, el Producto_5, Es el que mas fue vendido en toda la semana, el dia : Martes ";
					
				2:
					Escribir "Con un total de: ", max, " Productos vendidos, el Producto_5, Es el que mas fue vendido en toda la semana, el dia : Miercoles ";
					
				3:
					Escribir "Con un total de: ", max, " Productos vendidos, el Producto_5, Es el que mas fue vendido en toda la semana, el dia : Jueves ";
					
				4:
					Escribir "Con un total de: ", max, " Productos vendidos, el Producto_5, Es el que mas fue vendido en toda la semana, el dia : Viernes ";
			FinSegun
	FinSegun
FinSubProceso