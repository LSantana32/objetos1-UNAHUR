class Plaga {
	var property poblacion=0
	
	method nivelDeDanio()= poblacion
	method transmiteEnfermedad()= poblacion>=10 and self.segundaCondicion()
	method segundaCondicion()
	method atacar(unElemento){
		unElemento.recibirAtaque(self)
		self.efectoDeAtaque()
	}
	method efectoDeAtaque(){poblacion*=1.1}
}

class Cucarachas inherits Plaga{
	var property pesoPromedioDeCadaUna=0
	override method nivelDeDanio()= super()/2
	override method segundaCondicion()=pesoPromedioDeCadaUna>=10
	override method efectoDeAtaque(){
		super()
		pesoPromedioDeCadaUna+=2
	}
}

class Pulgas inherits Plaga{
	override method nivelDeDanio()= super()*2 
	override method segundaCondicion() = true
}

class Garrapatas inherits Pulgas{
	override method efectoDeAtaque(){
		poblacion*=1.2
	}
}

class Mosquitos inherits Plaga{
	override method segundaCondicion()= poblacion%3==0
}