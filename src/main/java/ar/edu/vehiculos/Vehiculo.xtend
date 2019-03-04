package ar.edu.vehiculos

interface Vehiculo {
	def void avanzar()
	def void chocar(Vehiculo vehiculo)
	
	def boolean chocado()
	def void doChocar()
}