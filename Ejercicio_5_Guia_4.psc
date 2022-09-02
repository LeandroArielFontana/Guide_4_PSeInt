Algoritmo Ejercicio_5_Guia_4
	
	Definir respuesta, lecturaVector Como Caracter;
	Definir vector1, vector2, vector3, d Como Real
	Definir vector_1, vector_2, vector_3 Como Logico;
	
	vector_3 = Falso
	vector_1 = Falso;
	vector_2 = Falso;
	
	Escribir "Digite la dimension de los vectores";
	Leer d;
	
	Dimension vector1(d)
	Dimension vector2(d);
	Dimension vector3(d);
	
	Respuesta = "";

	Escribir "Digite una tecla para continuar";
	
	Esperar Tecla;
	menu();
	
	Hacer
		Leer respuesta;
		
		Segun Minusculas(Respuesta)
			"a":
				Si !vector_1 Entonces
					Completar_Vector(Vector1, d, Vector_1);
				SiNo
					Escribir "El vector ya esta creado";
				FinSi
				
			"b":
				Si !Vector_2 Entonces
					completarVector(vector2, d, vector_2);
				SiNo
					Escribir "El vector ya esta creado";
				FinSi
				
			"c":
				Si !vector_2 o !vector_1 Entonces
					Escribir "El vector A ó B no se encuentra generado";
				SiNo
					sumaVectores(vector3, vector1, vector2, d, vector_3);
				FinSi
				
				Escribir "";
				
			"d":
				Si !vector_2 o !vector_1 Entonces
					Escribir "El vector A ó B no se encuentra generado";
				SiNo
					restaVectores(vector3, vector1, vector2, d, vector_3);
				FinSi
				
				Escribir "";
				
			"e":
				Si vector_1 & vector_2 & vector_3 Entonces
					Escribir "Digite el vector que desa ver (A, B, C)";
					Leer Lectura_Vector;
					
					Segun Minusculas(lecturaVector)
						"a":
							print(vector1,d);
							
						"b":
							print(vector2,d);
							
						"c":
							print(vector3,d);
							
						De Otro Modo:
							Escribir "Error";
					FinSegun
				FinSi
				
			"f":
				Escribir "Saliendo";
			De Otro Modo:
				Escribir "Error";
		FinSegun
		
		Escribir "";
		Escribir "Digite una tecla para continuar";
		
		Esperar Tecla;
		menu();
	Hasta Que Minusculas(Respuesta) = "f"
FinAlgoritmo

SubProceso menu
	Escribir "Digite la opcion que desea realizar";
	Escribir "A. Llenar Vector A.";
	Escribir "B. Llenar Vector B.";
	Escribir "C. Llenar Vector C con la suma de los vectores A y B.";
	Escribir "D. Llenar Vector C con la resta de los vectores B y A."; 
	Escribir "E. Mostrar.";
	Escribir "F. Salir.";
	Escribir "";
FinSubProceso

SubProceso completarVector (vector por referencia, d, vector_ Por Referencia)
	Definir i Como Entero;
	
	Para i <- 0 hasta d - 1 Con Paso 1 Hacer
		vector(i) = Aleatorio(- 100, 100);
	FinPara
	
	vector_ = Verdadero;
	
	Escribir "El vector ha sido generado con exito";
FinSubProceso

SubProceso sumaVectores(vector3 Por Referencia, vector1, vector2, d, vector_3 Por Referencia)
	Definir i Como Entero;
	
	Para i <- 0 hasta d - 1 Con Paso 1 Hacer
		vector3(i) = vector1(i) + vector2(i);
	FinPara
	
	vector_3 = Verdadero;
	
	Escribir "El vector SUMA ha sido generado con exito";
FinSubProceso

SubProceso restaVectores(vector3 Por Referencia, vector1, vector2, d, vector_3 Por Referencia)
	Definir i Como Entero;
	
	Para i <- 0 hasta d - 1 Con Paso 1 Hacer
		Vector3(i) = Vector2(i) + Vector1(i);
	FinPara
	
	Vector_3 = Verdadero;
	
	Escribir "El vector RESTA ha sido generado con exito";
FinSubProceso

SubProceso print (vector, d)
	Definir i Como Entero;
	
	Para i = 0 Hasta d - 1 Con Paso 1 Hacer
		Escribir Sin Saltar " [ ", vector(i), " ] ";
	FinPara
FinSubProceso
	