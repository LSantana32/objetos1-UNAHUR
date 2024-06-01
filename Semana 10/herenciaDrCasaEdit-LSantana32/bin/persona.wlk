class Persona{
	const enfermedades=[]
	
	var property celulas=5000000
	var temperatura=36
	var diasEnfermo=0

	
	method contraerEnfermedad(unaEnfermedad)=enfermedades.add(unaEnfermedad)
	
	method vivirUnDia(unaEnfermedad){
		unaEnfermedad.efecto()
		diasEnfermo+=1
	}
	
	method diasEnfermo()=diasEnfermo
	
	method aumentarTemperatura(unaCantidad){
		temperatura+=unaCantidad}
	
	method destruirCelulas(unaCantidad){
		celulas-=unaCantidad
	}
	
	method estaEnComa()= temperatura>45 or celulas<1000000
	
	method enfermedadQueMasAfecte()=enfermedades.max({e=>e.celulasAmenazadas()})
}

