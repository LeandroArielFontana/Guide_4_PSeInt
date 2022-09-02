Algoritmo Ejercicio_16_Extra_Version_Giuli
	
	Definir Productos Como Caracter
	
	Definir Matriz_Principal Como Caracter
	
	Definir Suma_Diaria Como Entero;
	
	Definir Suma_Semanal Como Entero;
	
	Definir i Como Entero
	
	Definir j como entero;
	
	Definir d Como Entero
	
	Definir Opc Como Entero
	
	Escribir "Digite la cantidad de productos"
	Leer d;
	
	Dimension Matriz_Principal(d, 7)
	
	Dimension Productos(d)
	
	Dimension Suma_Diaria(5)
	
	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
		
		Productos(i) = "Producto " + ConvertirATexto(i + 1) 
		
	FinPara
	
	Hacer
		
		Escribir "Digite - 1 - Si quiere rellenar las ventas de los dias aleatoriamente o - 2 - Si los quiere rellenar manualmente";
		Leer Opc
		
		Si Opc <> 1 & Opc <> 2 Entonces
			
			Escribir "Error. Vuelva a ingresar una de las opciones"
			
		FinSi
		
	Hasta Que Opc = 1 | Opc = 2
	
	Si Opc = 1 Entonces
		
		RellenoAutomatico(Matriz_Principal, Productos, d)
		
	SiNo
		
		Si Opc = 2 Entonces
			
			RellenoManual(Matriz_Principal, Productos, d)
			
		FinSi
		
	FinSi
	
	Escribir "                |  Lu  | Ma  | Mierc |  Jue  | Vier | Total Semanal"
	
	Sumatoria_Semanal(Matriz_Principal, Productos, d) ///Suma de cada semana!
	
	Sumatoria_Ventas_Diarias(Matriz_Principal, Productos, d, Suma_Diaria) ///Suma de cada dia!
	
	Escribir Sin Saltar " Ventas por dia "
	
	Para i = 0 hasta 4 Hacer
		
		Escribir Sin Saltar " [ ", Suma_Diaria(i), " ]"
		
	FinPara
	
	Escribir ""
	
	Producto_De_La_Semana(Matriz_Principal, d)///Ver quien es el que mas vendio en la semana!
	
	Escribir ""
	
	Ubicacion(Matriz_Principal, d)
	
	
	
FinAlgoritmo



SubProceso Ubicacion (Matriz_Principal, d)
	
	Definir i Como Entero;
	
	Definir j Como Entero;
	
	Definir k Como Entero;
	
	Definir Matriz_Numerica Como Entero
	
	Definir Max Como Entero
	
	Definir Dia Como Entero
	
	Definir Producto Como Entero
	
	Dimension Matriz_Numerica(d, 5)
	
	Max = 0
	
	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
		
		k = 0;
		
		Para j = 1 Hasta 5 Con Paso 1 Hacer
			
			Matriz_Numerica(i, k) = ConvertirANumero(Matriz_Principal(i,j)) 
			
			k = k + 1
			
		FinPara
		
	FinPara
	
	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta 4 Con Paso 1 Hacer
			
			Si Matriz_Numerica(i, j) > Max Entonces
				
				Max = Matriz_Numerica(i, j)
				
				Dia = j
				
				Producto = i
				
			FinSi
			
		FinPara
		
	FinPara
	
	Segun Dia
		
		0:
			Escribir "Con un total de ", Max, " ventas, el dia Lunes, el producto ", Producto + 1," Fue el mas vendido de toda la semana"
		1:
			Escribir "Con un total de ", Max, " ventas, el dia Martes, el producto ", Producto + 1," Fue el mas vendido de toda la semana"
		2:
			Escribir "Con un total de ", Max, " ventas, el dia Miercoles, el producto ", Producto + 1," Fue el mas vendido de toda la semana"
		3:
			Escribir "Con un total de ", Max, " ventas, el dia Jueves, el producto ", Producto + 1," Fue el mas vendido de toda la semana"
		4:
			Escribir "Con un total de ", Max, " ventas, el dia Viernes, el producto ", Producto + 1," Fue el mas vendido de toda la semana"
			
		De Otro Modo:
			
			
	FinSegun
	
	//	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
	//		
	//		Para j = 0 Hasta 4 Con Paso 1 Hacer
	//			
	//			Escribir Sin Saltar " [ ", Matriz_Numerica(i,j), " ] "
	//			
	//		FinPara
	//		
	//		Escribir ""
	//		
	//	FinPara
	
	
FinSubProceso

SubProceso Producto_De_La_Semana (Matriz_Principal, d)
	
	Definir Vector_Semanal Como Entero;
	
	Definir i Como Entero;
	
	Definir j Como Entero;
	
	Definir Mayor Como Entero;
	
	Definir Aux Como Entero;
	
	Dimension Vector_Semanal(d)
	
	Aux = 0;
	
	Mayor = 0;
	
	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
		
		Para j = 6 Hasta 6 Con Paso 1 Hacer
			
			Vector_Semanal(i) = ConvertirANumero(Matriz_Principal(i,6))
			
		FinPara
		
	FinPara
	
	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
		
		Si Mayor < Vector_Semanal(i) Entonces
			
			Mayor = Vector_Semanal(i)
			
			Aux = i
			
		FinSi
		
	FinPara
	
	Escribir "El producto ", Aux + 1, " fue el mas vendido de la semana con ", Mayor, " ventas";
	
//	Para i = 0 hasta d - 1  Hacer
//		
//		Escribir Sin Saltar " [ ", Vector_Semanal(i), " ] "
//		
//	FinPara
	
FinSubProceso

SubProceso Sumatoria_Semanal(Matriz_Principal, Productos, d)
	
	Definir i Como Entero;
	
	Definir j Como Entero;
	
	Definir k Como Entero;
	
	Definir Suma Como Entero;
	
	Definir Nro Como Entero
	
	Suma = 0;
	
	k = 0 ;
	
	
	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
		
		para j = 1 Hasta 5 con paso 1 Hacer
			
			Nro = ConvertirANumero(Matriz_Principal(i,j))
			
			Suma = Suma + Nro
			
			Matriz_Principal(i,6) = ConvertirATexto(Suma) 
			
			
		FinPara
		
		Suma = 0
		
	FinPara 
	
	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta 6 Con Paso 1 Hacer
			
			Escribir Sin Saltar " [ ", Matriz_Principal(i,j), " ] "
			
		FinPara
		
		Escribir ""
		
	FinPara
	
FinSubProceso

SubProceso Sumatoria_Ventas_Diarias(Matriz_Principal, Productos, d, Suma_Diaria Por Referencia)
	
	Definir i Como Entero;
	
	Definir j Como Entero;
	
	Definir k Como Entero;
	
	Definir Suma Como Entero;
	
	Definir Nro Como Entero
	
	Suma = 0;
	
	k = 0 ;
	
	Mientras k <= 4 Hacer
		
		Para j = 1 Hasta 5 Con Paso 1 Hacer
			
			Suma = 0
			
			para i = 0 Hasta d - 1 con paso 1 Hacer
				
				Nro = ConvertirANumero(Matriz_Principal(i,j))
				
				Suma = Suma + Nro
				
				Suma_Diaria(k) = Suma 
				
			FinPara
			
			k = k + 1
			
		FinPara 
		
	FinMientras
	

	
FinSubProceso

SubProceso RellenoAutomatico(Matriz_Principal Por Referencia, Productos, d)
	
	Definir i Como Entero
	
	Definir j Como Entero;
	
	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta 5 Con Paso 1 Hacer
			
			Si j = 0 Entonces
				
				Matriz_Principal(i,j) = Productos(i)
				
			SiNo
				
				Si j != 6 Entonces
					
					Matriz_Principal(i,j) = ConvertirATexto(Aleatorio(1,10))
					
				FinSi
				
				Matriz_Principal(i,6) = ConvertirATexto(0)
				
			FinSi
			
		FinPara
		
	FinPara
	
//	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
//		
//		Para j = 0 Hasta 6 Con Paso 1 Hacer
//			
//			Escribir Sin Saltar " [ ", Matriz_Principal(i,j), " ] "
//			
//		FinPara
//		
//		Escribir ""
//		
//	FinPara
	
FinSubProceso

SubProceso RellenoManual(Matriz_Principal Por Referencia, Productos, d)
	
	Definir i Como Entero;
	
	Definir j Como Entero;
	
	Definir Nro Como Entero;
	
	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta 6 Con Paso 1 Hacer
			
			Si j = 0 Entonces
				
				Matriz_Principal(i,j) = Productos(i)
				
			SiNo
				
				Segun j hacer
					
					1:
						
						Escribir "Digite la cantidad de ventas que realizo el producto ", i+1, " el dia Lunes";
						Leer Nro
						
						Matriz_Principal(i,j) = ConvertirATexto(Nro)
						
					2:
						Escribir "Digite la cantidad de ventas que realizo el producto ", i+1, " el dia Martes";
						Leer Nro
						
						Matriz_Principal(i,j) = ConvertirATexto(Nro)
						
					3:
						Escribir "Digite la cantidad de ventas que realizo el producto ", i+1, " el dia Miercoles";
						Leer Nro
						
						Matriz_Principal(i,j) = ConvertirATexto(Nro)
						
					4:
						Escribir "Digite la cantidad de ventas que realizo el producto ", i+1, " el dia Jueves";
						Leer Nro
						
						Matriz_Principal(i,j) = ConvertirATexto(Nro)
						
					5:
						Escribir "Digite la cantidad de ventas que realizo el producto ", i+1, " el dia Viernes";
						Leer Nro
						
						Matriz_Principal(i,j) = ConvertirATexto(Nro)
						
					6:
						
						Matriz_Principal(i,j) = ConvertirATexto(0) 
						
						
					De Otro Modo:
						
					
				FinSegun
				
			FinSi
			
		FinPara
		
	FinPara
	
	//	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
	//		
	//		Para j = 0 Hasta 6 Con Paso 1 Hacer
	//			
	//			Escribir Sin Saltar " [ ", Matriz_Principal(i,j), " ] "
	//			
	//		FinPara
	//		
	//		Escribir ""
	//		
	//	FinPara
	
FinSubProceso
	