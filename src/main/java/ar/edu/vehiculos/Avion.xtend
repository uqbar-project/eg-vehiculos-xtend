package ar.edu.vehiculos

import ar.edu.vehiculos.Vehiculo

class Avion implements Vehiculo {

	int avances = 0
	
	override avanzar() {
		avances++	
	}
	
	override chocar(Vehiculo vehiculo) {
		this.doChocar
	}
	
	override chocado() {
		false
	}
	
	override doChocar() {
		throw new RuntimeException("Imposible chocar con un avion")
	}
	
}