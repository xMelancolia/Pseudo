Algoritmo OrdenamientoPorSeleccion
	
	Definir vector,dim,aux,i,minVector,k Como Entero;
	
	Escribir "Dimension del vector?: ";
	leer dim;
	
	Escribir " Tamaño del vector: ",dim;
	Dimension vector[dim];
	
	
	para i <- 0 hasta dim-1 con paso 1 
		Escribir "----Valores del vector?: ";
		leer vector[i];
		Escribir "Vector,","[",i,"]","valor: ",vector[i];
	FinPara
	
	Escribir "-----------------------------------";
	
	k<-0;
	i<-0;
	aux<-0;
	para k<-0 hasta dim-1 con paso 1 // 0 al 4 no para de comparar 
		para i<-k+1 hasta dim-1 con paso 1//del 0 al 4
			si vector[k] > vector[i]
				aux<-vector[k];
				vector[k]<-vector[i];
				vector[i]<-aux;
			FinSi
		FinPara
	FinPara
	
	para i<- 0 hasta dim-1 Con Paso  1
		Escribir "Vector,","[",i,"]","valor: ",vector[i];
	FinPara
	
	Escribir "-----------------------------------";
	
FinAlgoritmo
