Algoritmo OrdenamientoBurbuja
	
	definir k,i,vector,long,aux,contador Como Entero;
	
	long <- 6;
	Dimension vector[long];
	
	vector[0]<-8;
	vector[1]<-5;
	vector[2]<-1;
	vector[3]<-3;
	vector[4]<-3;
	vector[5]<-0;
	
	para i <-0 hasta long-1 con paso 1
		Escribir sin saltar " ",vector[i];
	FinPara
	Escribir " ";
	
	aux <- 0;
	///long 5 / 0-4
	para k<-0 hasta long - 1 con paso 1
		para i <- 0 hasta long-2-k con paso 1 //3/2
			si vector[i] > vector[i+1]
				aux <- vector[i];
				vector[i] <- vector[i+1];
				vector[i+1]<-aux;
			FinSi
		FinPara
	FinPara
	
	para contador <-0 hasta long-1 con paso 1
		Escribir sin saltar " ",vector[contador];
	FinPara
	
	
FinAlgoritmo
