import persona.*

class Enfermedad{
	
	var property celulasAmenazadas=0
	var property esAgresiva=false
	
	method efecto(unaPersona)
	
}


class EnfermedadInfecciosa inherits Enfermedad{
	override method efecto(unaPersona){ unaPersona.aumentarTemperatura(celulasAmenazadas/1000)}
	
	override method esAgresiva(unaPersona)= celulasAmenazadas> unaPersona.celulas()*0.10
	
	method reproducirCelulasAmenazadas(){celulasAmenazadas*=2}
}


class EnfermedadAutoInmune inherits Enfermedad{
	override method efecto(unaPersona){ unaPersona.destruirCelulas(celulasAmenazadas)}

	override method esAgresiva(unaPersona)= unaPersona.diasEnfermo()>=30
}
