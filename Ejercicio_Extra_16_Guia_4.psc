Algoritmo Ejercicio_Extra_16_Guia_4
	
	//	Una empresa de venta de productos por correo desea realizar una estadística de las
	//	ventas realizadas de cada uno de sus productos a lo largo de una semana. Distribuya
	//	luego 5 productos en los 5 días hábiles de la semana. Se desea conocer:
	
	//	a. Total de ventas por cada día de la semana.
	//	b. Total de ventas de cada producto a lo largo de la semana.
	//	c. El producto más vendido en cada semana.
	//	d. El nombre, el día de la semana y la cantidad del producto más vendido.
	
	Definir Producto_1 Como Real;
	
	Definir Producto_2 Como Real;
	
	Definir Producto_3 Como Real;
	
	Definir Producto_4 Como Real;
	
	Definir Producto_5 Como Real;
	
	Definir Total_Ventas Como Entero;
	
	Definir d Como Entero
	
	Definir dtv Como Entero
	
	Definir i Como Entero;
	
	d = 6
	
	dtv = d - 1
	
	Dimension Producto_1(d)
	Dimension Producto_2(d)
	Dimension Producto_3(d)
	Dimension Producto_4(d)
	Dimension Producto_5(d)
	Dimension Total_Ventas(dtv)
	
	Escribir " ---------------- Producto 1 ---------------- ";
	
	Rellenar(Producto_1,d)
	
	Producto_1(d-1) = SumatoriaSemanal(Producto_1, d - 2)
	
	Escribir " ---------------- Producto 2 ---------------- ";
	
	Rellenar(Producto_2,d)
	
	Producto_2(d-1) = SumatoriaSemanal(Producto_2, d - 2)
	
	Escribir " ---------------- Producto 3 ---------------- ";
	
	Rellenar(Producto_3,d)
	
	Producto_3(d-1) = SumatoriaSemanal(Producto_3, d - 2)
	
	Escribir " ---------------- Producto 4 ---------------- ";
	
	Rellenar(Producto_4,d)
	
	Producto_4(d-1) = SumatoriaSemanal(Producto_4, d - 2)
	
	Escribir " ---------------- Producto 5 ---------------- ";
	
	Rellenar(Producto_5,d)
	
	Producto_5(d-1) = SumatoriaSemanal(Producto_5, d - 2)
	
	Escribir " -------------------------------------------- ";
	
	Escribir "  Lunes  | Martes   |  Mier. |  Jueves  |  Viernes |  Total Semana |"
	
	Print(Producto_1, d)
	Print(Producto_2, d)
	Print(Producto_3, d)
	Print(Producto_4, d)
	Print(Producto_5, d)	
	
	Escribir " ---------------- Total de Ventas por Dia ---------------- ";
	
	TotalVentas(Total_Ventas, Producto_1, Producto_2, Producto_3, Producto_4, Producto_5, d, dtv)
	
//	Print2(Total_Ventas,dtv)
	
	Producto_De_La_Semana(Producto_1, Producto_2, Producto_3, Producto_4, Producto_5, d)
	
	Ubicacion(Producto_1, Producto_2, Producto_3, Producto_4, Producto_5, d)
	
FinAlgoritmo

SubProceso Rellenar(Producto_ Por Referencia, d)
	
	Definir i Como Entero;
	
	Definir Nro Como Entero
	
	Nro = 0
	
	Para i = 0 Hasta d  Hacer
		
		Segun i hacer
			
			0:
				
				Escribir "Digite la cantidad de ventas que hizo del producto el dia Lunes";
				Leer Nro
				
				Producto_(i) = Nro	
			1:
				Escribir "Digite la cantidad de ventas que hizo del producto el dia Martes";
				Leer Nro
				
				Producto_(i) = Nro
				
			2:
				Escribir "Digite la cantidad de ventas que hizo del producto el dia Miercoles";
				Leer Nro
				
				Producto_(i) = Nro
				
			3:	
				
				Escribir "Digite la cantidad de ventas que hizo del producto el dia Jueves"
				Leer Nro
				
				Producto_(i) = Nro
				
				
			4:
				
				Escribir "Digite la cantidad de ventas que hizo del producto el dia Viernes"
				Leer Nro
				
				Producto_(i) = Nro
				
			5:
				
				Producto_(i) = 0
				
			De Otro Modo:
				
				
		FinSegun
		
	FinPara
	
FinSubProceso

SubProceso Print(Producto_, d)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
		
		Escribir Sin Saltar "  [ ", Producto_(i)," ]  |"
		
	FinPara
	
	Escribir ""
	
FinSubProceso

SubProceso Print2(Producto_, dtv)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta dtv - 1 Con Paso 1 Hacer
		
		Escribir Sin Saltar " [ ", Producto_(i)," ] "
		
	FinPara
	
	Escribir ""
	
FinSubProceso

SubProceso TotalVentas(Total_Ventas Por Referencia, Producto_1, Producto_2, Producto_3, Producto_4, Producto_5, d, dtv)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta dtv - 1 Con Paso 1 Hacer
		
		Total_Ventas(i) = Producto_1(i) + Producto_2(i) + Producto_3(i) + Producto_4(i) +  Producto_5(i)
		
	FinPara
	
FinSubProceso

Funcion Suma <- SumatoriaSemanal(Producto_ , d)
	
	Definir Suma Como Entero
	
	Suma = 0
	
	Si d = 0 Entonces
		
		Suma = Producto_(d)
		
	SiNo
		
		Suma = Producto_(d)
		
		Suma = Suma + SumatoriaSemanal(Producto_ , d-1)
		
	FinSi
	
FinFuncion

SubProceso Producto_De_La_Semana(Producto_1, Producto_2, Producto_3, Producto_4, Producto_5, d)
	
	Definir Vector_De_Vecotres Como Enteros
	
	Definir i Como Entero
	
	Definir Mayor Como Entero
	
	Definir Aux Como Entero
	
	Mayor = 0;
	
	Aux = 0
	
	Dimension Vector_De_Vecotres(5)
	
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		
		Segun i hacer
			
			0:
				
				Vector_De_Vecotres(i) = Producto_1(5)
				
			1:
				
				Vector_De_Vecotres(i) = Producto_2(5)
				
			2:
				
				Vector_De_Vecotres(i) = Producto_3(5)
				
			3:
				
				Vector_De_Vecotres(i) = Producto_4(5)
				
			4:
				
				Vector_De_Vecotres(i) = Producto_5(5)
				
		FinSegun
		
		
	FinPara
	
//	Print(Vector_De_Vecotres,5)
	
	i = 0;
	
	Para i = 0 Hasta 4 Hacer
		
		Si Mayor < Vector_De_Vecotres(i) Entonces
			
			Mayor = Vector_De_Vecotres(i)
			
			Aux = i
			
		FinSi
		
	FinPara
	
	Si Aux = 0 Entonces
		
		Escribir "El producto 1 fue el mas vendido de la semana"
		
	SiNo
		
		Si Aux = 1 Entonces
			
			Escribir "El producto 2 fue el mas vendido de la semana"
			
		SiNo
			Si Aux = 2 Entonces
				
				Escribir "El producto 3 fue el mas vendido de la semana"
				
			SiNo
				
				Si Aux =  3 Entonces
					
					Escribir "El producto 4 fue el mas vendido de la semana"
					
				SiNo
					
					Si Aux = 4 Entonces
						
						Escribir "El producto 5 fue el mas vendido de la semana"
						
					FinSi
					
				FinSi
				
			FinSi
			
		FinSi
		
	FinSi
	
FinSubProceso

SubProceso Ubicacion(Producto_1, Producto_2, Producto_3, Producto_4, Producto_5, d)
	
	Definir Matriz_Vectores Como Entero
	
	Definir i Como Entero;
	
	Definir j Como Entero
	
	Definir k Como Entero
	
	Definir Max Como Entero
	
	Definir Dia Como Entero
	
	Definir Producto Como Entero
	
	Dimension Matriz_Vectores(5,5)
	
	Max = 0
	
	i = 0 
	
	j = 0
	
	k = 0
	
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		
		Si i = 0 Entonces
			
			Para j = 0 Hasta 4 Con Paso 1 Hacer
				
				Matriz_Vectores(i,j) = Producto_1(j)
				
			FinPara
			
		FinSi
		
		Si i = 1 Entonces
			
			Para j = 0 Hasta 4 Con Paso 1 Hacer
				
				Matriz_Vectores(i,j) = Producto_2(j)
				
			FinPara
			
		FinSi
		
		Si i = 2 Entonces
			
			Para j = 0 Hasta 4 Con Paso 1 Hacer
				
				Matriz_Vectores(i,j) = Producto_3(j)
				
			FinPara
			
		FinSi
		
		Si i = 3 Entonces
			
			Para j = 0 Hasta 4 Con Paso 1 Hacer
				
				Matriz_Vectores(i,j) = Producto_4(j)
				
			FinPara
			
		FinSi
		
		Si i = 4 Entonces
			
			Para j = 0 Hasta 4 Con Paso 1 Hacer
				
				Matriz_Vectores(i,j) = Producto_5(j)
				
			FinPara
			
		FinSi
		
	FinPara
	
	Escribir ""
	//	Escribir ""
	//	Escribir ""
	
	//	Para i = 0 Hasta 4 Con Paso 1 Hacer
	//		
	//		Para j = 0 Hasta 4 Con Paso 1 Hacer
	//			
	//			Escribir Sin Saltar " [ ", Matriz_Vectores(i,j), " ] "
	//			
	//		FinPara
	//		
	//		Escribir ""
	//		
	//	FinPara
	
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		
		Para j = 0 Hasta 4 Con Paso 1 Hacer
			
			Si Matriz_Vectores(i, j) > Max Entonces
				
				Max = Matriz_Vectores(i, j)
				
				Dia = j
				
				Producto = i
				
			FinSi
			
		FinPara
		
	FinPara
	
	Segun Producto Hacer
		
		0:
			
			Segun Dia hacer
				
				0:
					
					Escribir "Con un total de: ", Max, " Productos vendidos, el Producto_1, Es el que mas fue vendido en toda la semana, el dia : Lunes "; 
					
				1:
					
					Escribir "Con un total de: ", Max, " Productos vendidos, el Producto_1, Es el que mas fue vendido en toda la semana, el dia : Martes ";
					
				2:
					
					Escribir "Con un total de: ", Max, " Productos vendidos, el Producto_1, Es el que mas fue vendido en toda la semana, el dia : Miercoles ";
					
				3:
					
					Escribir "Con un total de: ", Max, " Productos vendidos, el Producto_1, Es el que mas fue vendido en toda la semana, el dia : Jueves ";
					
				4:
					
					Escribir "Con un total de: ", Max, " Productos vendidos, el Producto_1, Es el que mas fue vendido en toda la semana, el dia : Viernes ";
					
					
			FinSegun
			
		1:
			
			Segun Dia hacer
				
				0:
					
					Escribir "Con un total de: ", Max, " Productos vendidos, el Producto_2, Es el que mas fue vendido en toda la semana, el dia : Lunes ";
					
				1:
					
					Escribir "Con un total de: ", Max, " Productos vendidos, el Producto_2, Es el que mas fue vendido en toda la semana, el dia : Martes ";
					
				2:
					
					Escribir "Con un total de: ", Max, " Productos vendidos, el Producto_2, Es el que mas fue vendido en toda la semana, el dia : Miercoles ";
					
				3:
					
					Escribir "Con un total de: ", Max, " Productos vendidos, el Producto_2, Es el que mas fue vendido en toda la semana, el dia : Jueves ";
					
				4:
					
					Escribir "Con un total de: ", Max, " Productos vendidos, el Producto_2, Es el que mas fue vendido en toda la semana, el dia : Viernes ";
					
					
			FinSegun
			
		2:
			
			Segun Dia hacer
				
				0:
					
					Escribir "Con un total de: ", Max, " Productos vendidos, el Producto_3, Es el que mas fue vendido en toda la semana, el dia : Lunes ";
					
				1:
					
					Escribir "Con un total de: ", Max, " Productos vendidos, el Producto_3, Es el que mas fue vendido en toda la semana, el dia : Martes ";
					
				2:
					
					Escribir "Con un total de: ", Max, " Productos vendidos, el Producto_3, Es el que mas fue vendido en toda la semana, el dia : Miercoles ";
					
				3:
					
					Escribir "Con un total de: ", Max, " Productos vendidos, el Producto_3, Es el que mas fue vendido en toda la semana, el dia : Jueves ";
					
				4:
					
					Escribir "Con un total de: ", Max, " Productos vendidos, el Producto_3, Es el que mas fue vendido en toda la semana, el dia : Viernes ";
					
			FinSegun
			
		3:
			
			Segun Dia hacer
				
				0:
					
					Escribir "Con un total de: ", Max, " Productos vendidos, el Producto_4, Es el que mas fue vendido en toda la semana, el dia : Lunes ";
					
				1:
					
					Escribir "Con un total de: ", Max, " Productos vendidos, el Producto_4, Es el que mas fue vendido en toda la semana, el dia : Martes ";
					
				2:
					
					Escribir "Con un total de: ", Max, " Productos vendidos, el Producto_4, Es el que mas fue vendido en toda la semana, el dia : Miercoles ";
					
				3:
					
					Escribir "Con un total de: ", Max, " Productos vendidos, el Producto_4, Es el que mas fue vendido en toda la semana, el dia : Jueves ";
					
				4:
					
					Escribir "Con un total de: ", Max, " Productos vendidos, el Producto_4, Es el que mas fue vendido en toda la semana, el dia : Viernes ";
					
					
			FinSegun
			
		4:
			
			
			Segun Dia hacer
				
				0:
					
					Escribir "Con un total de: ", Max, " Productos vendidos, el Producto_5, Es el que mas fue vendido en toda la semana, el dia : Lunes ";
					
				1:
					
					Escribir "Con un total de: ", Max, " Productos vendidos, el Producto_5, Es el que mas fue vendido en toda la semana, el dia : Martes ";
					
				2:
					
					Escribir "Con un total de: ", Max, " Productos vendidos, el Producto_5, Es el que mas fue vendido en toda la semana, el dia : Miercoles ";
					
				3:
					
					Escribir "Con un total de: ", Max, " Productos vendidos, el Producto_5, Es el que mas fue vendido en toda la semana, el dia : Jueves ";
					
				4:
					
					Escribir "Con un total de: ", Max, " Productos vendidos, el Producto_5, Es el que mas fue vendido en toda la semana, el dia : Viernes ";
					
					
			FinSegun
			
			
	FinSegun
	
FinSubProceso