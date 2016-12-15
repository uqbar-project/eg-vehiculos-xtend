package ar.edu.vehiculos

import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class Auto implements Vehiculo {

	int colisiones = 0
	int kilometros = 0
	int velocidad = 40
	
	override avanzar() {
		kilometros += velocidad
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