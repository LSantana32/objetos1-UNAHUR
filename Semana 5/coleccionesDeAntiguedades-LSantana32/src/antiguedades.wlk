object estatua {
	var estaEnMalEstado=true
	method anios()=70
	method estaEnMalEstado()= estaEnMalEstado
	method restaurar(){
		estaEnMalEstado=false
	}		
}

object brujula {
	var estaEnMalEstado=true
	method anios()=127
	method estaEnMalEstado()= estaEnMalEstado
	method restaurar(){
		estaEnMalEstado=false
	}		
}

object botella {

	method anios()=320
	method estaEnMalEstado()= false
	method restaurar(){}		
}

object pc {
	var estaEnMalEstado=true
	method anios()=30
	method estaEnMalEstado()= estaEnMalEstado
	method restaurar(){
		estaEnMalEstado=false
	}		
}

object maquinaDeEscribir {

	method anios()=210
	method estaEnMalEstado()= false
	method restaurar(){}		
}

object katana {
	var estaEnMalEstado=true
	method anios()=20
	method estaEnMalEstado()= estaEnMalEstado
	method restaurar(){
		estaEnMalEstado=false
	}		
}

object medalla {

	method anios()=70
	method estaEnMalEstado()= false
	method restaurar(){}		
}
