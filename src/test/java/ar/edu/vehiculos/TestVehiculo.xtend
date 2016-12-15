package ar.edu.vehiculos

import org.junit.Assert
import org.junit.Before
import org.junit.Test

class TestVehiculo {
	
	Vehiculo boeing
	Auto fitito
	Vehiculo fierrito
	
	@Before
	def void init() {
		boeing = new Avion()
		fitito = new Auto()
		fierrito = new Auto()
	}

	@Test
	def void testAvanzarFitito() {
		fitito.avanzar()
		Assert.assertEquals(40, fitito.kilometros)
	}

	@Test
	def void testChocarFititoConFierrito() {
		fitito.chocar(fierrito)
		Assert.assertTrue(fitito.chocado)
		Assert.assertTrue(fierrito.chocado)
	}
	
	@Test(expected=typeof(RuntimeException))
	def void testChocarBoeingConFitito() {
		boeing.chocar(fitito)
	}
	
}