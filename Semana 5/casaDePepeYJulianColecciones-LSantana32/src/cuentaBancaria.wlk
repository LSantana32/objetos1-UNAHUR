object cuentaCorriente {
	var saldo=0
	
	method depositar(importe){saldo+=importe}
	method extraer (importe){saldo-=0.max(importe)}
	method saldo()=saldo
}

object cuentaConGastos{
	var saldo=0
	method depositar(importe){saldo+=0.max(importe-200)}
	method extraer (importe){
		saldo= 0.max (saldo - if (importe>10000){importe+200}else{importe+(importe*1.02)})
	}
	
	method saldo()=saldo	
}

object cuentaCombinada{
	
	const cuentaPrincipal=cuentaCorriente
	const cuentaSecundaria=cuentaConGastos
	
	method depositar(importe)=cuentaPrincipal.depositar(importe)
	method extraer (importe){
		if (cuentaPrincipal.saldo()>=importe){cuentaPrincipal.extraer(importe)} else {cuentaSecundaria.extraer(importe)}
	}
	method saldo()= cuentaPrincipal.saldo()+cuentaSecundaria.saldo()
	
}
