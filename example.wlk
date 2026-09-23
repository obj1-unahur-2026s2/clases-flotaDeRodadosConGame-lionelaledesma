class ChevroletCorsa {
   const capacidad = 4
   const velocidadMaxima = 150
   var color
   const peso = 1300
}

const chevroletCorsa = new Rodado(color = negro)

class RenaultKwid {
   var capacidad 
   var velocidadMaxima 
   const color = azul 
   var peso
}

object trafic {
  const property color = blanco 
  const peso = 4000
  var interiorComodo = true
  var motorPulenta = true
  method capacidad() {
    if (interiorComodo) {
      return 5
    }
    else {
      return 12
    }
  }
  method velocidadMaxima() {
    if (motorPulenta) {
      return 130
    }
    else {
      return 80
    }
  }
  method pesoInterior() {
    if (interiorComodo) {
      return 700
    }
    else {
      return 1000
    }
  }
  method pesoMotor() {
    if (motorPulenta) {
      return 800
    }
    else {
      return 500
    }
  }
  method peso() = peso + self.pesoInterior() + self.pesoMotor()