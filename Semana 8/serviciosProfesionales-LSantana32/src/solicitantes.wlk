import profesionales.*

class Persona{
	var provinciaDondeVive
	
	method provinciaDondeVive()= provinciaDondeVive
	method provinciaDondeVive(unaProvincia){provinciaDondeVive=unaProvincia}
	//method puedeSerAtendidoPor(unProfesional)= provinciaDondeVive==unProfesional.provinciaDondePuedeTrabajar()
	method puedeSerAtendidoPor(unProfesional)= unProfesional.provinciasDondePuedeTrabajar().contains(provinciaDondeVive)
}

class Institucion{
	const universidadesReconocidas=#{}
	
	method addUniversidad(unaUniv)=universidadesReconocidas.add(unaUniv)
	method removeUniversidad(unaUniv)=universidadesReconocidas.remove(unaUniv)
	method universidad()=universidadesReconocidas
	//method puedeSerAtendidoPor(unProfesional)= universidadesReconocidas.any({uni=>uni==unProfesional.universidad()})
	method puedeSerAtendidoPor(unProfesional)= universidadesReconocidas.contains(unProfesional.universidad())
}

class Clubes{
	const provinciasDelClub=#{}
	
	method addProvincia(unaProvincia)=provinciasDelClub.add(unaProvincia)
	method provincias()=provinciasDelClub
	//method puedeSerAtendidoPor(unProfesional)=provinciasDelClub.any({prov=>prov==unProfesional.provinciaDondePuedeTrabajar()})
	method puedeSerAtendidoPor(unProfesional)= provinciasDelClub.any({prov=>unProfesional.provinciasDondePuedeTrabajar().contains(prov)})
}