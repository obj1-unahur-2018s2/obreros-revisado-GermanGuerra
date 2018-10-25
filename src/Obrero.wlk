import Construciones_y_materiales.*

//------------CLASE OBRERO MAESTRO-----------------//
class Obrero {
	
	var licencia = null
	//var jornada_trabajada = null
	
	method esta_de_licencia() {
		return licencia
	}
	
	method de_descanso() {
		licencia = true
	}
	method de_trabajo() {
		licencia = false
	}
	
}
//-------------SUB CLASES DE OBRERO-----------------------//


//-------------ALBAÑIL-----------------//
class Albanil inherits Obrero{
	
	method trabajar_jornada(obra) {
		obra.usar_ladrillos(100)
		
		obra.levantar_pared(3)
	}
	
	
}
//-------------GASISTA-----------------//
class Gasista inherits Obrero{
	
	method trabajar_jornada(obra) {
		obra.usar_canos(2)
		obra.usar_fosforos(20)
		
		obra.colocar_canos_de_gas(3)
	}
	
}
//-------------PLOMERO-----------------//
class Plomero inherits Obrero{
	
	method trabajar_jornada(obra) {
		obra.usar_canos(10)
		obra.usar_arandelas(30)
		obra.desperdicio_generado(1)
		
		obra.colocar_canos_de_agua(9)
	}
	
}
//-------------ELECTRICISTA-----------------//
class Electricista inherits Obrero{
	
	method trabajar_jornada(obra) {
		obra.usar_cable(4)
		obra.usar_cinta(1)
		
		obra.colocar_cableado(4)
	}
	
}