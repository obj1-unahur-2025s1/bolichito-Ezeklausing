object bolichito {
  var vidriera = munieco
  var mostrador = pelota

  method esBrillante() = vidriera.material().brilla() and mostrador.material().brilla()
  method esMonocromatico() = vidriera.color() == mostrador.color()
  method estaEquilibrado() = vidriera.peso() < mostrador.peso() 

  method tieneDeColor(color) = vidriera.color() == color || mostrador.color() == color

  method sePuedeMejorar() = not self.estaEquilibrado() || self.esMonocromatico()

  method puedeOfrecerleAlgoA(persona) = persona.leGusta(vidriera) || persona.leGusta(mostrador)

}



object rosa {
  method leGusta(elemento){
    return elemento.peso() <= 2000
  }
}

object estefania {
  method leGusta(elemento) = elemento.color().esFuerte()
}

object luisa {
  method leGusta(elemento){
    return elemento.material().brilla()
  }

}

object juan {
  method leGusta(elemento) {
    return (
      not elemento.color().esFuerte() ||
      elemento.peso().between(1200, 1800)
    )
  } 
}

// colores
object rojo {
  method fuerte() = true
}

object verde {
  method esFuerte() = true
}

object celeste {
  method esFuerte() = false
}
object pardo {
  method esFuerte() = false
}

// materiales

object cobre {
  method brilla() = true
}

object vidrio {
  method brilla() = true
}

object madera {
  method brilla() = false
}

object cuero {
  method brilla() = false
}


object lino {
  
}

//objetos

object biblioteca {
  method color() = verde
  method material() = madera
  method peso() = 8000
}

object remera {
  method color() = rojo
  method material() = lino
  method peso() = 800
}

object pelota {
  method color() = pardo
  method material() = cuero
  method peso() = 1300
}

object munieco {
var peso = 0

  method color() = celeste
  method material() = vidrio
  method peso() = peso
  method peso(nuevoPeso){
    peso = nuevoPeso
  }
}


object placa {
  method material() = cobre
  var color = 0 // queda pendiente inicializacion
  var peso = 0
  method peso() = peso
  method color() = color
  method color(nuevoColor){
    peso = nuevoColor
  }
  method peso(nuevoPeso){
    peso = nuevoPeso
  }
}

object arito {
  method materia() = cobre
  method peso() = 108  
}

object cajita {
  var contenido = arito

  method color() = rojo
  method material() = cobre
  method peso() = 400 + contenido.peso() 
}