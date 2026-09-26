class ChevroletCorsa {
  const property color
  method capacidad() = 4
  method velocidadMaxima() = 150
  method peso() = 1300
}

const chevroletCorsa = new ChevroletCorsa(color = "negro")

class RenaultKwid {
  const tieneTanqueAdicional
  const property color = "azul"

  method capacidad() {
    if (not tieneTanqueAdicional) {
      return 4
    }
    else {
      return 3
    }
  }

  method velocidadMaxima() {
    if (tieneTanqueAdicional) {
      return 120
    }
    else {
      return 110
    }
  }

  method peso() {
    if (tieneTanqueAdicional) {
      return 1200 + 150
    }
    else {
      return 1200
    }
  }
}

object trafic {
  const property color = "blanco"
  var interior = interiorComodo
  var motor = motorPulenta

  method cambiarInterior(nuevoInterior) {
    interior = nuevoInterior
  }

  method cambiarMotor(nuevoMotor) {
    motor = nuevoMotor
  }

  method capacidad() = interior.capacidad() 
  method velocidadMaxima() = motor.velocidadMaxima()
  method peso() = 4000 + interior.peso() + motor.peso()
}

object interiorComodo {
  method capacidad() = 5
  method peso() = 700  
}

object interiorPopular {
  method capacidad() = 12
  method peso() = 1000 
}

object motorPulenta {
  method peso() = 800
  method velocidadMaxima() = 130
}

object motorBataton {
  method peso() = 500
  method velocidadMaxima() = 80
}

class AutoEspecial {
  const property capacidad
  const property velocidadadMaxima
  const property peso
  const property color 
}

class Dependencia {
  const property flota = []
  method agregarAFlota(rodado) {
    flota.add(rodado)
  }

  method quitarDeFlota(rodado) {
    flota.remove(rodado)
  }

  method pesoTotalFlota() = flota.sum({r => r.peso()})
  method estaBienEquipada() = flota.size() >= 3 and flota.all({r => r.velocidadMaxima() >= 100})
  method capacidadTotalEnColor(color) = flota.sum({r => (r.color() == color).capacidad()})
  method colorDelRodadoMasRapido() = "color"
  method esGrande() = true
}