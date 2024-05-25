// Como ya sabemos crear objetos y definir algunos métodos simples, 
// algunos los tenemos parcialmente definidos. Completar todo los demás
// para satisfacer lo que pide el enunciado.

object heladera {
	method precio() { return 200000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 80000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 3500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 12000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object kiloDeMilanesas {
	method precio() { return 2600 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object botellaDeSalsaDeTomate {
	method precio() { return 900 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object microondas {
	method precio() { return 4200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object kiloDeCebolla {
	method precio() { return 2500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object compu {
	const precioEnUsd=500
	method precio() { return precioEnUsd*valorDolar.precioDeVenta()}
	method esComida() { return false }
	method esElectrodomestico() { return true}	
}

object valorDolar{
	method precioDeVenta()=1000
}

object packDeComida {
	var plato=tiraDeAsado
	var aderezo=botellaDeSalsaDeTomate
	
	method plato(unPlato){
		plato=unPlato
	}
	method aderezo(unAderezo){
		aderezo=unAderezo
	}
	method precio() { return plato.precio()+aderezo.precio() }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}