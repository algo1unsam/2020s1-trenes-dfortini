import formaciones.*
import vagones.*
import trenes.*

// vagones
const vagonAncho = new VagonPasajeros(largo = 10, ancho = 5)

const vagonFino = new VagonPasajeros(largo = 10, ancho = 2)

const vagonLiviano = new VagonPasajeros(largo = 3, ancho = 2)

const vagonCarga = new VagonCarga(cargaMaxima = 1000)

// locomotoras
const locomotoraEficiente = new Locomotora(peso = 10000, pesoMaximoArrastre = 100000, velocidadMaxima = 80)

const locomotoraNoEficinte = new Locomotora(peso = 10000, pesoMaximoArrastre = 50000, velocidadMaxima = 50)

const otraLocomotora = new Locomotora(peso = 10000, pesoMaximoArrastre = 20000, velocidadMaxima = 60)

// formaciones
const formacion1 = new FormacionCortaDistancia()

const formacion2 = new FormacionLargaDistancia()

const formacionConFaltante = new FormacionCortaDistancia()

const otraFormacionConFaltante = new FormacionCortaDistancia()

const deposito = new Deposito()
