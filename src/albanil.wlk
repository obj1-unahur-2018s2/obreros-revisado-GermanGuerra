import obrero.*
import oucra.*

class Albanil inherits Obrero {
	const consumoLadrillos = 100

	override method trabajarEn(obra) {
		obra.consumirLadrillos(consumoLadrillos)
		obra.levantar_pared()
		super(obra)
	}
	override method consulta_de_cobro() {
		return jornadas_trabajadas*oucra.valor_jornada_albanil()
	}
	
}