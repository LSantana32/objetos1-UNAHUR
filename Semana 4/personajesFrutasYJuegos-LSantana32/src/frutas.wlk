object manzana {
	var estado = verde
	method energia()= estado.energia()
	method madurar(){
		estado = roja
	}
	method cambiarEstado(unEstado){
		estado= unEstado
	}
	method efectoCambioDia(){
		estado=amarilla
	}
}

object roja{
	method energia()=14
}
object amarilla{
	method energia()=5
}

object verde{
	method energia()=7
}

object mandarina{
	var peso = 60
	method energia()= 2*(peso/10)
	method peso() = peso
	method peso(gramos){
		peso=gramos
	}
	method efectoCambioDia(){
		peso=peso*0.9
	}
}

object banana{
	method energia()= amarilla.energia()
	method efectoCambioDia(){}
}

object agua{
	method energia()=0
	method efectoCambioDia(){}
}
