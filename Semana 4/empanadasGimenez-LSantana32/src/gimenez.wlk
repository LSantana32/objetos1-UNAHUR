import empleados.*

object gimenez {
	var fondoDeSueldos=3000000
	method pagarA(empleado){
		fondoDeSueldos= fondoDeSueldos - empleado.sueldo()
		empleado.cobrarSueldo()
	}
}
