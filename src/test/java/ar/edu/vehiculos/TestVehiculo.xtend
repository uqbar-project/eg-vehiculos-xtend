package ar.edu.vehiculos

import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import static org.junit.jupiter.api.Assertions.assertTrue
import static org.junit.jupiter.api.Assertions.assertFalse
import static org.junit.jupiter.api.Assertions.assertEquals
import static org.junit.jupiter.api.Assertions.assertThrows

class TestVehiculo {
	
	Avion boeing
	Auto fitito
	Vehiculo fierrito
	
	@BeforeEach
	def void init() {
		boeing = new Avion()
		fitito = new Auto()
		fierrito = new Auto()
	}

	@Test
	def void estadoInicialDeLosVehiculosSinChocar() {
		assertFalse(fitito.chocado)
		assertFalse(fierrito.chocado)
		assertFalse(boeing.chocado)
	}
	
	@Test
	def void avanzarFitito() {
		fitito.avanzar()
		assertEquals(40, fitito.kilometros)
	}

	@Test
	def void chocarFititoConFierrito() {
		fitito.chocar(fierrito)
		assertTrue(fitito.chocado)
		assertTrue(fierrito.chocado)
	}
	
	@Test
	def void chocarBoeingConFitito() {
		assertThrows(RuntimeException, [ boeing.chocar(fitito) ])
	}

	@Test
	def void chocarFititoConBoeing() {
		assertThrows(RuntimeException, [ fitito.chocar(boeing) ])
	}
	
	@Test
	def void avionQueAvanza() {
		assertEquals(0, boeing.avances)
		boeing.avanzar()
		assertEquals(1, boeing.avances)
	}

}