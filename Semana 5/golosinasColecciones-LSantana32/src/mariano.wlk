import golosinas.*

object mariano {
	const bolsaDeGolosinas=#{oblea,chupetin,chocolatin}
	
	method bolsaDeGolosinas()=bolsaDeGolosinas
	
	method comprarGolosina(unaGolosina)= bolsaDeGolosinas.add(unaGolosina)
	
	method desecharUnaGolosina(unaGolosina)= bolsaDeGolosinas.remove(unaGolosina)
	
	method cantidadDeGolosinas()= bolsaDeGolosinas.size()
	
	method tieneLaGolosina(unaGolosina)= bolsaDeGolosinas.contains(unaGolosina)
	
	method probarGolosinas()= bolsaDeGolosinas.forEach({golosina=>golosina.recibirMordisco()})
	
	method hayGolosinasSinTacc()= bolsaDeGolosinas.any({golosina=>golosina.esLibreDeGluten()})
	
	method preciosCuidados()= bolsaDeGolosinas.all({golosina=>golosina.precio()<=10})
	
	method golosinaDeSabor(unSabor)= bolsaDeGolosinas.find({golosina=>golosina.sabor()==unSabor})
	
	method golosinasDeSabor(unSabor)= bolsaDeGolosinas.filter({golosina=>golosina.sabor()==unSabor})
	
	method sabores()= bolsaDeGolosinas.map({golosina=> golosina.sabor()})
	
	method golosinaMasCara()= bolsaDeGolosinas.max({golosina=> golosina.precio()})

	method pesoGolosinas()= bolsaDeGolosinas.sum({golosina=>golosina.peso()})
	
}
