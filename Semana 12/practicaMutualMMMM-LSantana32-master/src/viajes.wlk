class Actividad{
	const property idiomas=#{}
	
	method addIdioma(unIdiomaEnStr)=idiomas.add(unIdiomaEnStr)
 	
	method implicaEsfuerzo()
	method sirveParaBroncearse()
	method diasDeAct()
	method esInteresante()=idiomas.size()>1
	method esRecomendadaPara(unCliente)= self.esInteresante() and unCliente.leAtrae(self) and not unCliente.realizo(self)
}

class Playa inherits Actividad{
	const property largoPlaya=0
	
	override method diasDeAct()= largoPlaya/500
	override method implicaEsfuerzo()=largoPlaya>1200
	override method sirveParaBroncearse()=true
	
}

class ExcursionACiudad inherits Actividad{
	const property cantAtracciones=0
	
	override method diasDeAct()= cantAtracciones/2
	override method implicaEsfuerzo()= cantAtracciones.between(5,8)
	override method sirveParaBroncearse()=false
	override method esInteresante()= super() or cantAtracciones==5
}

class ExcursionACiudadTropical inherits ExcursionACiudad{
	override method diasDeAct()= super()+1
	override method sirveParaBroncearse()= not super()
}

class SalidaTrekking inherits Actividad{
	const property kmDeSenderos=0
	const property diasSolAlAnio=0
	
	override method diasDeAct()= kmDeSenderos/50
	override method implicaEsfuerzo()= kmDeSenderos>80
	override method sirveParaBroncearse()= diasSolAlAnio>200 or diasSolAlAnio.between(100,200) and kmDeSenderos>120
	override method esInteresante()= super() and diasSolAlAnio>140
}

class ClaseDeGimnasia inherits Actividad{
		method initialize() {
		if(idiomas!=#{"español"}) {
			self.error("solo se permite clase de gimnasia en español")
		}
	} 
	override method diasDeAct()= 1
	override method implicaEsfuerzo()=true
	override method sirveParaBroncearse()=false
	override method esRecomendadaPara(unCliente)=unCliente.edad().between(20,30)
}

class TallerLiterario{
	var property libros=#{}
	method idiomas()= libros.map{l=>l.idioma()}.asSet()
	method diasDeAct()=libros.size()+1
	method autoresDeLibros() = libros.map({l => l.nombreDelAutor()}).asSet()
    method todosLosLibrosSonDelMismoAutor() = self.autoresDeLibros().size() == 1
	method implicaEsfuerzo()=libros.any{l=>l.paginas()>500} or libros.all{l=>l.nombreAutor()} and libros.size()>1
	method sirveParaBroncearse() = false
    method esRecomdadaPara(unSocio) = unSocio.idiomas().size() > 1
}

class Libro{
	const property idioma
	const property paginas
	const property nombreAutor
}

