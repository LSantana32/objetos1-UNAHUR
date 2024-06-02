object farolito {
	
	method peso()=0.5
	
	method carga()=0
	
	method esLuminoso()=true
	
	method esLiviano()=true
}

class Canasto{
	
	const property volumen=0
	
	method peso()=volumen/10
	
	method carga()=volumen*2
	
	method esLuminoso()=false
	
	method esLiviano()=self.peso()<1
	
}

class Morral{
	
	const property largo=0
	const property tieneOjoDeGato=true
	
	method peso()=1.2
	
	method carga()=largo/3
	
	method esLuminoso()= tieneOjoDeGato
	
	method esLiviano()=self.peso()<1
}
