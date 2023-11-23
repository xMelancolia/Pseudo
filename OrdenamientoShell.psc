Algoritmo OrdenamientoShell
	
	Definir i,k,vec,dim,aux como entero;
	definir cambio como logico;
	dim <- 10;
	dimension vec[dim];
	definir jump Como real;
	i<-0;
	
	vec[0]<- 5;
	vec[1]<- 8;
	vec[2]<- 2;
	vec[3]<- 1;
	vec[4]<- 6;
	vec[5]<- 7;
	vec[6]<- 9;
	vec[7]<- 3;
	vec[8]<- 4;
	vec[9]<- 3;
	
	Escribir  Sin Saltar "{";
	Para i <- 0 hasta dim -1 con paso 1
		si(dim-1=i)
			Escribir sin saltar vec[i];
		sino
			Escribir sin saltar vec[i],", ";
		finsi
	FinPara
	Escribir "}";
	
	jump<-trunc(dim/2);
	cambio<- Verdadero;
	
	mientras jump >= 1
		cambio <-falso;
		para i <- 0 hasta dim-1-jump con paso 1
			si vec[i+jump] < vec[i]
				cambio <- Verdadero;
				aux <- vec[i];
				vec[i]<-vec[i+jump];
				vec[i+jump]<-aux;
			FinSi
		FinPara
		si cambio=Falso
			jump <-trunc(jump/2);
		FinSi
	FinMientras
	
	Escribir "--------------------------------------------";
	
	i<-0;
	Escribir Sin Saltar "Vector ordenado ascendente por metodo Shell: {"; 
	Para i<-0 Hasta dim-1 Con Paso 1
		si  (dim-1=i)
			Escribir Sin Saltar vec[i]; 
		SiNo
			Escribir Sin Saltar vec[i],", "; 
		FinSi
	FinPara
	Escribir "}";
	
FinAlgoritmo
