object lobo{
	var peso=10
	
	method estaSaludable(){
		return(peso.between(20,150))
	}
	
	method comer(algo){
		peso=peso+(algo.peso()*0.1)
	}
	
	method sufreCrisis(){
		peso=10
	}
	method peso(){
		return(peso)
	}
	
	method correr(){
		peso=peso-1
	}
	
	method soplarCasa(chanchito,cantidad,tipoDeCasa){
		peso= 0.max(peso-chanchito.peso()*cantidad - tipoDeCasa.resistencia())
	}
}

object caperucita{
	var peso=60
	method llevaCanastaConManzanas(){
		peso=peso+canastaConManzanas.peso()
	}
	method peso(){
		return(peso)
	}
}

object canastaConManzanas{
	var peso=0
	method numDeManzanas(cantidad){
		peso=peso+cantidad*manzana.peso()
	}
	method peso(){
		return(peso)
	}	
}


object manzana{
	method peso(){
		return(0.2)
	}
}

object abuela {
	method peso(){
		return(50)
	}
}

object cazador {
	method peso(){
		return(70)
	}
	method gritasParaParecerMasImponente(){
		lobo.sufreCrisis()
	}
}

object casaPaja{
	method resistencia(){
		return(0)
	}
}

object casaMadera{
	method resistencia(){
		return(5)
	}
}

object casaLadrillo{
	var resistencia=2
	method cantidadLadrillos(cantidad){
		resistencia=resistencia*cantidad
	}
	method resistencia(){
		return(resistencia)
	}
	
}
object chanchito{
	method peso(){
		return(40)
	}
}


