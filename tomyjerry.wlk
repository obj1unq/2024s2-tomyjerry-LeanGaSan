object tom {
	
	//Completar! Pueden aparecer variables y métodos nuevos!
	var energia = 50

	method comer(raton) {
		//Completar
		energia = energia + 12 + raton.peso()
	}
	
	method correr(distancia){
		//Completar!
		energia = energia - distancia / 2
	}
	
	method velocidadMaxima()  {
		//Completar!
		return 5 + energia / 10
	}
	
	// Parte 2
	method puedeComerAlRatonA(distancia){
		return self.energiaQueVaAGastarPorCorrer(distancia) < energia
	}

	method quiereComerARaton(raton, distancia) {
		return self.puedeComerAlRatonA(distancia) && self.vaAGanarMasEnergiaComiendoAlRatonQueLaQueVaAGastarCorriendo(raton, distancia)
	}

	method vaAGanarMasEnergiaComiendoAlRatonQueLaQueVaAGastarCorriendo(raton, distancia) {
		return self.energiaQueVaAGastarPorCorrer(distancia) < self.laEnergiaQueVaAGanarEnComerA(raton)
	}

	method energiaQueVaAGastarPorCorrer(distancia) {
		return distancia / 2
	}

	method laEnergiaQueVaAGanarEnComerA(raton) {
	  return 12 + raton.peso()
	}
}

object jerry {
	//Completar!
	var edad = 2 

	method peso() {
	  return edad * 20
	}

	method cumplir() {
	  edad = edad + 1
	}
}

object nibbles {
	//Completar!
	method peso() {
	  return 35
	}
}


// Parte 2:  Poder y Querer comer.
