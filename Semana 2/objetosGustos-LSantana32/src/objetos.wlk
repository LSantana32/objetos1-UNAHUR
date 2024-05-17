import personas.*
import bolichito.*

//OBJETOS//
object remera {
	method color(){
		return(rojo)
	}
	method material(){
		return(lino)
	}
	method peso(){
		return(800)
	}
	
}

object pelota {
	method color(){
		return(pardo)
	}
	method material(){
		return(cuero)
	}
	method peso(){
		return(1300)
	}
	
}

object biblioteca {
	method color(){
		return(verde)
	}
	method material(){
		return(madera)
	}
	method peso(){
		return(8000)
	}
	
}

object munieco {
	var peso
	method color(){
		return(celeste)
	}
	method material(){
		return(vidrio)
	}
	method peso(){
		return(peso)
	}
	method setPeso(pesoNuevo){
		peso=pesoNuevo
	}
	
}

object placa {
	var peso
	var color
	
	method color(){
		return(color)
	}
	method setColor(colorNuevo){
		color=colorNuevo
	}
	method material(){
		return(cobre)
	}
	method setPeso(pesoNuevo){
		peso=pesoNuevo
	}
	
}

object arito{
	method color(){
		return(celeste)
	}
	method material(){
		return(cobre)
	}
	method peso(){
		return(180)
	}
	
}

object banquito{
	var color=naranja
	
	method color(){
		return(color)
	}
	method setColor(colorNuevo){
		color=colorNuevo
	}
	method material(){
		return(madera)
	}
	method peso(){
		return(1700)
	}	
}

object cajita {
	var objetoDentro
	var pesoTotal
	
	method color(){
		return(rojo)
	}
	method material(){
		return(cobre)
	}
	
	method contiene(objeto){
		objetoDentro=objeto
	}
	method peso(){
		pesoTotal=400+objetoDentro.peso()
	}
	
	
}


//COLORES//


object rojo{
	method esFuerte(){
		return(true)
	}
}

object verde{
	method esFuerte(){
		return(true)
	}
}


object celeste{
	method esFuerte(){
		return(false)
	}
}

object pardo{
	method esFuerte(){
		return(false)
	}
}

object naranja{
	method esFuerte(){
		return(true)
	}
}



//MATERIALES//

object lino{
	method esBrillante(){
		return(false)
	}
}

object madera{
	method esBrillante(){
		return(false)
	}
}

object cuero{
	method esBrillante(){
		return(false)
	}
}

object cobre{
	method esBrillante(){
		return(true)
	}
}

object vidrio{
	method esBrillante(){
		return(true)
	}
}







	

