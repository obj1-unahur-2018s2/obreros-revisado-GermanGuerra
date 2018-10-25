///-------------CLASE MAESTRO----------//
class Contrucciones {
	
	var property ladrillos = null
	var property cano = null
	var property cable = null
	var property cinta = null
	var property fosforos = null
	var property arandelas = null
	
	var property jornada_albanil = null
	var property jornada_gasista = null
	var property jornada_plomero = null
	var property jornada_electricista = null
	
	var pared_levantada = 0
	var cano_de_gas_colocado = 0
	var cano_de_agua_colocado = 0
	var metros_de_cable_colocado = 0
	var desperdicio = 0
	
	//-----------REGISTRO DE APORTES---------------//
	method levantar_pared(cantidad) {
		pared_levantada += cantidad
		jornada_albanil += 1
	}
	method colocar_canos_de_gas(cantidad) {
		cano_de_gas_colocado += cantidad
		jornada_gasista += 1
	}
	method colocar_canos_de_agua(cantidad) {
		cano_de_agua_colocado += cantidad
		jornada_plomero += 1
	}
	method colocar_cableado(cantidad) {
		metros_de_cable_colocado += cantidad 
		jornada_electricista += 1
	}
	
	//-----------COMPRA, USO DE MATERIALES Y SU STOCK---------------//
	method comprar_ladrillos (cantidad) {
		ladrillos += cantidad
	}
	method usar_ladrillos(cantidad){
		ladrillos -= cantidad
	}
	method comprar_canos (cantidad) {
		cano += cantidad
	}
	method usar_canos(cantidad){
		cano -= cantidad
	}
	method comprar_cable (cantidad) {
		cable += cantidad
	}
	method usar_cable (cantidad) {
		cable -= cantidad
	}
	method comprar_cinta (cantidad) {
		cinta += cantidad
	}
	method usar_cinta (cantidad) {
		cinta -= cantidad
	}
	method comprar_fosforos (cantidad) {
		fosforos += cantidad
	}
	method usar_fosforos (cantidad) {
		fosforos -= cantidad
	}
	method comprar_arandelas (cantidad) {
		arandelas += cantidad
	}
	method usar_arandelas (cantidad) {
		arandelas -= cantidad
	}
	method desperdicio_generado (cantidad) {
		desperdicio += cantidad
	}
	
	method check_materiales(){ 
		self.ladrillos()
		self.cano()
		self.cable()
		self.cinta()
		self.fosforos()
		self.arandelas()
	}
}

///////////////////SEPARACION DE CLASES DE MAESTRO /////////////////////////////



class Casas inherits Contrucciones {
	
	//var pisos = 0
	
	
	
}
class Edificio inherits Contrucciones {
	
	//var pisos = 0
	
	
	
}

