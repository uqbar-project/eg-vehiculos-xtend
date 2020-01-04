package ar.edu.vehiculos

import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.DisplayName
import org.junit.jupiter.api.Test

import static org.junit.jupiter.api.Assertions.assertEquals
import static org.junit.jupiter.api.Assertions.assertFalse
import static org.junit.jupiter.api.Assertions.assertThrows
import static org.junit.jupiter.api.Assertions.assertTrue

@DisplayName("Ejemplo de Vehículos")
class TestVehiculo {
	
	Avion avion
	Auto auto1
	Vehiculo auto2
	
	@BeforeEach
	def void init() {
		avion = new Avion()
		auto1 = new Auto()
		auto2 = new Auto()
	}

	@Test
	@DisplayName("inicialmente los vehículos no chocaron")
	def void estadoInicialDeLosVehiculosSinChocar() {
		assertFalse(auto1.chocado)
		assertFalse(avion.chocado)
	}

	@Test
	@DisplayName("inicialmente un auto no tiene colisiones")
	def void estadoInicialDeLosAutosSinChocar() {
		assertEquals(0, auto1.colisiones)
	}
	
	@Test
	@DisplayName("al avanzar un auto aumenta sus kilómetros recorridos")
	def void avanzarAuto() {
		auto1.avanzar()
		assertEquals(40, auto1.kilometros)
	}

	@Test
	@DisplayName("al avanzar un avión aumenta la cantidad de veces que avanzó")
	def void avanzarAvion() {
		assertEquals(0, avion.avances)
		avion.avanzar()
		assertEquals(1, avion.avances)
	}
	
	@Test
	@DisplayName("cuando chocan dos autos, ambos registran que chocaron")
	def void chocarDosAutos() {
		auto1.chocar(auto2)
		assertTrue(auto1.chocado)
		assertTrue(auto2.chocado)
	}

	@Test
	@DisplayName("no es posible que choquen un avión y un auto")
	def void chocarAvionConAuto() {
		assertThrows(RuntimeException, [ avion.chocar(auto1) ])
	}

	@Test
	@DisplayName("no es posible que choquen un auto y un avión")
	def void chocarAutoConAvion() {
		assertThrows(RuntimeException, [ auto1.chocar(avion) ])
	}
	
}