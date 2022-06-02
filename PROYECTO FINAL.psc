// ESTE SOFTWARE FUE DESARROLLADO POR LOS INGENIEROS
// HERBERTH LIMA
//ESTIVEN LAFERRE
// JAVIER DE LA CRUZ 

//funcion para pintar un arreglo solo
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
			si Mx == operadingX y My == operadingY Entonces
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

//funcion para pintar 2 arreglos con un signo en medio
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
			si Mx == operadingX y My == operadingY y numMat==1 Entonces
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
			si Mx == operadingX y My == operadingY y numMat==2  Entonces
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

//regresa un arreglo lleno de 0
Funcion  getEmptyArray(data, dimX, dimY)
	Definir forX,forY Como Entero;
	Para forX <- 0 Hasta dimX-1 Con Paso 1 Hacer
		Para forY <- 0 Hasta dimY-1 Con Paso 1 Hacer
			data[forX,forY] <- 0;
		FinPara
	FinPara
FinFuncion

//llena el arreglo con datos seleccionados por el usuario
funcion readArray(data, dimX, dimY)
	Definir forX,forY Como Entero;
	Para forX <- 0 Hasta dimX-1 Con Paso 1 Hacer
		Para forY <- 0 Hasta dimY-1 Con Paso 1 Hacer
			Escribir "Ingrese el numero en la casilla con el singo de??? ";
			printMatrix(dimX,dimY, data, forX, forY);
			leer data[forX,forY];
		FinPara
	FinPara
FinFuncion

//llena 2 arrays con datos seleccionado por el usuario
funcion readArrayOperations(data1,data2, dimX, dimY,sing)
	Definir forX,forY Como Entero;
	Para forX <- 0 Hasta dimX-1 Con Paso 1 Hacer
		Para forY <- 0 Hasta dimY-1 Con Paso 1 Hacer
			Escribir "Ingrese el numero en la casilla con el singo de <?>  ";
			printMatrixOperation(dimX,dimY, data1,data2,1, forX, forY,sing);
			leer data1[forX,forY];
		FinPara
	FinPara
	Para forX <- 0 Hasta dimX-1 Con Paso 1 Hacer
		Para forY <- 0 Hasta dimY-1 Con Paso 1 Hacer
			Escribir "Ingrese el numero en la casilla con el singo de <?>  ";
			printMatrixOperation(dimX,dimY, data1,data2,2, forX, forY,sing);
			leer data2[forX,forY];
		FinPara
	FinPara
FinFuncion

//regresa la suma de todos los numeros dentro del areglo
funcion res<-sumarArray(data, dimX, dimY)
	Definir forX,forY, res Como Entero;
	res<-0;
	Para forX <- 0 Hasta dimX-1 Con Paso 1 Hacer
		Para forY <- 0 Hasta dimY-1 Con Paso 1 Hacer
			res <- res+data[forX,forY];
		FinPara
	FinPara	
FinFuncion

//regresa la resta de todos los numeros dentro del array
funcion res<-restarArray(data, dimX, dimY)
	Definir forX,forY, res Como Entero;
	res<-0;
	Para forX <- 0 Hasta dimX-1 Con Paso 1 Hacer
		Para forY <- 0 Hasta dimY-1 Con Paso 1 Hacer
			res <- res-data[forX,forY];
		FinPara
	FinPara	
FinFuncion

//regresa un arreglo con el resultado de la suma de 2 arreglos
funcion sumarArrays(dataRes,data1,data2, dimX, dimY)
	Definir forX,forY, res Como Entero;
	res<-0;
	Para forX <- 0 Hasta dimX-1 Con Paso 1 Hacer
		Para forY <- 0 Hasta dimY-1 Con Paso 1 Hacer
			dataRes[forX,forY] <- data1[forX,forY]+data2[forX,forY];
		FinPara
	FinPara	
FinFuncion

//regresa un arreglo con el resultado de la resta de 2 arreglos
funcion restarArrays(dataRes,data1,data2, dimX, dimY)
	Definir forX,forY, res Como Entero;
	res<-0;
	Para forX <- 0 Hasta dimX-1 Con Paso 1 Hacer
		Para forY <- 0 Hasta dimY-1 Con Paso 1 Hacer
			dataRes[forX,forY] <- data1[forX,forY]-data2[forX,forY];
		FinPara
	FinPara	
FinFuncion

Algoritmo sistemaOperaciones
	Definir NUMERO1,NUMERO2,OPERACION,RESULTADO Como Entero;
	Definir dimX,dimY Como Entero;
	Definir Array,Array1, Array2,ArrayRes Como Entero;
	Repetir
		Borrar Pantalla;
		Escribir "MENU PARA VER LAS OPCIONES DISPONIBLES";
		Escribir "1.SUMA";
		Escribir "2.RESTA";
		Escribir "3.MULTIPLICACION";
		Escribir "4.DIVISION";
		Escribir "5.SUMA DE MATRIZ";
		Escribir "6.RESTA DE MATRIZ";
		Escribir "7.SUMA DE MATRICES";
		Escribir "8.RESTA DE MATRICES";
		Escribir "9.SALIR DEL SISTEMA";
		Leer OPERACION;
		Segun OPERACION  Hacer
			1:
				Escribir "EN ESTA OPCIÓN DEL MENU SE REALIZARA LA SUMA DE 2 NUMEROS";
				Escribir "INGRESE EL NUMERO 1";
				Leer NUMERO1;
				Escribir "INGRESE EL NUMERO 2";
				Leer NUMERO2;
				Escribir "EL RESULTADO ES ",NUMERO1+NUMERO2;
			2:
				Escribir "EN ESTA OPCIÓN DEL MENU SE REALIZARA LA RESTA DE 2 NUMEROS";
				Escribir "INGRESE EL NUMERO 1";
				Leer NUMERO1;
				Escribir "INGRESE EL NUMERO 2";
				Leer NUMERO2;
				Escribir "EL RESULTADO ES ",NUMERO1-NUMERO2;
			3:
				Escribir "EN ESTA OPCI?N DEL MENU SE REALIZARA LA MULTIPLICACIÓN DE 2 NUMEROS";
				Escribir "INGRESE EL NUMERO 1";
				Leer NUMERO1;
				Escribir "INGRESE EL NUMERO 2";
				Leer NUMERO2;
				Escribir "EL RESULTADO ES ",NUMERO1*NUMERO2;
			4:
				Escribir "EN ESTA OPCIÓN DEL MENU SE REALIZARA LA DIVISIÓN DE 2 NUMEROS";
				Escribir "INGRESE EL NUMERO 1";
				Leer NUMERO1;
				Escribir "INGRESE EL NUMERO 2";
				Leer NUMERO2;
				Escribir "EL RESULTADO ES ",NUMERO1/NUMERO2;
			5:
				Escribir "INGRESE EL NUMERO DE FILAS DE LA MATRIZ";
				Leer dimY;
				Escribir "INGRESE EL NUMERO DE COLUMNAS DE LA MATRIZ";
				Leer dimX;
				Dimension Array(dimX, dimY);
				getEmptyArray(Array, dimX, dimY);
				readArray(Array, dimX, dimY);
				Escribir "LA MATRIZ FINAL ES :";
				printMatrix(dimX,dimY, Array, -1, -1);
				Escribir "EL RESULTADO DE SU SUMA ES :";
				Escribir sumarArray(Array, dimX, dimY);
			6:
				Escribir "INGRESE EL NUMERO DE FILAS DE LA MATRIZ";
				Leer dimY;
				Escribir "INGRESE EL NUMERO DE COLUMNAS DE LA MATRIZ";
				Leer dimX;
				Dimension Array(dimX, dimY);
				getEmptyArray(Array, dimX, dimY);
				readArray(Array, dimX, dimY);
				Escribir "LA MATRIZ FINAL ES :";
				printMatrix(dimX,dimY, Array, -1, -1);
				Escribir "EL RESULTADO DE SU RESTA ES :";
				Escribir restarArray(Array, dimX, dimY);
			7:				
				Escribir "INGRESE EL NUMERO DE FILAS DE LA MATRICES";
				Leer dimY;
				Escribir "INGRESE EL NUMERO DE COLUMNAS DE LA MATRICES";
				Leer dimX;
				Dimension Array1(dimX, dimY);
				Dimension Array2(dimX, dimY);
				Dimension ArrayRes(dimX, dimY);
				getEmptyArray(Array1, dimX, dimY);
				getEmptyArray(Array2, dimX, dimY);
				readArrayOperations(Array1,Array2,dimX,dimY,"+");
				Escribir "LA OPERACION ES LA SIGUIENTE :";
				printMatrixOperation(dimX,dimY, Array1,Array2,-1, -1, -1,"+");
				sumarArrays(ArrayRes,Array1,Array2,dimX,dimY);
				Escribir "EL RESULTADO DE LA SUMA DE MATRICES ES EL SIGUIENTE:";
				printMatrix(dimX,dimY,ArrayRes,-1,-1);
			8:
				Escribir "INGRESE EL NUMERO DE FILAS DE LA MATRICES";
				Leer dimY;
				Escribir "INGRESE EL NUMERO DE COLUMNAS DE LA MATRICES";
				Leer dimX;
				Dimension Array1(dimX, dimY);
				Dimension Array2(dimX, dimY);
				Dimension ArrayRes(dimX, dimY);
				getEmptyArray(Array1, dimX, dimY);
				getEmptyArray(Array2, dimX, dimY);
				readArrayOperations(Array1,Array2,dimX,dimY,"-");
				Escribir "LA OPERACION ES LA SIGUIENTE :";
				printMatrixOperation(dimX,dimY, Array1,Array2,-1, -1, -1,"-");
				restarArrays(ArrayRes,Array1,Array2,dimX,dimY);
				Escribir "EL RESULTADO DE LA RESTA DE MATRICES ES EL SIGUIENTE:";
				printMatrix(dimX,dimY,ArrayRes,-1,-1);
			De Otro Modo:
				Escribir "LA OPCIÓN QUE INGRESO NO ESTA DENTRO DEL MENU FAVOR VERIFIQUE Y VUELVA A INTENTARLO";
		FinSegun
		Escribir "PORFAVOR PRECIONE UNA TECLA PARA CONTINUAR";
		Esperar Tecla;
	Hasta Que OPERACION=9
	Escribir " GRACIAS POR PREFERIR NUESTRO SOFTWARE";
FinAlgoritmo
