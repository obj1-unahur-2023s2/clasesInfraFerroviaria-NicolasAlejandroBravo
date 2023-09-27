class Pasajero {
	const property ancho
	const property largo 
	const property tieneBanio
	var property estaOrdenado = true
	
	
	method cantPasajerosMax(){
		const pasajeros = if(ancho<=3){8 * largo}else{10*largo}
		return if(not estaOrdenado){0.max(pasajeros - 15)}else{pasajeros}
	}
	
	method pesoMaximo() = 2000 + 80 * self.cantPasajerosMax() + self.cantMaxCarga()
	
	method cantMaxCarga() = if(tieneBanio){300}else{800}
	
	method esPopular() = self.cantPasajerosMax() > 50
}

class Carga{
	const property maderasSueltas
	const property cargaMaximaIdeal
	
	method tieneBano() = false
	
	method cantPasajerosMax() = 0
	
	method pesoMaximo()= 0.max(cargaMaximaIdeal - 400 * maderasSueltas)
	
	method esPopular() = self.cantPasajerosMax() > 50
}

class Dormitorio{
	const property compartimientos
	const property camas
	
	
	method cantPasajerosMax() = compartimientos * camas
	method tieneBanio() = true
	method cantCargaMax() = 1200
	method pesoMaximo() = 4000 + 80 * self.cantPasajerosMax() + self.cantCargaMax()
	method esPopular() = self.cantPasajerosMax() > 50
	
}
