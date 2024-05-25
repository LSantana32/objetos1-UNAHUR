object registroProduccion {
	const registro=[43,18,49,62,33,39]
	
	method registro()=registro
	method sumarAlRegistro(unValor)=registro.add(unValor)
	method quitarDelRegistro(unValor)=registro.remove(unValor)
	
	method algunDiaSeProdujo(cantidad)= registro.contains(cantidad)
	method maximoValorDeProduccion()= registro.max()
	method valoresDeProduccionesPares()=registro.filter({valor=>valor.even()})  //even par, odd impar
	method produccionEsAcotada(n1,n2)=registro.all({valor=>valor.between(n1,n2)})
	method produccionesSuperiorA(cuanto)=registro.filter({valor=>valor>cuanto})
	method produccionesSumando(n)=registro.map({valor=>valor+n})
	method totalProduccion()=registro.sum()
	method ultimoValorDeProduccion()=registro.last()
	method cantidadProduccionesMayorALaPrimera()=registro.count({valor=>valor>registro.first()})
	
}
