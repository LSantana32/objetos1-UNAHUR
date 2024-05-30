class Hogar {
	var property nivelDeMugre=0
	var property confortQueOfrece=0
	method esBueno()= confortQueOfrece/2>nivelDeMugre
	method ataqueQueRecibe(unaPlaga){
		nivelDeMugre+=unaPlaga.nivelDeDanio()
	}
}

class Huerta {
	var property capacidadDeProduccion=0
	method esBueno()= capacidadDeProduccion>nivelDeProduccion.nivel()
	method ataqueQueRecibe(unaPlaga){
		capacidadDeProduccion-= unaPlaga.nivelDeDanio()*0.10 + if (unaPlaga.transmiteEnfermedad())10 else 0
	}
}

object nivelDeProduccion{
	var property nivel=1000
}

class Mascota{
	var property nivelDeSalud=1000
	method esBueno()=nivelDeSalud>=250
	method ataqueQueRecibe(unaPlaga){
		nivelDeSalud-= if (unaPlaga.transmiteEnfermedad())unaPlaga.nivelDeDanio()else 0
	}
}

