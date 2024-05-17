object voley{
	var cantidadDeMinutos=0
	method cantidadDeMinutos(minutos){
		cantidadDeMinutos=minutos
	}
	method energia()= (cantidadDeMinutos*2)*-1
}

object futbol{
	var energia=-10
	method energia()=energia
	method energia(unValor){
		energia= unValor.abs() * -1
	}
}

object aerobic{
	var temperaturaActual=18
	method temperaturaActual()= temperaturaActual
	method temperaturaActual(unValor){
		temperaturaActual=unValor
	}
	method energia()= temperaturaActual*0.5
}

object basquet{
	method energia()=10
}