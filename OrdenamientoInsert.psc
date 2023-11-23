///El 1° elemento se puede omitir porque no hay elementos a la izquierda (lista ordenada)

	///Cada uno de los elementos siguientes (insert) se va comparar con su predecesor y si 
	///	insert resulta menor se intercambia si hay intercambio se continua con el siguiente predecesor mientras 
	///	haya elementos. Cabe destacar que siempre se compara el mismo valor insert lo que garantiza su correcta
	///	inserción.
	///	Si a izquierda no hay elementos o no hubo intercambio la lista ordenada tiene un elemento mas
	///	y se pasa al siguiente insert, se repite el proceso anterior y así sucesivamente hasta finalizar
	///	el arreglo.	
///FinProceso
///					FinSi
Algoritmo MetodoPorInserccion

	definir i,vector,dim,aux,k Como Entero;
	definir insert Como Entero;
	
	dim <- 10;
	dimension vector[dim];
	i <- 0;
	vector[0]<-7;
	vector[1]<-3;
	vector[2]<-1;
	vector[3]<-2;
	vector[4]<-6;
	vector[5]<-4;
	vector[6]<-0;
	vector[7]<- -2;
	vector[8]<-9;
	vector[9]<-11;
	aux <- 0;
	
	Escribir  Sin Saltar"{";
	Para i<-0 Hasta dim-1 Con Paso 1
		si  (dim-1=i)
			Escribir Sin Saltar vector[i]; 
		SiNo
			Escribir Sin Saltar vector[i],", "; 
		FinSi
	FinPara
	Escribir "}";
	Escribir "----------";
	
//	Para ordenado<-0 hasta dim-1 con paso 1 
//		insert<-ordenado;
//		mientras insert>0 y vector[insert] < vector[insert-1]
//			aux<-vector[insert-1];
//			vector[insert-1]<-vector[insert];
//			vector[insert]<-aux;
//		FinMientras
//	FinPara
	Para i<-0 hasta dim-1 con paso 1 //i=2
		insert<-vector[i];//insert=1
		k<-i-1;//k=1
		mientras (k>=0 y vector[k]>insert)// Si ambas condiciones entra en segunda interaccion
			aux<-vector[k+1];// aux <- 3
			vector[k+1]<-vector[k];//vector[k+1]<-7
			vector[k]<-aux;//vector[k]<-3
			k<-k-1;//-1
		FinMientras
		vector[k+1]<-insert;//vector[0]<-3
	FinPara
	
	Escribir  "Vector ordenado ascendente por Insercion: ";
	Escribir  Sin Saltar "{"; 
	Para i<-0 Hasta dim-1 Con Paso 1
		si  (dim-1=i)
			Escribir Sin Saltar vector[i]; 
		SiNo
			Escribir Sin Saltar vector[i],", "; 
		FinSi
	FinPara
	Escribir "}";
	
	
FinAlgoritmo
