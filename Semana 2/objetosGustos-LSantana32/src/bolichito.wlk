import objetos.*
import personas.*

//BOLICHITO//

object bolichito {
	var objetoVidriera
	var objetoMostrador
	
	method setObjetoVidriera(objetoNuevo1){
		objetoVidriera=objetoNuevo1
	}	
	
	method objetoVidriera(){
		return(objetoVidriera)
	}
	
	method setObjetoMostrador(objetoNuevo2){
		objetoMostrador=objetoNuevo2
	}		
	method objetoMostrador(){
		return(objetoMostrador)
	}
	
	method esBrillante(){
		return(objetoVidriera.material().esBrillante() and objetoMostrador.material().esBrillante())
		
	}
	method esMonocromatico(){
		return(objetoVidriera.color()== objetoMostrador.color())
    }
    
	method estaDesequilibrado(){
		return(objetoVidriera.peso() < objetoMostrador.peso())
	}
	method tieneAlgoDeColor(color){
		return(objetoVidriera.color()==color or objetoMostrador.color()==color)
	}
	method puedeMejorar(){
		return(self.esMonocromatico() or self.estaDesequilibrado())
	}
	method puedeOfrecerleAlgoA(persona){
		return(persona.leGusta(objetoVidriera) or persona.leGusta(objetoMostrador))
	}
}


