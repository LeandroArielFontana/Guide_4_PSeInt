Algoritmo Leandro_Fontana
	
	///LEANDRO ARIEL FONTANA
	
	Definir Matriz Como Caracter
	
	Definir f Como Entero ///VARIABLE N - DIMENSIONAL
	
	Definir c Como Entero ///VARIABLE N - DIMENSIONAL
	
	Definir Resultado Como Caracter ///VARIABLE DE SALIDA
	
	Definir Codigo_Genetico Como Caracter; ///VARIABLE DE ENTRADA
	
	Definir Long_Codigo Como Entero
	
	c = 1
	
	f = 1
	
	Escribir "BIENVENIDO AL PROGRAMA QUE PERMITIRA SABER SI SU CODIGO GENETICO POSEE EL GEN Z O NO" /// MENSAJE DE SALIDA
	Escribir ""																	

	Escribir "DIGITE EL CODIGO GENETICO Y VEREFICAREMOS SI ES POSIBLE DETECTARLO O NO" /// MENSAJE DE SALIDA
	Leer Codigo_Genetico;
	
	// 	CODIGO GENETICO VALIDO PARA MATRIZ 37 X 37
	
	//	Codigo_Genetico = "AABCCAAAABBBCBBAABBCDBDBCCAADCCDBBDAAAAABCCAAAABBBCBBCABBCDBDBCCAADCCDBBAAABAABCCAAAABABBCBBCABBCDBDBCCAADCCAABDABAAABCCAAAABBBCBBCABBCDBDBCCAADAADBBABCAAABCCAAAABBBCBBCABBCDBDBCCAAACCDBABCDAAABCCAAAABBBCBBCABBCDBDBCAAADCCDABCDAAAABCCAAAABBCBBCABBCDBDBACAADCCABCDABCAABCCAAAABBBCBBCABBCDBABCCAADCABCDABCDAABCCAAAABBBCBBCABBCABDBCCAADABCDABCDAAABCCAAAABBBCBBCABACDBDBCCAAABCDABCDABAABCCAAAABBBCBBCABBCDBDBCCAABCDABCDABCAABCCAAAABBBCBACABBCDBDBCCABCDABCDABCDAABCCAAAABBBABBCABBCDBDBCABCDABCDABCDAAABCCAAAABABCBBCABBCDBDBABCDABCDABCDABAABCCAAAABBBCBBCABBCDBDABCDABCDABCDABCAABCCAAAABBBCBBCABBCDBABCDABCDABCDABCDAABCAAAAABBBCBBCABBCDABCDABCDABCDABCDAAAACCAAAABBBCBBCABBCABCDABCDABCDABCDABAABCCAAAABBBCBBCABBABCDABCDABCDABCDAACAABCCAAAABBBCBBCABABCDABCDABCDABCDABCDAABCCAAAABBBCBBCAABCDABCDABCDABCAABCDAAABCCAAAABBBCBBCABCDABCDABCDABADABCDABAABCCAAAABBBCBBABCDABCDAABCDABCDABCDABAABCCAAAABBBCBABCDABCDABCDABCDABCDABCDAABCCAAAABBBCABCDABCDABCAABCDABCDABCDAAABCCAAAABBBABCDABCDABADABCDABCDABCDABAABCCAAAABBABCDABCDAACDABCDABABCDABCDAAABCCAAAABABCDABCDABCDABCDABCDABCDABCDAABCCAAAAABCDABCAABCDABCDABCDABCDABCDAAABCCAAAABCDABADABCDABCDABCDABCDABCDABAABCCAAABCDAACDABCABCDABCDABCDABCDABCDAABCCAABCDABCDABCDABCDABCDABCDABCDABCDAABCCAABADABCDABCDABCDABCDABCDABCDABCDAABCABADABCDABCDABCDABCDABCDABCDABCDABAABAACDABCDABCDABCDABCDABCDABCDABCDABCAAABCDABCDABCDABCDABCDABCDABCDABCDABCDA"
	
	// 	CODIGO GENETICO NO VALIDO PARA MATRIZ 37 X 37
	
	//	Codigo_Genetico = "DDDADBDACBAABACACCADCBADACBCADABBCCDABDADCBAACDDBACDDCBAAADDDDDCCADADBCBBCDADCBADABBCBCCCCAADDDAACDDBDBCAACABDDADAAACADDBBAACBBBBCDBBDABAACBBADCBDCDCDAACBDADADCDACBACAACDACDDDDBAACCACBAADBDABCBDACAAADBDBCACACDCCABDBBADACDCAAACAACADCBCCBCABADCBAABCDDCDCABADACBBCCCADDABDCACDDACCDCABCAAABACADCCDAABCCCABDABDCBBCDCBDCAAAAAACCADAAADBBABACCDDCBCCCDBBCDADBADCDCDCBABCCCBDCCACCADDACCADCBDCCBBCBCBADCBADBCBCBCBBDBCDBDCDACDBCACACDBCCAACBABDCCCDCDABACAADACDCCAADCDBBDABDBBABDBDDACBABADCABDACACDBBBDAACBBADDACBACBDDDDCBBBDBBDCCBDABBCCDDADCDACCDCDCBADBCBCDADDBDAAACDCBBBCDBABCCBDBBADACDDBADBBCBDDADBBACDCCBBCACDBDABBCACACCABDACDDADBBCCBABCADDDBABCDDCDCDCABBAABDAADAADADDCDDBBBDCBBADDBCBDCCCBBDBADCCACACCBABDDDDDBCDBCBDCBCDCDDAABCABDACDABBDDCADCDDDBCDBCACDBACBDDBADDABCABDBDBDCCAACDBABABADBCADDAADADAACAADBACBBDDADADCACDDDBCCCDCCBDCABDADCABBAACCDDAAABBBCADACBDDCAACACDADBDACDBBDBDCCADBBADCADDBBBADADDADCCDBDCBBACCBDBCADDDCADAACBCACBAABBBCDCDADABADBABCCAACBDABDDBBCCACABDCBBDCBAAAADDDACBDCDBDDADDBBDDADBABCBBCBDDCCDBDACBBDCCDACCCBCCCDABACACBCDDCCBDACDDDBABCCCDCDDCCDBCBDDCCCAACDBBBDAABCAAAADBCCCACDACAACBDACBDCACCBADBBCBACCDADBCCAABCDDBACDBAABADCBCCACBCBDCACBBDABCCBCDDDDABBDCDACACDDCABDBBDCDAADBBCAAAACABCDBAACBDDACBCABBDDBADDDDADAABADCDABCAABDCDDBCDBDACCACBBADACDABABDDDCAAACBABABDABACBCDDCDCABDBBBBBADACCCBBBCAACDCBABBDBBDAACCDCBBABCDACDCBACBDAACCBAAAABAADCBCBAAAACCBBBCDDBBAABDAC"
	
	Verificacion_De_Codigo_Genetico(c, Codigo_Genetico)
	
	f = c // IGUALO LAS VARIABLES DIMENSIONALES YA QUE SON MATRICES CUADRADAS!
	
	Dimension Matriz(f,c)
	
	Si c = 3 | c = 37 Entonces
		
		Si Matriz3_x_3(Matriz, f, c, Codigo_Genetico) = Verdadero Entonces
			
			Print(Matriz, f, c)
			
			Escribir ""
			
			Resultado = "USTED POSEE EL GEN Z. POR LO TANTO USTED SE CONVERTIRA EN ZOMBIE EN CUALQUIER MOMENTO!!!" /// MENSAJE DE SALIDA
			
			Escribir Resultado
			
		SiNo
			
			Print(Matriz, f, c)
			
			Escribir ""
			
			Resultado = "USTED NO POSEE EL GEN Z. ESTA SALVADO... POR AHORA!" /// MENSAJE DE SALIDA
			
			Escribir Resultado
			
		FinSi
		
	SiNo
		
		Si c = 4 Entonces
			
			Si Matriz_4_x_4(Matriz, f, c, Codigo_Genetico) = Verdadero Entonces
				
				Print(Matriz, f, c)
				
				Escribir ""
				
				Resultado = "USTED POSEE EL GEN Z. POR LO TANTO USTED SE CONVERTIRA EN ZOMBIE EN CUALQUIER MOMENTO!!!" /// MENSAJE DE SALIDA
				
				Escribir Resultado
				
			SiNo
				
				Print(Matriz, f, c)
				
				Escribir ""
				
				Resultado = "USTED NO POSEE EL GEN Z. ESTA SALVADO... POR AHORA!" /// MENSAJE DE SALIDA
				
				Escribir Resultado
				
			FinSi
			
		FinSi
		
	FinSi
	
FinAlgoritmo

///SUBPROCESO NRO 1

SubProceso Print(Matriz, f, c) ///SUBPROCESO DE SALIDA ( MUESTRA LA MATRIZ ) 
	
	Definir i Como Entero;
	
	Definir j Como Entero
	
	Para i <- 0 Hasta f - 1 Con Paso 1 Hacer
		
		Para j <- 0 Hasta c - 1 Con Paso 1 Hacer
			
			Escribir Sin Saltar " [ ", Matriz(i, j), " ] " 
			
		FinPara
		
		Escribir ""
		
	FinPara
	
FinSubProceso

///SUBPROCESO NRO 2

Funcion Verificacion <- Matriz3_x_3(Matriz, f, c, Codigo_Genetico)
	
	Definir i Como Entero;
	
	Definir j Como Entero;
	
	Definir k Como Entero
	
	Definir Verificacion Como Logico
	
	Definir Aux Como Caracter;
	
	Definir Conteo_A Como Entero;
	
	Definir Conteo_B Como Entero
	
	Definir Conteo_C Como Entero;
	
	Definir Conteo_D Como Entero;
	
	Conteo_A = 0;
	
	Conteo_B = 0;
	
	Conteo_C = 0;
	
	Conteo_D = 0;
	
	Verificacion = Falso
	
	i = 0
	
	j = 0
	
	k = 0
	
	Para i <- 0 Hasta f - 1 Con Paso 1 Hacer
		
		Para j <- 0 Hasta c - 1 Con Paso 1 Hacer
			
			Aux = Subcadena(Codigo_Genetico, k, k);
			
			Matriz(i, j) = Aux
			
			k = k + 1
			
		FinPara
		
	FinPara
	
	Para i = 0 Hasta c - 1 Con Paso 1 Hacer
		
		Segun Matriz(i,i)
			
			"A":
				Conteo_A = Conteo_A + 1;
				
			"B":
				
				Conteo_B = Conteo_B + 1;
				
			"C":
				
				Conteo_C = Conteo_C + 1;
				
			"D":
				
				Conteo_D = Conteo_D + 1;
				
		FinSegun
		
	FinPara
	
	Para i = 0 Hasta f - 1 Con Paso 1 Hacer
		
		para j = 0 Hasta c - 1 Con Paso 1 Hacer
			
			Si i + j = f - 1 Entonces
				
				Segun Matriz(i,j)
					
					"A":
						Conteo_A = Conteo_A + 1;
						
					"B":
						
						Conteo_B = Conteo_B + 1;
						
					"C":
						
						Conteo_C = Conteo_C + 1;
						
					"D":
						
						Conteo_D = Conteo_D + 1;
						
				FinSegun
				
			FinSi
			
		FinPara
		
	FinPara
	
	Si Conteo_A = c * 2 | Conteo_B = c * 2 | Conteo_C = c * 2 | Conteo_D = c * 2 Entonces
		
		Verificacion = Verdadero
		
	SiNo
		
		Verificacion = Falso
		
	FinSi
	
FinFuncion

///SUBPROCESO NRO 3

Funcion Verificacion <- Matriz_4_x_4(Matriz, f, c, Codigo_Genetico)
	
	Definir i Como Entero;
	
	Definir j Como Entero;
	
	Definir k Como Entero;
	
	Definir Aux Como Caracter;
	
	Definir Conteo_A Como Entero;
	
	Definir Conteo_B Como Entero;
	
	Definir Conteo_C Como Entero;
	
	Definir Conteo_D Como Entero;
	
	Definir Conteo_Letras Como Entero;
	
	Definir Verificacion Como Logico;
	
	Conteo_A = 0;
	
	Conteo_B = 0;
	
	Conteo_C = 0;
	
	Conteo_D = 0;
	
	Conteo_Letras = 0;
	
	i = 0;
	
	j = 0;
	
	k = 0;
	
	Para i <- 0 Hasta f - 1 Con Paso 1 Hacer
		
		Para j <- 0 Hasta c - 1 Con Paso 1 Hacer
			
			Aux = Subcadena(Codigo_Genetico, k, k);
			
			Matriz(i, j) = Aux
			
			k = k + 1
			
		FinPara
		
	FinPara
	
	Para i = 0 Hasta c - 1 Con Paso 1 Hacer
		
		Segun Matriz(i,i)
			
			"A":
				Conteo_A = Conteo_A + 1;
				
				Si Conteo_A = 4 Entonces
					
					Conteo_Letras  = Conteo_Letras + 1
					
					Conteo_A = 0
					
				FinSi
				
			"B":
				
				Conteo_B = Conteo_B + 1;
				
				Si Conteo_B = 4 Entonces
					
					Conteo_Letras  = Conteo_Letras + 1
					
					Conteo_B = 0
					
				FinSi
				
			"C":
				
				Conteo_C = Conteo_C + 1;
				
				Si Conteo_C = 4 Entonces
					
					Conteo_Letras  = Conteo_Letras + 1
					
					Conteo_C = 0
					
				FinSi
				
			"D":
				
				Conteo_D = Conteo_D + 1;
				
				Si Conteo_D = 4 Entonces
					
					Conteo_Letras  = Conteo_Letras + 1
					
					Conteo_D = 0
					
				FinSi
				
		FinSegun
		
	FinPara
	
	Para i = 0 Hasta f - 1 Con Paso 1 Hacer
		
		para j = 0 Hasta c - 1 Con Paso 1 Hacer
			
			Si i + j = f - 1 Entonces
				
				Segun Matriz(i,j)
					
					"A":
						Conteo_A = Conteo_A + 1;
						
						Si Conteo_A = 4 Entonces
							
							Conteo_Letras  = Conteo_Letras + 1
							
							Conteo_A = 0
							
						FinSi
						
					"B":
						
						Conteo_B = Conteo_B + 1;
						
						Si Conteo_B = 4 Entonces
							
							Conteo_Letras  = Conteo_Letras + 1
							
							Conteo_B = 0
							
						FinSi
						
					"C":
						
						Conteo_C = Conteo_C + 1;
						
						Si Conteo_C = 4 Entonces
							
							Conteo_Letras  = Conteo_Letras + 1
							
							Conteo_C = 0
							
						FinSi
						
					"D":
						
						Conteo_D = Conteo_D + 1;
						
						Si Conteo_D = 4 Entonces
							
							Conteo_Letras  = Conteo_Letras + 1
							
							Conteo_D = 0
							
						FinSi
						
				FinSegun
				
			FinSi
			
		FinPara
		
	FinPara
	
	Si Conteo_Letras = 2 Entonces
		
		Verificacion = Verdadero
		
	SiNo
		
		Verificacion = Falso
		
	FinSi
	
FinSubProceso

///SUBPROCESO NRO 4

SubAlgoritmo Verificacion_De_Codigo_Genetico(c Por Referencia, Codigo_Genetico)
	
	Definir Long_Codigo Como Entero;
	
	Definir i Como Entero;
	
	Definir Conteo_Codigo Como Entero
	
	Conteo_Codigo = 0
	
	Long_Codigo = Longitud(Codigo_Genetico)
	
	i = 0;
	
	Para i = 0 Hasta Long_Codigo - 1 Con Paso 1 Hacer
		
		Si Subcadena(Codigo_Genetico, i, i) = "A" | Subcadena(Codigo_Genetico, i, i) = "B" | Subcadena(Codigo_Genetico, i, i) = "C" | Subcadena(Codigo_Genetico, i, i) = "D" Entonces
			
			Conteo_Codigo = Conteo_Codigo + 1
			
		FinSi
		
	FinPara
	
	Si Conteo_Codigo = Long_Codigo Entonces
		
		Segun Long_Codigo
			
			9: 
				
				Escribir "SU CODIGO GENETICO ES VALIDO PARA LA DETECCION EN UNA MATRIZ DE 3 X 3" /// MENSAJE DE SALIDA
				
				c = 3
				
			16:
				
				Escribir "SU CODIGO GENETICO ES VALIDO PARA LA DETECCION EN UNA MATRIZ DE 4 X 4" /// MENSAJE DE SALIDA
				
				c = 4
				
			1369:
				
				Escribir "SU CODIGO GENETICO ES VALIDO PARA LA DETECCION EN UNA MATRIZ DE 37 X 37" /// MENSAJE DE SALIDA
				
				c = 37
				
			De otro modo:
				
				Escribir "SU CODIGO GENETICO NO ES VALIDO PARA LA DETECCION DEL GEN Z" /// MENSAJE DE SALIDA
				
				c = 1
				
				
		FinSegun
		
	SiNo
		
		Escribir "ERROR AL DIGITAR EL CODIGO GENETICO. REINICIE EL PROGRAMA!" /// MENSAJE DE SALIDA
		
	FinSi
	
FinSubAlgoritmo