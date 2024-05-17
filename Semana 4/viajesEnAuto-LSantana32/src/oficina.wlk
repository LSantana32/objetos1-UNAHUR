import remiseras.*
import clientas.*

object oficina {
	var primerRemisera=roxana
	var segundaRemisera=gabriela
	
	method asignarRemiseras(remisera1, remisera2){
		primerRemisera=remisera1
		segundaRemisera=remisera2
	}
	method cambiarPrimeRemiseraPor(remisera){
		primerRemisera=remisera
	}
	method cambiarSegundaRemiseraPor(remisera){
		segundaRemisera=remisera
	}
	method intercambiarRemiseras(){
		const segundaRemiseraGuardada=segundaRemisera
		segundaRemisera=primerRemisera
		primerRemisera=segundaRemiseraGuardada

	}
	method primerRemisera()=primerRemisera
	method segundaRemisera()=segundaRemisera
	
	method remiseraElegidaParaViaje(unCliente, cantidadDeKm)=if(primerRemisera.precioViaje(unCliente,cantidadDeKm)-segundaRemisera.precioViaje(unCliente,cantidadDeKm)>=30){segundaRemisera}else{primerRemisera}
}
