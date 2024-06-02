class Bicicleta{
	const property rodado=29
	const property largo=0
	const property marca="pepe"
	const accesorios=[]
	
	method altura()=rodado*2.5+15
	
	method velocidadCrucero()= rodado+ if(largo>120){6}else{2}
	
	method carga()= accesorios.sum{acc=>acc.carga()}
	
	method peso()=self.pesoTotalAcc()+rodado/2
	
	method pesoTotalAcc()=accesorios.sum{acc=>acc.peso()}
	
	method tieneLuz()=accesorios.any{acc=>acc.esLuminoso()}
	
	method cantidadAccLivianos()=accesorios.count{acc=>acc.esLiviano()}
	
	method esRapida()=self.velocidadCrucero()>25
	
	method esLarga()=largo>170
	
	method esSinAccesorios()=accesorios.isEmpty()
}