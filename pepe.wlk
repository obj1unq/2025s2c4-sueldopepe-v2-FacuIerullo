object pepe {
    var property categoria = gerente
    var property bonoResultado = montoFijo
    var property bonoPresentismo = normal
    var property faltas = 0

  method sueldo() = categoria.neto() + bonoResultado.bono(self) + bonoPresentismo.bono(self)
	method neto() = categoria.neto()
}

/* Categorias */
object gerente {
  method neto() = 15000
}

object cadete {
    method neto() = 20000
} 
/* bonoPorcentaje */
object porcentaje {
  method bono(empleado) = empleado.neto() * (10/100)
}

object montoFijo {
  method bono(empleado) = 800
}

/* Bono presentismo */
object normal {
  method bono(empleado) {
    if(empleado.faltas() == 0){
      return 2000
    } else if(empleado.faltas() == 1){
      return 1000
    } else{
      return 0
    }
  }
}

object ajuste {
   method bono(empleado) {
    if(empleado.faltas() == 0){
      return 100
    } else{
      return 0
    }
  }
}

object demagogico {
  method bono(empleado){
    if(empleado.neto() < 18000){
      return 500
    } else {
      return 0
    }
  }
}

/* nulo */

object nulo {
  method bono(empleado) = 0
}