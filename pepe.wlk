object pepe {
    var property categoria = gerente
    var property bono = bonoMontoFijo

	method neto() = categoria.neto()
    method bonoResultados() = bono.bono(self)

}

object gerente {
  method neto() = 15000
}

object cadete {
    method neto() = 20000
} 

object bonoPorcentaje {
  method bono(empleado) = empleado.neto() * (10/100)
}

object bonoMontoFijo {
  method bono(empleado) = 800
}

