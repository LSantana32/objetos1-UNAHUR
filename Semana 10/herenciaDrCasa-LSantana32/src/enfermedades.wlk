import persona.*

class Enfermedad{
	
	var property celulasAmenazadas=0
	
	method atenuar(unaCantidad){
		celulasAmenazadas= 0.max(celulasAmenazadas-unaCantidad/* en realidad seria unaCantidad*15 pero esta mal redactado el ejercicio */)
	}
	
	method esCurable()= celulasAmenazadas==0
}



class EnfermedadInfecciosa inherits Enfermedad{
	
	method efecto(unaPersona){ 
	 	unaPersona.aumentarTemperatura(celulasAmenazadas/1000)
	 }
	
	method esAgresiva(unaPersona)= celulasAmenazadas> unaPersona.celulas()*0.10
	
	method reproducirCelulasAmenazadas(){celulasAmenazadas*=2}
}


class EnfermedadAutoInmune inherits Enfermedad{
	var dias=0
	
	method efecto(unaPersona){ 
		unaPersona.destruirCelulas(celulasAmenazadas)
		dias+=1
	}

	method esAgresiva(unaPersona)= dias>=30
}

object laMuerte inherits Enfermedad{
	
	method efecto(unaPersona){
		unaPersona.disminuirTodaLaTemperatura()
	}
	method esAgresiva(unaPersona)=true
	override method esCurable()=false
	override method atenuar(unaCantidad){}

}