package ar.edu.vehiculos

import org.eclipse.xtend.lib.annotations.Accessors

class Avion implements Vehiculo {

	@Accessors
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