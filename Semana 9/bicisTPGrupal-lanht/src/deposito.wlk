import bicis.*
import accesorios.*

class Deposito{
	const bicicletas=#{}
	
	method addBici(unaBici)=bicicletas.add(unaBici)
	method removeBici(unaBici)=bicicletas.add(unaBici)
	
	method bicicletasRapidas()=bicicletas.filter{bici=>bici.esRapida()}
	
	method marcaDeBicis()=bicicletas.map{bici=>bici.marca()}
	
	method esNocturno()=bicicletas.all{bici=>bici.tieneLuz()}
	
	method tieneBicicletaParaLlevar(unaCarga)=bicicletas.any{bici=>bici.carga()>unaCarga}
	
	method marcaBiciMasRapida()= self.biciMasRapida().marca()
	
	method biciMasRapida()= bicicletas.max{bici=>bici.velocidadCrucero()}
	
	method cargaTotalDeBicisLargas()=self.bicisLargas().sum{bici=>bici.carga()}
	
	method bicisLargas()=bicicletas.filter{bici=>bici.esLarga()}
	
	method cantidadBicisSinAccesorios()=bicicletas.count{bici=>bici.esSinAccesorios()}

	method cualesSonCompanieras(unaBici)=bicicletas.filter{bici=>bici.marca()==unaBici.marca() and bici.largo().between(unaBici.largo()-10,unaBici.largo()+10)}
	
}
