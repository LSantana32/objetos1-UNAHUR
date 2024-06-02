import enfermedades.*

class Persona{
	const enfermedades=[]
	
	var property celulas=3000000
	var temperatura=36

	
	method contraerEnfermedad(unaEnfermedad){enfermedades.add(unaEnfermedad)
											 unaEnfermedad.efecto(self)
	}
											
	method temperatura()=temperatura
	
	method vivirUnDia(){
		enfermedades.forEach{e=>e.efecto(self)}
	}
	
	method enfermedades()=enfermedades
	
	method aumentarTemperatura(unaCantidad){
		temperatura+=unaCantidad}
	
	method destruirCelulas(unaCantidad){
		celulas-=unaCantidad
	}
	
	method estaEnComa()= temperatura>45 or celulas<1000000
	
	method enfermedadQueMasAfecte()=enfermedades.max({e=>e.celulasAmenazadas()})
	
	 method celulasAmenazadasPorAgresivas() =
 		enfermedades.filter{e=>e.esAgresiva(self)}.sum{e=>e.celulasAmenazadas()}
 		
 	method recibirMedicamento(unaCantidad){enfermedades.forEach{e=>e.atenuar(unaCantidad)
 																   if (e.esCurable())self.curar(e)
 	}}
 	
 	method curar(unaEnfermedad)=enfermedades.remove(unaEnfermedad)
 	
 	method contagiar(unaEnfermedad,unaPersona){
 		if (enfermedades.contains(unaEnfermedad))unaPersona.contraerEnfermedad(unaEnfermedad)
 			} 
 	
 	method disminuirTodaLaTemperatura(){
 		temperatura=0
 	}
 	
 	method celulasAmenazadasTotales()= enfermedades.sum{e=>e.celulasAmenazadas()}
 			
}

	




