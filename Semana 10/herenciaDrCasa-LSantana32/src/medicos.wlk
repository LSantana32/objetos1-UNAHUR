import persona.*

class Medico inherits Persona {
	
	method darMedicamento(unaCantidad,unaPersona){
		unaPersona.recibirMedicamento(unaCantidad)
	}
	
	
}

class MedicoEnJefe inherits Persona{
	method darOrden(unMedico,unaCantidad,unaPersona){
		unMedico.darMedicamento(unaCantidad,unaPersona)
	}
}