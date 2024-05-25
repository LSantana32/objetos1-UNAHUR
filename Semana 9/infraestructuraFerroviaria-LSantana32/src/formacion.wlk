import vagones.*
import locomotoras.*

class Formacion {
	const property vagones=[]
	const property locomotoras=[]
	
	method addLocomotora(unaLocomotora)=locomotoras.add(unaLocomotora)
	method removeLocomotora(unaLocomotora)=locomotoras.add(unaLocomotora)
	
	method addVagon(unVagon)=vagones.add(unVagon)
	method removeVagon(unVagon)=vagones.add(unVagon)
		
	method cantPasajeros()=vagones.sum{v=>v.cantPasajeros()}
	
	method cantPopulares()=vagones.count{v=>v.esPopular()}
	
	method esCarguera()=vagones.all{v=>v.esCarguero()}
	
	method dispersionDePesos()= self.vagonMasPesado().pesoMaximo()-self.vagonMasLiviano().pesoMaximo()
	
	method vagonMasPesado()=vagones.max{v=>v.pesoMaximo()}
	
	method vagonMasLiviano()=vagones.min{v=>v.pesoMaximo()}
	
	method cantConBanios()=vagones.filter({v=>v.tieneBanio()}).size()
	
	method mantenimiento(){vagones.forEach{v=>v.mantenimiento()}}
	//IMPORTANTEEE!!!!!!!!cuando es un metodo de consulta, el method va con igual, cuando el metodo es de indicacion, va con LLAVES 

	
	method vagonConMasPasajeros()=vagones.max{v=>v.cantPasajeros()}
	
	method vagonConMenosPasajeros()=vagones.min{v=>v.cantPasajeros()}
	
	method estaOrganizada(){
	//	(1..vagones.size()-1).any
		//	{indice=>vagones.get(indice-1).cantPasajeros()>0
			//	and vagones.get(indice).cantPasajeros()==0
			//}
		vagones.forEach{v=>calculoOrganizacion.procesarVagon(v)}
		return calculoOrganizacion.hayOrden()
	}
	
	method velocidadMaxima()=locomotoras.map{loco=>loco.velocidadMaxima()}.min()

	method esEficiente()=locomotoras.all{loco=>loco.esEficiente()}
	
	method puedeMoverse()=locomotoras.sum{loco=>loco.pesoArrastrado()}>= self.pesoMaximo()

	method pesoMaximo()=locomotoras.sum{loco=>loco.peso()} + vagones.sum{vag=>vag.pesoMaximo()}

	method kilosDeEmpujeQueFaltan()= if (self.puedeMoverse()){0}else{self.pesoMaximo()-locomotoras.sum{loco=>loco.pesoArrastrado()}}

	method esCompleja()= vagones.size()+locomotoras.size()>8 or self.pesoMaximo()>80000
}	



object calculoOrganizacion{
	var property hayOrden=true
	var property todosConPasajeros=true
	
	method procesarVagon(vagon){
		if (vagon.cantPasajeros()>0){
			if (not todosConPasajeros){hayOrden=false}
			else{
				todosConPasajeros=false}	
		}
	}
}	
