import obrero.*
import oucra.*


class Gasista inherits Obrero {
	const consumoMetrosCanios = 3
	const consumoFosforos = 20

	override method trabajarEn(obra) {
		obra.consumirMetrosDeCanio(consumoMetrosCanios)
		obra.consumirFosforos(consumoFosforos)
		super(obra)
		obra.poner_tubos_de_gas()
	}
}

