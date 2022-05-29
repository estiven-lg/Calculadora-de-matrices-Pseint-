// ESTE SOFTWARE FUE DESARROLLADO POR LOS INGENIEROS
// HERBERTH LIMA
//ESTIVEN LAFERRE
// JAVIER DE LA CRUZ 

Funcion printMatrix(dimX,dimY,data,operadingX,operadingY)
	Definir Mx, My Como Numero;
	Para Mx<-0 Hasta dimY-1 Con Paso 1 Hacer
		si Mx == 0 Entonces
			Para My<-0 Hasta dimX-1 Con Paso 1 Hacer
				Escribir Sin Saltar " _";
			FinPara
		SiNo
			Escribir " ";
			Para My<-0 Hasta (dimX)*2 Con Paso 1 Hacer
				si (My MOD 2 ) == 0 Entonces
					Escribir Sin Saltar "|";
				SiNo
					Escribir Sin Saltar "-";
				FinSi
			FinPara
		FinSi
		Escribir " ";
		Escribir Sin Saltar"|";
		Para My<-0 Hasta  dimX-1 Con Paso 1 Hacer
			si Mx == operadingY y My == operadingX Entonces
				Escribir Sin Saltar "?|";
			SiNo
				Escribir Sin Saltar data[Mx,My],"|";
			FinSi
			
		FinPara
		
	FinPara
	Escribir "";
	Para My<-0 Hasta dimX-1 Con Paso 1 Hacer
		Escribir Sin Saltar " ¯";
	FinPara
	Escribir " ";
FinFuncion

Funcion printMatrixOperation(dimX,dimY,data1,data2,numMat,operadingX,operadingY,sing)
	Definir Mx,My Como Numero;
	Para Mx<-0 Hasta dimY-1 Con Paso 1 Hacer
		si Mx == 0 Entonces
			Para My<-0 Hasta dimX-1 Con Paso 1 Hacer
				Escribir Sin Saltar " _";
			FinPara
			Escribir Sin Saltar "    ";
			Para My<-0 Hasta dimX-1 Con Paso 1 Hacer
				Escribir Sin Saltar " _";
			FinPara
		SiNo
			Escribir " ";
			Para My<-0 Hasta (dimX)*2 Con Paso 1 Hacer
				si (My MOD 2 ) == 0 Entonces
					Escribir Sin Saltar "|";
				SiNo
					Escribir Sin Saltar "-";
				FinSi
			FinPara
			Escribir Sin Saltar "   ";
			Para My<-0 Hasta (dimX)*2 Con Paso 1 Hacer
				si (My MOD 2 ) == 0 Entonces
					Escribir Sin Saltar "|";
				SiNo
					Escribir Sin Saltar "-";
				FinSi
			FinPara
		FinSi
		Escribir " ";
		Escribir Sin Saltar"|";
		Para My<-0 Hasta  dimX-1 Con Paso 1 Hacer
			si Mx == operadingY y My == operadingX y numMat==1 Entonces
				Escribir Sin Saltar "?|";
			SiNo
				Escribir Sin Saltar data1[Mx,My],"|";
			FinSi
			
		FinPara
		
		si trunc(dimY/2) == Mx Entonces
			Escribir Sin Saltar " + ";
		SiNo
			Escribir Sin Saltar "   ";
		FinSi
		
		Escribir Sin Saltar"|";
		Para My<-0 Hasta  dimX-1 Con Paso 1 Hacer
			si Mx == operadingY y My == operadingX y numMat==2  Entonces
				Escribir Sin Saltar "?|";
			SiNo
				Escribir Sin Saltar data2[Mx,My],"|";
			FinSi
			
		FinPara
	FinPara
	Escribir "";
	Para My<-0 Hasta dimX-1 Con Paso 1 Hacer
		Escribir Sin Saltar " ¯";
	FinPara
	Escribir Sin Saltar "    ";
	Para My<-0 Hasta dimX-1 Con Paso 1 Hacer
		Escribir Sin Saltar " ¯";
	FinPara
	Escribir " ";
FinFuncion
  
Algoritmo sistemaoperaciones
	Definir NUMERO1,NUMERO2,OPERACION,RESULTADO Como Entero;
	Repetir
		Borrar Pantalla;
		Escribir 'MENU PARA VER LAS OPCIONES DISPONIBLES';
		Escribir '1.SUMA';
		Escribir '2.RESTA';
		Escribir '3.MULTIPLICACION';
		Escribir '4.DIVISION';
		Escribir '5.SUMA MATRIZ';
		Escribir '6.RESTA MATRIZ';
		Escribir '7.SUMA Y RESTA MATRICES';
		Escribir '8.SALIR DEL SISTEMA';
		Leer OPERACION;
		Segun OPERACION  Hacer
			1:
				Escribir 'EN ESTA OPCIÓN DEL MENU SE REALIZARA LA SUMA DE 2 NUMEROS';
				Escribir 'INGRESE EL NUMERO 1';
				Leer NUMERO1;
				Escribir 'INGRESE EL NUMERO 2';
				Leer NUMERO2;
				Escribir 'EL RESULTADO ES ',NUMERO1+NUMERO2;
			2:
				Escribir 'EN ESTA OPCIÓN DEL MENU SE REALIZARA LA RESTA DE 2 NUMEROS';
				Escribir 'INGRESE EL NUMERO 1';
				Leer NUMERO1;
				Escribir 'INGRESE EL NUMERO 2';
				Leer NUMERO2;
				Escribir 'EL RESULTADO ES ',NUMERO1-NUMERO2;
			3:
				Escribir 'EN ESTA OPCIÓN DEL MENU SE REALIZARA LA MULTIPLICACIÓN DE 2 NUMEROS';
				Escribir 'INGRESE EL NUMERO 1';
				Leer NUMERO1;
				Escribir 'INGRESE EL NUMERO 2';
				Leer NUMERO2;
				Escribir 'EL RESULTADO ES ',NUMERO1*NUMERO2;
			4:
				Escribir 'EN ESTA OPCIÓN DEL MENU SE REALIZARA LA DIVISIÓN DE 2 NUMEROS';
				Escribir 'INGRESE EL NUMERO 1';
				Leer NUMERO1;
				Escribir 'INGRESE EL NUMERO 2';
				Leer NUMERO2;
				Escribir 'EL RESULTADO ES ',NUMERO1/NUMERO2;
			5:
				Definir dimX,dimY Como Entero;
				Escribir "INGRESE EL NUMERO DE FILAS DE LA MATRIZ";
				Leer dimY;
				Escribir "INGRESE EL NUMERO DE COLUMNAS DE LA MATRIZ";
				Leer dimX;
			6:
				Definir dimX,dimY Como Entero;
				Escribir "INGRESE EL NUMERO DE FILAS DE LA MATRIZ";
				Leer dimY;
				Escribir "INGRESE EL NUMERO DE COLUMNAS DE LA MATRIZ";
				Leer dimX;
			7:				Definir dimX,dimY Como Entero;
				Escribir "INGRESE EL NUMERO DE FILAS DE LA MATRICES";
				Leer dimY;
				Escribir "INGRESE EL NUMERO DE COLUMNAS DE LA MATRICES";
				Leer dimX;
			8:
			De Otro Modo:
				Escribir 'LA OPCIÓN QUE INGRESO NO ESTA DENTRO DEL MENU FAVOR VERIFIQUE Y VUELVA A INTENTARLO';
		FinSegun
		Escribir 'PORFAVOR PRECIONE UNA TECLA PARA CONTINUAR';
		Esperar Tecla;
	Hasta Que OPERACION=8
	Escribir ' GRACIAS POR PREFERIR NUESTRO SOFTWARE';
FinAlgoritmo
