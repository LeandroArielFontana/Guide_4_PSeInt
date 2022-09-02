Algoritmo Ejercicio_16_Extra_Version_Giuli
	Definir productos, matrizPrincipal Como Caracter;
	Definir sumaDiaria, sumaSemanal, i, j, d, opc Como Entero;
	
	Escribir "Digite la cantidad de productos";
	Leer d;
	
	Dimension matrizPrincipal(d, 7);
	Dimension productos(d);
	Dimension sumaDiaria(5);
	
	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
		productos(i) = "Producto " + ConvertirATexto(i + 1);
	FinPara
	
	Hacer
		Escribir "Digite - 1 - Si quiere rellenar las ventas de los dias aleatoriamente o - 2 - Si los quiere rellenar manualmente";
		Leer opc;
		
		Si opc <> 1 & opc <> 2 Entonces
			Escribir "Error. Vuelva a ingresar una de las opciones";
		FinSi
	Hasta Que opc = 1 | opc = 2;
	
	Si opc = 1 Entonces
		rellenoAutomatico(matrizPrincipal, productos, d);
	SiNo
		Si opc = 2 Entonces
			rellenoManual(matriz_Principal, Productos, d);
		FinSi
	FinSi
	
	Escribir "                |  Lu  | Ma  | Mierc |  Jue  | Vier | Total Semanal";
	
	sumatoriaSemanal(matrizPrincipal, productos, d); ///Suma de cada semana!
	sumatoriaVentasDiarias(matrizPrincipal, productos, d, sumaDiaria); ///Suma de cada dia!
	
	Escribir Sin Saltar " Ventas por dia ";
	
	Para i = 0 hasta 4 Hacer
		Escribir Sin Saltar " [ ", Suma_Diaria(i), " ]";
	FinPara
	
	Escribir "";
	productoDeLaSemana(matrizPrincipal, d); ///Ver quien es el que mas vendio en la semana!
	Escribir "";
	ubicacion(matrizPrincipal, d);
FinAlgoritmo

SubProceso ubicacion(matrizPrincipal, d)
	Definir i, j, k, max, dia, matrizNumerica, producto Como Entero;
	
	Dimension matrizNumerica(d, 5);
	
	max = 0;
	
	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
		k = 0;
		
		Para j = 1 Hasta 5 Con Paso 1 Hacer
			matrizNumerica(i, k) = ConvertirANumero(matrizPrincipal(i,j));
			k = k + 1;
		FinPara
	FinPara
	
	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
		Para j = 0 Hasta 4 Con Paso 1 Hacer
			Si matrizNumerica(i, j) > max Entonces
				max = matrizNumerica(i, j);
				dia = j;
				producto = i;
			FinSi
		FinPara
	FinPara
	
	Segun dia
		0:
			Escribir "Con un total de ", max, " ventas, el dia Lunes, el producto ", producto + 1," Fue el mas vendido de toda la semana";
		
		1:
			Escribir "Con un total de ", max, " ventas, el dia Martes, el producto ", producto + 1," Fue el mas vendido de toda la semana";
		
		2:
			Escribir "Con un total de ", max, " ventas, el dia Miercoles, el producto ", producto + 1," Fue el mas vendido de toda la semana";
		
		3:
			Escribir "Con un total de ", max, " ventas, el dia Jueves, el producto ", producto + 1," Fue el mas vendido de toda la semana";
		
		4:
			Escribir "Con un total de ", max, " ventas, el dia Viernes, el producto ", producto + 1," Fue el mas vendido de toda la semana";
		
		De Otro Modo:
			
		
	FinSegun
FinSubProceso

SubProceso productoDeLaSemana (matrizPrincipal, d)
	Definir i, j, mayor, aux, vectorSemanal Como Entero;
	
	Dimension vectorSemanal(d);
	
	aux = 0;
	mayor = 0;
	
	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
		Para j = 6 Hasta 6 Con Paso 1 Hacer
			vectorSemanal(i) = ConvertirANumero(matrizPrincipal(i,6));
		FinPara
	FinPara
	
	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
		Si mayor < vectorSemanal(i) Entonces
			mayor = vectorSemanal(i);
			aux = i;
		FinSi
	FinPara
	
	Escribir "El producto ", aux + 1, " fue el mas vendido de la semana con ", mayor, " ventas";
FinSubProceso

SubProceso sumatoriaSemanal(matrizPrincipal, productos, d)
	Definir i, j, k, suma, nro Como Entero;
	
	suma = 0;
	k = 0 ;
	
	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
		para j = 1 Hasta 5 con paso 1 Hacer
			nro = ConvertirANumero(matrizPrincipal(i,j));
			suma = suma + nro;
			matrizPrincipal(i,6) = ConvertirATexto(suma);
		FinPara
		
		suma = 0;
	FinPara 
	
	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
		Para j = 0 Hasta 6 Con Paso 1 Hacer
			Escribir Sin Saltar " [ ", Matriz_Principal(i,j), " ] ";
		FinPara
		
		Escribir "";
	FinPara
FinSubProceso

SubProceso sumatoriaVentasDiarias(matrizPrincipal, productos, d, sumaDiaria Por Referencia)
	Definir i, j, k, suma, nro Como Entero;
	
	suma = 0;
	k = 0 ;
	
	Mientras k <= 4 Hacer
		Para j = 1 Hasta 5 Con Paso 1 Hacer
			suma = 0;
			
			para i = 0 Hasta d - 1 con paso 1 Hacer
				nro = ConvertirANumero(matrizPrincipal(i,j));
				suma = suma + nro;
				sumaDiaria(k) = suma;
			FinPara
			
			k = k + 1;
		FinPara 
	FinMientras
FinSubProceso

SubProceso rellenoAutomatico(matrizPrincipal Por Referencia, productos, d)	
	Definir i, j Como Entero;
	
	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
		Para j = 0 Hasta 5 Con Paso 1 Hacer
			Si j = 0 Entonces
				matrizPrincipal(i,j) = productos(i)
			SiNo
				Si j <> 6 Entonces
					matrizPrincipal(i,j) = ConvertirATexto(Aleatorio(1,10))
				FinSi
				
				matrizPrincipal(i,6) = ConvertirATexto(0)
			FinSi
		FinPara
	FinPara	
FinSubProceso

SubProceso rellenoManual(matrizPrincipal Por Referencia, productos, d)
	Definir i, j, nro Como Entero;
	
	Para i = 0 Hasta d - 1 Con Paso 1 Hacer		
		Para j = 0 Hasta 6 Con Paso 1 Hacer
			Si j = 0 Entonces
				matrizPrincipal(i,j) = productos(i);
			SiNo
				Segun j hacer
					1:
						Escribir "Digite la cantidad de ventas que realizo el producto ", i + 1, " el dia Lunes";
						Leer nro;
						
						matrizPrincipal(i,j) = ConvertirATexto(nro);
					
					2:
						Escribir "Digite la cantidad de ventas que realizo el producto ", i + 1, " el dia Martes";
						Leer nro;
						
						matrizPrincipal(i,j) = ConvertirATexto(nro);
					
					3:
						Escribir "Digite la cantidad de ventas que realizo el producto ", i + 1, " el dia Miercoles";
						Leer nro;
						
						matrizPrincipal(i,j) = ConvertirATexto(nro);
					
					4:
						Escribir "Digite la cantidad de ventas que realizo el producto ", i + 1, " el dia Jueves";
						Leer nro;
						
						matrizPrincipal(i,j) = ConvertirATexto(nro);
					
					5:
						Escribir "Digite la cantidad de ventas que realizo el producto ", i + 1, " el dia Viernes";
						Leer nro;
						
						matrizPrincipal(i,j) = ConvertirATexto(nro);
					
					6:
						matrizPrincipal(i,j) = ConvertirATexto(0);
					
					De Otro Modo:
						
				FinSegun
			FinSi
		FinPara
	FinPara
FinSubProceso
	