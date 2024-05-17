import objetos.*
import bolichito.*

//PERSONAS//

object rosa {
	method leGusta(algo){
		return(algo.peso() < 2001)
	}
}

object estefania {
	method leGusta(algo){
		return(algo.color().esFuerte())
	}
}

object luisa {
	method leGusta(algo){
		return(algo.material().esBrillante())
	}
}

object juan {
	method leGusta(algo){
		return(algo.peso().between(1200,1800) or algo.color().esFuerte()==false)
	}
}

