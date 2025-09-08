object pepe {
    var property categoria = gerente
    var property bonoResultado = montoFijo
    var property bonoPresentismo = normal
    var property faltas = 0

  method sueldo() = self.neto() + bonoResultado.bono(self) + bonoPresentismo.bono(self)
	method neto() = categoria.neto()
}

object sofia {
  var property categoria = gerente
  var property bonoResultado = montoFijo

  method neto() = categoria.neto()
  method sueldo() = self.neto() * 1.3 + bonoResultado.bono(self)
}
object roque {
  var property bonoResultado = montoFijo
  method neto() = 28000
  method sueldo() = self.neto() + bonoResultado.bono(self) + 9000
}

object ernesto {
  var property compañero = pepe
  var property bonoPresentismo = normal
  const property faltas = 0

  method neto() = compañero.neto()
  method sueldo() = self.neto() + bonoPresentismo.bono(self)
}
/* Categorias */
object gerente {
  method neto() = 15000
}

object cadete {
    method neto() = 20000
} 
object vendedor {
  method neto() = 16000

  method activarAumentoPorMuchasVentas() = self.neto() * 1.25
  method desactivarAumentoPorMuchasVentas() = self.neto()
}

object medioTiempo {
  var property categoriaActual = cadete
  method neto() = self.categoriaBase(categoriaActual)
  
  method categoriaBase(categoria) = categoria.neto() / 2

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