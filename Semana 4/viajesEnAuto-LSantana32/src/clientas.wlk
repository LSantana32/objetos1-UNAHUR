

object ludmila {		
	method valorPorKm()= 18
}

object anaMaria{
	var valorPorKm=0
	
	method comoEstaEconomicamente(estado){
		valorPorKm=estado.valorPorKm()                            //para no hacerlo con if
	}
	
	method valorPorKm()=valorPorKm	
}


object estable{
	method valorPorKm()=30
}

object inestable{
	method valorPorKm()=25
}



object teresa{
	var valorPorKm=22
	
	method valorPorKm(unValor){
		valorPorKm=unValor 
	}
	method valorPorKm()= valorPorKm
	
}

object melina{
	var valorPorKm=0
	var clientaReemplazada=ludmila
	
	method clientaReemplazada(unaClienta){
		clientaReemplazada=unaClienta
		valorPorKm=clientaReemplazada.valorPorKm()-3	
	}
	method clientaReemplazada()=clientaReemplazada
	
	method valorPorKm()=valorPorKm
}

