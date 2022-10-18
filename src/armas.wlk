import personas.*

class Arma {	
	method potencia(unaPersona)	
}

class Pistolete inherits Arma {
	var property largo
	
	override method potencia(unaPersona){
			return if(unaPersona.edad() > 30) 3 * largo else 2 * largo
	}
}

class Espadon inherits Arma {
	var property peso
	
	override method potencia(unaPersona){
			return if(unaPersona.edad() < 40) peso * 0.5 else 6
	}
}
