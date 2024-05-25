object registroAbatidosCOD {
	const dias=[]
	const bajas=[]
	
	method cantidadDeDiasRegistrados()=dias.size()
	method estaVacioElRegistro()=dias.isEmpty()
	method algunDiaAbatio(cantidad)=bajas.contains(cantidad)
	method primerValorDeAbatidos()=bajas.first()
	method ultimoValorDeAbatidos()=bajas.last()
	method maximoValorDeAbatidos()=bajas.max()
	method totalAbatidos()=bajas.sum()
	method cantidadDeAbatidosElDia(dia)={}
	method ultimoValorDeAbatidosConSize()={}
	method valoresDeAbatidosPares()=bajas.filter({baja=>baja.even()})
	method abatidosSumando(cantidad)=bajas.map({baja=>baja+cantidad})
	method abatidoEsAcotada(n1,n2)=bajas.all({baja=>baja.between(n1,n2)})
	method algunDiaAbatioMasDe(cantidad)=bajas.any({baja=>baja>cantidad})
	method todosLosDiasAbatioMasDe(cantidad)=bajas.all({baja=>baja>cantidad})
	method cantidadAbatidosMayorALaPrimera()=bajas.count({baja=>baja>bajas.first()})
	method esCrack()={}
}