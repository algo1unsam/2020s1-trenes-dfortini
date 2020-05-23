

class Vagon {
	method pesoMaximo()
	
	method sosLiviano() = self.pesoMaximo() < 2500
}

class VagonCarga inherits Vagon {
	const cargaMaxima
	
	override method pesoMaximo() = cargaMaxima + 160 
	
	method cantidadMaximaDePasajeros() = 0
}

class VagonPasajeros inherits Vagon  {
	const largo
	const ancho
	
	method cantidadMaximaDePasajeros() = if (ancho <= 2.5) largo * 8 else largo * 10
	
	override method pesoMaximo() = self.cantidadMaximaDePasajeros() * 80  
}
