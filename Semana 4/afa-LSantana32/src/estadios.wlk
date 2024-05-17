object bombonera {
	method capacidad() = 50000
	method alquilerDeEstadio() = 20
}

object monumental {
	const capacidadTotal = 1000000
	var capacidadDelAvance = 55
	//Le puse una nueva condicion. Se incrementa de a 5 y nunca es mayor a 100
	method nuevosAvances() {
		capacidadDelAvance = 100.min(capacidadDelAvance+5)
	}
	method capacidad() = capacidadTotal * (capacidadDelAvance / 100)
	method alquilerDeEstadio() = 50
	
}