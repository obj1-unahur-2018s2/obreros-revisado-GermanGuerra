import obrero.*

class Obra {
	var property ladrillos
	var property metrosDeCanio
	var property metrosDeCable
	var property cinta
	var property fosforos
	var property arandelas
	
	var property fondos_de_obra 
	
	var plantillaObreros = #{}
//---------------------------------------------------------------------------------------------//
	var pared_levantada = 0
	var tuberias_de_gas_puestas = 0
	var tuberias_de_agua_puestas = 0
	var cableado_colocado = 0
	var desperdicio = 0

	method agregarObrero(obrero) {
		plantillaObreros.add(obrero)
	}

	method quitarObrero(obrero) {
		plantillaObreros.remove(obrero)
	}

	method registrarJornada() {
		self.obrerosDisponibles()
			.forEach({ obrero => obrero.trabajarEn(self)})
	}

	method obrerosDisponibles() {
		return plantillaObreros.filter { obrero => !obrero.estaDeLicencia() }
	}

	method estaEnLaPlantilla(obrero) {
		return plantillaObreros.contains(obrero)
	}

	method consumirLadrillos(cant) {
		ladrillos = ladrillos - cant
	}
	method levantar_pared(){
		pared_levantada += 3
	}

	method consumirMetrosDeCanio(cant) {
		metrosDeCanio = metrosDeCanio - cant
	}
	method poner_tubos_de_gas() {
		tuberias_de_gas_puestas += 3
	}
	method poner_tubos_de_agua() {
		tuberias_de_agua_puestas += 9
		desperdicio += 1
	}

	method consumirMetrosDeCable(cant) {
		metrosDeCable = metrosDeCable - cant
	}
	method cable_colocado(){
		cableado_colocado += 4
	}
	

	method consumirCinta(cant) {
		cinta = cinta - cant
	}

	method consumirFosforos(cant) {
		fosforos = fosforos - cant
	}

	method consumirArandelas(cant) {
		arandelas = arandelas - cant
	}

}

