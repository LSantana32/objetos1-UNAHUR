import antiguedades.*

object casaDeAntiguedades {
	const antiguedades=[]
	
	method antiguedades()=antiguedades
	method adquirirAntiguedad(unaAntiguedad)= antiguedades.add(unaAntiguedad)
	method adquirirAntiguedades(listaDeAntiguedades)=antiguedades.addAll(listaDeAntiguedades)
	method hayEnStock(unaAntiguedad)=antiguedades.contains(unaAntiguedad)
	//o podria ser method hayEnStock()=antiguedades.size()>0 si no quiero buscar una en particular
	method cuantasAntiguedadesHay()=antiguedades.size()
	method ultimaAntiguedadAdquirida()=antiguedades.last()
	method esMuyAntigua(unaAntiguedad)=unaAntiguedad.anios()>100
	method aniosDeAntiguedad(unaAntiguedad)=antiguedades
	method restaurarPrimeraAntiguedad()=antiguedades.first().restaurar()
	method restaurarUltimaAntiguedad()=antiguedades.last().restaurar()
	method restaurarAntiguedad(unaPosicion)=antiguedades.get(unaPosicion).restaurar()
	method restaurarAntiguedadSiEstaEnMalEstado(unaAntiguedad){//	falta hacer
	}
	method venderTodo()=antiguedades.clear()
	
}
