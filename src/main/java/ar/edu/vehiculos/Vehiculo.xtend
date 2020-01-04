package ar.edu.vehiculos

import org.eclipse.xtend.lib.annotations.Accessors

interface Vehiculo {
	def void avanzar()
	def void chocar(Vehiculo vehiculo)
	
	def boolean chocado()
	def void doChocar()
}

class Auto implements Vehiculo {

	@Accessors(PUBLIC_GETTER) int colisiones = 0
	@Accessors int kilometros = 0
	static int KILOMETROS_POR_HORA = 40
	
	override avanzar() {
		kilometros += ar.edu.vehiculos.Auto.KILOMETROS_POR_HORA
	}
	
	override chocar(Vehiculo vehiculo) {
		this.doChocar	
		vehiculo.doChocar()
	}
	
	override doChocar() {
		colisiones++
	}
	
	override chocado() {
		colisiones > 0
	}
	
}

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
