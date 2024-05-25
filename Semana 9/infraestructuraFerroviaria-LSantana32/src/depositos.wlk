import formacion.*
import locomotoras.*

class DepositosFerroviarios{
	var property formacionesArmadas=#{}
	var property locomotorasSueltas=[]
	
	method vagonesMasPesadosDeFormacion()=formacionesArmadas.map{form=>form.vagonMasPesado()}
	
	method necesitaUnConductorExperimentado()=formacionesArmadas.any{form=>form.esCompleja()}
	
}
