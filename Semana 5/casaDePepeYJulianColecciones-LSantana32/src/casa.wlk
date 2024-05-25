import cosas.* //obviamente, vamos a usar los objetos del archivo cosas ;-)
import cuentaBancaria.*

object casaDePepeYJulian {
	const cosas = []
	var cuenta=cuentaCorriente
	
	method gastar(importe)=cuenta.extraer(importe)
	method comprar(cosa){
		cosas.add(cosa)
		cuenta.extraer(cosa.precio())
		}
	method cuenta(unaCuenta){
		cuenta=unaCuenta
	}
	method cosas()=cosas
	method cantidadDeCosasCompradas()= cosas.size()
	method tieneComida()= cosas.any({cosa=> cosa.esComida()})
	method vieneDeEquiparse()= cosas.last().esElectrodomestico() or cosas.last().precio()>50000
	method esDerrochona()= cosas.sum({cosa=>cosa.precio()})>=90000
	method compraMasCara()=cosas.max({cosa=>cosa.precio()})
	method electrodomesticosComprados()=cosas.filter({cosa=>cosa.esElectrodomestico()})
	method malaEpoca()=cosas.all({cosa=>cosa.esComida()})
	method queFaltaComprar(lista)=lista.filter({cosa=>not self.cosas().contains(cosa)}) //prestar atencion a este
	method faltaComida()=cosas.count({cosa=>cosa.esComida()})<2
}
