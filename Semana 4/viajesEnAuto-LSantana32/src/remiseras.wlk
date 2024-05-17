import clientas.*

object roxana{
	method precioViaje(unCliente,cantidadDeKm)= unCliente.valorPorKm()*cantidadDeKm		
		
}

object gabriela{
	method precioViaje(unCliente,cantidadDeKm)=unCliente.valorPorKm()*cantidadDeKm * 1.2 		
		
}

object mariela{
	method precioViaje(unCliente,cantidadDeKm)= 50.max(unCliente.valorPorKm()*cantidadDeKm)		
}		


object juana{
	method precioViaje(unCliente,cantidadDeKm)=if(cantidadDeKm<=8){100}else{200}	
}


object lucia{
	
	var remiseraReemplazada= roxana
		
	method remiseraReemplazada(unaRemisera){
		remiseraReemplazada=unaRemisera
	}
	
	method precioViaje(unCliente,cantidadDeKm){
		return remiseraReemplazada.precioViaje(unCliente,cantidadDeKm)
	}
}

