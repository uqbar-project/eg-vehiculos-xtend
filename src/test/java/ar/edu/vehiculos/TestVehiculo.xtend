package ar.edu.vehiculos

import org.junit.Assert
import org.junit.Before
import org.junit.Test

class TestVehiculo {
	
	Avion boeing
	Auto fitito
	Vehiculo fierrito
	
	@Before
	def void init() {
		boeing = new Avion()
		fitito = new Auto()
		fierrito = new Auto()
	}

	@Test
	def void estadoInicialDeLosVehiculosSinChocar() {
		Assert.assertFalse(fitito.chocado)
		Assert.assertFalse(fierrito.chocado)
		Assert.assertFalse(boeing.chocado)
	}
	
	@Test
	def void avanzarFitito() {
		fitito.avanzar()
		Assert.assertEquals(40, fitito.kilometros)
	}

	@Test
	def void chocarFititoConFierrito() {
		fitito.chocar(fierrito)
		Assert.assertTrue(fitito.chocado)
		Assert.assertTrue(fierrito.chocado)
	}
	
	@Test(expected=typeof(RuntimeException))
	def void chocarBoeingConFitito() {
		boeing.chocar(fitito)
	}
	
	@Test
	def void avionQueAvanza() {
		Assert.assertEquals(0, boeing.avances)
		boeing.avanzar()
		Assert.assertEquals(1, boeing.avances)
	}
	
	@Test
	def void autoQueAvanza() {
		fitito.avanzar()
		Assert.assertEquals(40, fitito.kilometros)
	}
}