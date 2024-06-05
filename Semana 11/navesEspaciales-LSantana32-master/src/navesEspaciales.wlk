class Nave {
	var direccion
	var velocidad
	var combustible=0
	
	method initialize(){
		if(not direccion.between(-10,10))
			self.error("direccion incorrecta, debe ser entre -10,10")
	}
	
	method acelerar(cuanto){
		velocidad= 100000.min(velocidad+cuanto)
	}
	
	method desacelerar(cuanto){
		velocidad=0.max(velocidad-cuanto)
	}
	
	method irHaciaElSol(){
		direccion=10
	}
	
	method escaparDelSol(){
		direccion=-10
	}
	
	method ponerseParalelaAlSol(){
		direccion=0
	}
	
	method acercarseUnPocoAlSol(){
		direccion=10.min(direccion+1)
	}
	
	method alejarseUnPocoDelSol(){
		direccion=(-10).max(direccion-1)
	}

	method prepararViaje() //clase abstracta, significa que sus tienen que sobreescribir si o si el method

	method cargarCombustible(unaCantidad){
		combustible+=unaCantidad
	}
	method descargarCombustible(unaCantidad){
		combustible= 0.max(combustible - unaCantidad)
	}
	
	method accionAdicionalComun(){
		self.cargarCombustible(30000)
		self.acelerar(500)
	}
	method accionAdicional()
	
	method estaTranquila()=
	combustible>=4000 and velocidad<=12000
	
	method recibirAmenaza(){
		self.escapar()
		self.avisar()
	}
	
	method escapar()
	method avisar()
	
	method estaDeRelajo()= self.estaTranquila() and self.segundaCondicion()
	
	
	method segundaCondicion()
}

class NaveBaliza inherits Nave{
	var color="verde"
	var huboCambioColor=false
	
	method initialize(){
		self.validarColores(color)
	}
	
	method validarColores(unColor) {
		if (not ["rojo","verde","azul"].contains(unColor))
			self.error("color no valido. Colores validos: rojo,verde,azul")
	}
	
	method cambiarColorDeBaliza(nuevoColor){
		self.validarColores(nuevoColor)
		color=nuevoColor
		huboCambioColor=true
	}
	override method prepararViaje(){
		self.cambiarColorDeBaliza("verde")
		self.ponerseParalelaAlSol()
	}
	override method accionAdicional(){
		self.accionAdicionalComun()
	}
	override method estaTranquila()=super() and color!="rojo"
	
	override method escapar(){
		self.irHaciaElSol()
	}
	override method avisar(){
		self.cambiarColorDeBaliza("rojo")
	}
	override method segundaCondicion()= not huboCambioColor
}

class NavePasajero inherits Nave{
	var property cantPasajeros=0
	var cantComida=0
	var cantBebida=0
	
	method agregarComida(unaCantidad){
		cantComida+=unaCantidad
	}
	
	method agregarBebida(unaCantidad){
		cantBebida+=unaCantidad
	}
	
	method eliminarComida(unaCantidad){
		cantComida-=unaCantidad
	}
	
	method eliminarBebida(unaCantidad){
		cantBebida-=unaCantidad
	}
	
	override method prepararViaje(){
		self.agregarComida(4*cantPasajeros)
		self.agregarBebida(6*cantPasajeros)
		self.acercarseUnPocoAlSol()
	}
	override method accionAdicional(){
		self.accionAdicionalComun()
	}
	
	override method escapar(){
		velocidad*=2
	}
	
	override method avisar(){
		self.agregarComida(cantPasajeros)
		self.agregarBebida(cantPasajeros*2)
	}
	override method segundaCondicion()= cantComida>=50
}

class NaveCombate inherits Nave{
	var visible=true
	var misiles=false
	const mensajesEmitidos=[]
	
	method ponerseVisible(){
		visible=true
	}
	method ponerseInvisible(){
		visible=false
	}
	method estaInvisible()=not visible
	
	method desplegarMisiles(){
		misiles=true
	}
	method replegarMisiles(){
		misiles=false
	}
	method misilesDesplegados()=misiles
	
	method emitirMensaje(mensaje)= mensajesEmitidos.add(mensaje)
	
	method mensajesEmitidos()= mensajesEmitidos
	
	method primerMensajeEmitido()=mensajesEmitidos.first()
	
	method ultimoMensajeEmitido()=mensajesEmitidos.last()
	
	method esEscueta()=mensajesEmitidos.all{
		mensaje=>mensaje.size()<=30
	}
	override method accionAdicional(){
		self.accionAdicionalComun()
		self.acelerar(15000)
	}
	override method estaTranquila()=super() and not misiles
	
	override method escapar(){
		self.acercarseUnPocoAlSol()
		self.acercarseUnPocoAlSol()
	}
	
	override method avisar(){
		self.emitirMensaje("Amenaza Recibida")
	}
	
	override method segundaCondicion()= self.esEscueta()
}

class NaveHospital inherits NavePasajero{
	var tienePreparadoElQuirofano=false
	
	method prepararQuirofano(){
		tienePreparadoElQuirofano=true
	}
	override method estaTranquila()=super() and not tienePreparadoElQuirofano
	
	override method recibirAmenaza(){
		super()
		self.prepararQuirofano()
	}
}

class NaveCombateSigilosa inherits NaveCombate{
	override method estaTranquila()=super() and not visible
	override method recibirAmenaza(){
		super()
		self.desplegarMisiles()
		self.estaInvisible()
	}
}
	