object galvan{
	var dinero=0
	var sueldo=150000
	var deuda=0
	
	method sueldo()= sueldo
	
	method cobrarSueldo(){
		if (deuda>0){deuda=deuda-sueldo
				     dinero= dinero - deuda
				     deuda=0}
		else{dinero=dinero+sueldo}
	}															
	
	method nuevoSueldo(unValor){
		sueldo=unValor	
	}
	
	method gastar(cuanto){
		dinero=dinero-cuanto
		if (dinero<0){deuda=deuda-dinero
					  dinero=0
		}
	}
	method totalDeuda()=deuda
	method totalDinero()=dinero
}



object baigorria{
	var cantidadDeEmpanadasVendidas=0
	var precioPorEmpanada=150
	var totalCobrado=0

	method sueldo()=cantidadDeEmpanadasVendidas*precioPorEmpanada
	
	method cobrarSueldo(){totalCobrado=totalCobrado+self.sueldo()}
	
	
	method venderEmpanadas(unValor){
		cantidadDeEmpanadasVendidas=cantidadDeEmpanadasVendidas+unValor
	}
	method nuevoPrecioPorEmpanada(unValor){
		precioPorEmpanada=unValor
	}
}

