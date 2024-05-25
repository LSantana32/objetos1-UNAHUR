import profesionales.*

class Universidad{
	var provincia=#{}
	var honorariosRecomendados=0
	var dineroDonaciones=0
	method provincia(unaProvincia)=provincia.add(unaProvincia)
	method provincia()= provincia
	method honorariosRecomendados()=honorariosRecomendados
	method honorariosRecomendados(cant){honorariosRecomendados=cant}
	method recibirDonacion(cantidadDonada){dineroDonaciones+=cantidadDonada}
}

