
object bombon {
	var peso=15
	method precio()= 5
	method sabor()= frutilla
	method peso()=peso
	method esLibreDeGluten()= true
	method recibirMordisco(){
		peso= peso*0.8 -1
	}
}

object alfajor {
	var peso=300
	method precio()= 12
	method sabor()= chocolate
	method peso()=peso
	method esLibreDeGluten()= false
	method recibirMordisco(){
		peso= peso*0.8
	}
}

object caramelo {
	var peso=5
	method precio()= 1
	method sabor()= frutilla
	method peso()=peso
	method esLibreDeGluten()= true
	method recibirMordisco(){
		peso= peso-1
	}
}

object chupetin {
var peso=7
	method precio()= 2
	method sabor()= naranja
	method peso()=peso
	method esLibreDeGluten()= true
	method recibirMordisco(){
		peso= 2.max(peso*0.9)
	}	
}

object oblea {
	var peso=250
	method precio()= 5
	method sabor()= vainilla
	method peso()=peso
	method esLibreDeGluten()= false
	method recibirMordisco(){
		peso = if (peso >= 70) peso*0.5 else peso*0.75
	}
}

object chocolatin {
	var peso=0
	var pesoInicial=0
	
	method peso(unValor){
		peso=unValor
		pesoInicial=unValor
	}
	
	method sabor()= chocolate
	
	method precio()=pesoInicial*0.50
	
	method esLibreDeGluten()= false
	method recibirMordisco(){
		peso= peso-2
	}
}

object golosinaBaniada{
	var golosina=oblea

	
	method setGolosina(unaGolosina){
		golosina= unaGolosina
	}
	method peso()=golosina.peso()+4
	
	method precio()=golosina.precio()+2
	
	method sabor()= golosina.sabor()
	
	method esLibreDeGluten()= golosina.esLibreDeGluten()
	
	method recibirMordisco()= golosina.recibirMordisco() -2
}

object pastillaTuttiFrutti{
	var esLibreDeGluten= true
	var precio=0
	var sabor=chocolate
	
	method peso()=5
	
	method esLibreDeGluten(unValor){
		esLibreDeGluten= unValor
	}
	method precio(){
		precio= if(esLibreDeGluten) 7 else 10
	}
	method recibirMordisco(){
		sabor= sabor.siguienteSabor()
	}
}

/////////////SABORESS

object chocolate{
	method siguienteSabor()=naranja
}  

object naranja{
	method siguienteSabor()=frutilla
}
object frutilla{
	method siguienteSabor()=chocolate
}
object vainilla{
	method siguienteSabor(){}
}

