class Formacion {

	const locomotoras = []
	const property vagones = []

	method totalMaximoDePasajeros() = vagones.sum({ v => v.cantidadMaximaDePasajeros() })

	method cantidadVagonesLivianos() = vagones.count({ v => v.sosLiviano() })

	method velocidadMaxima() = locomotoras.min({ l => l.velocidadMaxima() }).velocidadMaxima()

	method esEficiente() = locomotoras.all({ l => l.esEficiente() })

	method vagonMasPesado() = vagones.max({ v => v.pesoMaximo() })

	method puedeMoverse() = self.arrastreUtil() >= self.pesoTotalVagones()

	method arrastreFaltante() = if (not self.puedeMoverse()) self.pesoTotalVagones() - self.arrastreUtil() else 0

	method pesoTotalVagones() = vagones.sum({ v => v.pesoMaximo() })

	method arrastreUtil() = locomotoras.sum({ l => l.arrastreUtil() })

	method estaBienArmada() = self.puedeMoverse()

	method esCompleja() = false

	method pesoTotal() = self.pesoTotalVagones() + self.pesosTotalLocomotoras()

	method pesosTotalLocomotoras() = locomotoras.sum({ l => l.peso() })

	method totalDeUnidades() = vagones.size() + locomotoras.size()

	method agregarVagon(vagon) {
		vagones.add(vagon)
	}

	method agregarLocomotora(locomotora) {
		locomotoras.add(locomotora)
	}

}

class FormacionCortaDistancia inherits Formacion {

	override method agregarVagon(vagon) {
		if (self.totalDeUnidades() < 20) super(vagon) else self.error("No se pueden agregar mas unidades")
	}

	override method agregarLocomotora(locomotora) {
		if (self.totalDeUnidades() < 20) super(locomotora) else self.error("No se pueden agregar mas unidades")
	}

}

class FormacionLargaDistancia inherits Formacion {

	override method esCompleja() = self.totalDeUnidades() > 20 or self.pesoTotal() > 10000

}

