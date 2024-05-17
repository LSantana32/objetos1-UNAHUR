import cosas2.*

object camion {
	const cargaCamion = []
	const taraDelCamion=1000
	
	method cargar(cosa){
		cargaCamion.add(cosa)
		cargaCamion.map({objeto=>objeto.transformar()})
		}
	
	method descargar(cosa)= cargaCamion.remove(cosa)

	method todoPesoPar()= cargaCamion.all({objeto => objeto.peso().even()})
	
	method hayAlgunoQuePesa(peso)=cargaCamion.any({objeto => objeto.peso()== peso})
	
	method elDeNivel(nivel)= cargaCamion.find({objeto => objeto.nivelPeligrosidad() == nivel})
	
	method pesoTotal()= cargaCamion.sum({objeto=>objeto.peso()})+taraDelCamion
	
	method excedidoDePeso()= self.pesoTotal()>2500
	
	method objetosQueSuperanPeligrosidad(nivel)= cargaCamion.filter({objeto=> objeto.nivelPeligrosidad()>nivel})
	
	method objetosMasPeligrososQue(cosa)=cargaCamion.filter({objeto=>objeto.nivelPeligrosidad()>cosa.nivelPeligrosidad()})
	
	method puedeCircularEnRuta(nivelMaximoPeligrosidad)= not self.excedidoDePeso() and cargaCamion.all({objeto=>objeto.nivelPeligrosidad()<nivelMaximoPeligrosidad}) 
	
	method tienenAlgoQuePesaEntre(min,max)= cargaCamion.any({objeto=> objeto.peso().between(min,max)})
	
	method cosaMasPesada()=cargaCamion.max({objeto=>objeto.peso()})

	method pesos()=cargaCamion.map({objeto=>objeto.peso()})
	
	method totalBultos()=cargaCamion.sum({objeto=>objeto.bultos()})
	
}