import elemento.*

class Barrio {
	const elementos=[]
	
	method addElementos(listaElementos)=elementos.addAll(listaElementos)
	
	method addElemento(unElemento)=elementos.add(unElemento)
	method removeElemento(unElemento)=elementos.remove(unElemento)
	
	method esCopado()=self.cantidadCopados()>self.cantidadOrtivas()
	method cantidadCopados()=elementos.count{elem=>elem.esBueno()}
	method cantidadOrtivas()=elementos.count{elem=>not elem.esBueno()}
	
}
