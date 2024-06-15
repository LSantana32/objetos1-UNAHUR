import viajes.*

class Socio{
	var property actividades=[]
	var property maximoActividades=0
	var property idiomasQueHabla=#{}
	var property edad=0

	
	method esAdoradorDelSol()= actividades.all{a=>a.sirveParaBroncearse()}
	
	method actividadesEsforzadas()= actividades.filter{a=>a.implicaEsfuerzo()}
	
	
	method realizarActividad(unaActividad) {
		if(actividades.size() == maximoActividades) {
			self.error("Llegó al máximo de actividades")
		}
			actividades.add(unaActividad)
	}
	method leAtrae(unaActividad)
	
	method realizo(unaActividad)= actividades.contains(unaActividad)
}

class SocioTranquilo inherits Socio{
	
	override method leAtrae(unaActividad)=unaActividad.diasDeAct()>=4
}

class SocioCoherente inherits Socio{
	
	override method leAtrae(unaActividad)= if (self.esAdoradorDelSol()) unaActividad.sirveParaBroncearse() else unaActividad.implicaEsfuerzo()
}

class SocioRelajado inherits Socio{
	
	override method leAtrae(unaActividad)=idiomasQueHabla.any{i=>unaActividad.idiomas().contains(i)}
}