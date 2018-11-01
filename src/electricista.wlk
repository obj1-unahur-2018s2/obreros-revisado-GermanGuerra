import obrero.*
import oucra.*


class Electricista inherits Obrero {
	const consumoMetrosCable = 4
	const consumoCintaAisladora = 1

	override method trabajarEn(obra) {
		obra.consumirMetrosDeCable(consumoMetrosCable)
		obra.consumirCinta(consumoCintaAisladora)
		super(obra)
		obra.cable_colocado()
	}
	override method consulta_de_cobro() {
		return jornadas_trabajadas*oucra.valor_jornada_electrisista()
	}
}

