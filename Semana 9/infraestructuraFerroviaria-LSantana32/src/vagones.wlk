class VagonPasajeros {
	
	const property largo
	const property ancho
	var property estaOrdenado=true
	const property tieneBanio=true
	
	method cantPasajeros() = 
	largo* if(ancho<=3){8}else{10}- if(not estaOrdenado){15}else{0}

	method cargaMaxima()= if (tieneBanio){300}else{800}
	
	method pesoMaximo()= 2000+self.cantPasajeros()*80+self.cargaMaxima()

	method esPopular()=self.cantPasajeros()>50
	
	method esCarguero()= self.cargaMaxima()>=1000
	
	method mantenimiento(){estaOrdenado=true}
	
	method tienePasajeros()= self.cantPasajeros()>0
}


// va a cambiar a lo largo de la vida del vagon, para decidir si const o var
class VagonCarga{
	
	const property cargaMaximaIdeal
	var property maderasSueltas
	
	method cantPasajeros()=0
	
	method cargaMaxima()= cargaMaximaIdeal - 400 * maderasSueltas
	
	method pesoMaximo()= 1500+self.cargaMaxima()
	
	method tieneBanio()=false
	
	method esPopular()=self.cantPasajeros()>50
	
	method esCarguero()= self.cargaMaxima()>=1000
	
	method mantenimiento(){maderasSueltas=0.max(maderasSueltas-2)}
	
	method tienePasajeros()= self.cantPasajeros()>0
}


class VagonDormitorio{
	const property compartimientos
	const property camas     //podria ser var property tambien
	
	method cantPasajeros()= compartimientos*camas
	
	method cargaMaxima()= 1200
	
	method pesoMaximo()=4000+self.cantPasajeros()*80+self.cargaMaxima()
	
	method tieneBanio()=true
	
	method esPopular()=self.cantPasajeros()>50
	
	method esCarguero()= self.cargaMaxima()>=1000
	
	method mantenimiento(){}
	
	method tienePasajeros()= self.cantPasajeros()>0
}