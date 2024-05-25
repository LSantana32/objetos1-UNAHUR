import universidades.*
import solicitantes.*

class ProfesionalAsociado {
	var universidad
	const profesionales=[]
	method addProfesional(unProfesional)=profesionales.add(unProfesional)
	method profesionales()=profesionales
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	method honorariosPorHora() { return 3000 }
	method cobrarSueldo(){ asociacionDeProfesionalesDelLitoral.recibirDinero(self.honorariosPorHora())}
}



class ProfesionalVinculado {
	var universidad

	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method provinciasDondePuedeTrabajar() {return #{universidad.provincia()}}
	method honorariosPorHora(){return universidad.honorariosRecomendados()}
	method cobrarDinero(){
		universidad.recibirDonacion(self.honorariosPorHora()*0.5)
	}
}



class ProfesionalLibre {
	var universidad
	const provinciasDondePuedeTrabajar=#{}
	var honorariosPorHora=0
	var totalRecaudado=0
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method provinciasDondePuedeTrabajar()= provinciasDondePuedeTrabajar
	method provinciasDondePuedeTrabajar(prov){provinciasDondePuedeTrabajar.add(prov)}
	method honorariosPorHora()=honorariosPorHora
	method honorariosPorHora(unHonorario){honorariosPorHora=unHonorario}
	method cobrarSueldo(){totalRecaudado+=self.honorariosPorHora()}
	method totalRecaudado()=totalRecaudado
	method restarDinero(unImporte){totalRecaudado=totalRecaudado-unImporte}
	method pasarDineroA(unProfesionalLibre,cantidad){
		var dinero=0
		dinero= if(totalRecaudado<cantidad)totalRecaudado else cantidad
		self.restarDinero(dinero)
		unProfesionalLibre.cobrarSueldo(dinero)
		}
	}

object asociacionDeProfesionalesDelLitoral{
	var totalRecaudado=0
	method recibirDinero(unImporte){totalRecaudado+=unImporte}
}