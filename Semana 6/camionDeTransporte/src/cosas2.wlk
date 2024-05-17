object knightRider {
	method peso()=500
	method nivelPeligrosidad()=10
	method bultos()=1
	method transformar(){}
}

object bumblebee {
	var esRobot=true
	var esAuto=false

	
	method modoRobot(){
		esRobot=true
		esAuto=false
	}
	method modoAuto(){
		esAuto=true
		esRobot=false
	}
	
	method peso()=800
	method nivelPeligrosidad(){return if (esAuto){15} else{30}}
	method bultos()=2
	method transformar(){self.modoRobot()}
}

object paqueteLadrillos{
	var cantidadDeLadrillos=0
	method agregarDeLadrillos(unValor){cantidadDeLadrillos+=unValor}
	
	method peso()=2*cantidadDeLadrillos
	method nivelPeligrosidad()=2
	method bultos(){ return if (cantidadDeLadrillos<=100){1}else if(cantidadDeLadrillos.between(101,300)){2}else{3}}
	method transformar(){self.agregarDeLadrillos(12)}
}


object arena {
	var property peso
	method nivelPeligrosidad()=1
	method bultos()=1
	method transformar(){self.peso(20)}
}

object bateriaAntiarea {
	var tieneMisiles=false
	method cargarMisiles(){tieneMisiles=true}
	method tieneMisiles()=tieneMisiles
	
	method peso(){return if (tieneMisiles){300}else{200}}
	method nivelPeligrosidad(){return if (tieneMisiles){100}else{0}}
	method bultos(){return if (tieneMisiles){2}else{1}}
	method transformar(){self.cargarMisiles()}
}

object contenedor {
	const objetos=[knightRider]
	
	method addObject(unObjeto)= objetos.add(unObjeto)
	method removeObject(unObjeto)= objetos.remove(unObjeto)
	
	method peso()= objetos.sum({objeto=>objeto.peso()})+100
	method nivelPeligrosidad(){ return if(objetos.isEmpty()){0}else{objetos.max({objeto=>objeto.nivelPeligrosidad()})}}
	method bultos()=objetos.sum({objeto=>objeto.bultos()})+1
	method transformar(){objetos.transformar()}
}



object residuosRadioactivos {
	var property peso
	method nivelPeligrosidad()=200
	method bultos()=1
	method transformar(){self.peso(15)}
}

object embalajeSeguridad {
	var objeto=knightRider
	method setObjeto(unObjeto){objeto=unObjeto}
	
	method peso()=objeto.peso()
	method nivelPeligrosidad()=objeto.nivelPeligrosidad()*0.5
	method bultos()=2
	method transformar(){}
	
}