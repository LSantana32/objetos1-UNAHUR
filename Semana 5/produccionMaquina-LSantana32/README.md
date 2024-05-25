# Registro de producción de una máquina

Se nos pide modelar el registro de producción de una máquina. Debe registrarse la cantidad de piezas producidas por la máquina en cada día desde que se puso en operación.

El registro debe ser capaz de responder las siguientes consultas:
- `algunDiaSeProdujo(cantidad)`: indica si el registro incluye al menos un día en el que se produjo, exactamente, la cantidad indicada de piezas.
- `maximoValorDeProduccion()`: el valor más alto de producción diaria incluido en el registro.
- `valoresDeProduccionPares()`: los valores pares incluidos, en el mismo orden en que aparecen en el registro.
- `produccionEsAcotada(n1,n2)`: indica si en cada día de que se tiene registro, la producción se encuentra entre los valores indicados.   
- `produccionesSuperioresA(cuanto)`: los valores de producción que superan el valor indicado, en el mismo orden en que aparecen en el registro.
- `produccionesSumando(n)`: la serie que resulta de sumar el valor indicado a cada valor de producción diaria incluido en el registro. 
- `totalProducido()`: el total de piezas producidas por la máquina, de acuerdo a la información incluida en el registro.
- `ultimoValorDeProduccion()`: el último valor registrado. 
- `cantidadProduccionesMayorALaPrimera()`: la cantidad de valores de producción diaria que superan a la producción indicada para el primer día de operación.

A modo de ejemplo, se indica qué debe responder el registro de producción a varios mensajes, si incluye la producción de seis días con valores 43,18,49,62,33,39.
 
| mensaje | resultado esperado | 
| --- | --- |
| `registroProduccion.algunDiaSeProdujo(49)` | `true` |
| `registroProduccion.algunDiaSeProdujo(52)` | `false` |
| `registroProduccion.maximoValorDeProduccion()` | `62` |
| `registroProduccion.valoresDeProduccionPares()` | `18,62` |
| `registroProduccion.produccionEsAcotada(10,100)` | `true` |
| `registroProduccion.produccionEsAcotada(20,100)` | `false` (porque 18 no está en el rango) |
| `registroProduccion.produccionesSuperioresA(35)` | `43,49,62,39` |
| `registroProduccion.produccionesSumando(5)` | `48,23,54,67,38,44` |
| `registroProduccion.totalProducido()` | `244` |
| `registroProduccion.ultimoValorDeProduccion()` | `39` |
| `registroProduccion.cantidadProduccionesMayorALaPrimera()` | `2` (los valores 49 y 62) |
