import frutas.*
import juegos.*

object martin {
	var energia=80
	var cantidadDeActividades=0
	var tieneHambre=false
	var enLaDespensa=agua
	
	method estaFeliz()= energia > 80 
	                or (cantidadDeActividades >= 2 and not tieneHambre)

	method comprar(unaFruta){
		enLaDespensa=unaFruta
	}
	
	method alimentarse(){
		energia = energia + enLaDespensa.energia()
		tieneHambre=false
		enLaDespensa=agua
	}
	
	method enLaDespensa()= enLaDespensa
	
	method energia()=energia
	
	method tieneHambre()= tieneHambre
	
	method hacerDeporte(unDeporte){
		energia = 0.max(energia+unDeporte.energia())
		cantidadDeActividades= cantidadDeActividades + 1
	}
	method cantidadDeActividades()= cantidadDeActividades
	
	method dormir(){
		energia= energia*1.5
		enLaDespensa.efectoCambioDia()
	}
}


