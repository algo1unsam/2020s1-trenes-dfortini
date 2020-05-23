class Locomotora {

	const property peso
	const pesoMaximoArrastre
	const property velocidadMaxima

	method arrastreUtil() = pesoMaximoArrastre - peso

	method esEficiente() = self.arrastreUtil() >= peso * 5

}

class Deposito {

	const property formaciones = []
	const property locomotorasSueltas = []

	method vagonesMasPesados() = formaciones.map({ f => f.vagonMasPesado() })

	method necesitaConductorExperimentado() = formaciones.any({ f => f.esCompleja() })

	method locomotoraQueArrastre(formacion) = locomotorasSueltas.find({ l => l.arrastreUtil() >= formacion.arrastreFaltante() })

	method agregarLocomotora(formacion) {
		if (formacion.arrastreFaltante() > 0) {
			const locomotoraElegida = self.locomotoraQueArrastre(formacion)
			formacion.agregarLocomotora(locomotoraElegida)
			locomotorasSueltas.remove(locomotoraElegida)
		}
	}

}

