import profesionales.*
import universidades.*
import solicitantes.*

class Empresa {
	
	const profesionales=[]
	var property honorariosDeReferencia
	const clientes=[]
	
	method contratar(unProfesional)=profesionales.add(unProfesional)
	
	method profesionales()=profesionales
	
	method profesionalesQueEstudiaronEn(unaUniversidad)=profesionales.count({prof=>prof.universidad()==unaUniversidad })
	
	method profesionalesCaros()= profesionales.filter({prof=>prof.honorariosPorHora()>honorariosDeReferencia}).asSet()
	
	method universidadesFormadoras()=profesionales.map({prof=>prof.universidad()})
	
	method profesionalMasBarato()=profesionales.min({prof=>prof.honorariosPorHora()})
	
	method esDeGenteAcotada()=profesionales.all({prof=>prof.provinciasDondePuedeTrabajar().size()<4})
	
	method puedeSatisfacerA(unSolicitante)= profesionales.any({prof=>unSolicitante.puedeSerAtendidoPor(prof)}) 
	
	method darServicio(unSolicitante){
		if (self.puedeSatisfacerA(unSolicitante)){
			const profesional= profesionales.find({prof=>unSolicitante.puedeSerAtendidoPor(prof)})
			profesional.cobrarSueldo()
			clientes.add(unSolicitante)}
		else {self.error("este solicitante no puede ser atendido")}
	}

	method esPocoAtractivo(unProfesional)= profesionales.any({prof=>unProfesional.provinciasDondePuedeTrabajar().any({prov=>prov==prof.provinciasDondePuedeTrabajar().contains(prov)})
															  and prof.honorariosPorHora()< unProfesional.honorariosPorHora()
	})	
}

