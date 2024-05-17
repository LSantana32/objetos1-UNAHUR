import spa.*


object olivia{
	var gradoDeConcentracion=60
	method recibeUnMasaje(){
		gradoDeConcentracion=gradoDeConcentracion+3	
	}
	method darseBanioDeVapor(){}
	method discute(){
		gradoDeConcentracion=gradoDeConcentracion-1
	}
	method gradoDeConcentracion(){
		return(gradoDeConcentracion)
	}
}

object bruno{
	var esFeliz=true
	var tieneSed=false
	var peso=55000
	
	method recibeUnMasaje(){
		esFeliz=true
	}
	method darseBanioDeVapor(){
		peso=peso-500
		tieneSed=true
	}
	method tomarAgua(){
		tieneSed=false
	}
	method comeFideos(){
		peso=peso+250
		tieneSed=true
	}
	method corre(){
		peso=peso-300
	}
	method verNoticiero(){
		esFeliz= false
	}
	method estaPerfecto(){
		return esFeliz and not tieneSed and peso.between(50000,70000)
	}
	method mediodiaEnCasa(){
		self.comeFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
}

object ramiro{
	var contractura=0
	var tienePielGrasosa=true
	
	method recibeUnMasaje(){
		contractura=0.max(contractura-2)
	}
	method darseBanioDeVapor(){
		tienePielGrasosa=false
	}
	method comerseUnaBuenaBurga(){
		tienePielGrasosa=true
	}
	method bajarALaFosa(){
		tienePielGrasosa=true
		contractura=contractura+1
	}
	method jugarPaddle(){
		contractura=contractura+3
	}
	method diaDeTrabajo(){
		self.bajarALaFosa()
		self.comerseUnaBuenaBurga()
		self.bajarALaFosa()
	}
	
	method tienePielGrasosa(){
		return(tienePielGrasosa)
	}
	
	
	
}
