import vagones.*

class Formacion{
	var property formacion = new List()
	
	method agregar(unVagon) {
		vagones.add(unVagon)
	}
	
	method cuantosPasajerosPuedeLlevar() {
		return vagones.sum{vagones => vagon.cantidadDePasajeros()}
	}
	
	method 
	
}