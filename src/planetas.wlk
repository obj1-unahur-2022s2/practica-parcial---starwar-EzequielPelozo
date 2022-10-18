import personas.*

class Planeta {
	const property habitantes = #{}
	var property cantidadDeMuseos = 0
	var property longitudDeMuralla = 0
	
	method apaciguarA(otroPlaneta){
		habitantes.forEach({
			p => p.ofrecerTributoA(otroPlaneta)
		})
	}
	
	method coleccionDeHabitantesValiosos() = habitantes.filter({
		p => p.suValor() >= 40
	})
	
	method recibirAtributos(){
		habitantes.forEach({
			p => p.ofrecerTributoA(self)
		})
	}
	
	method necesitaReforzarse() = self.potenciaAparente() + 2 >=  self.potenciaReal()
	
	method habitanteMasPotente() = habitantes.max({
		p => p.potencia()
	})
	
	method potenciaAparente() = self.habitanteMasPotente().potencia() * habitantes.size()
	
	method contruirMuralla(cantidad) {
		longitudDeMuralla += cantidad
	}
	
	method fundarMuseo(){
		cantidadDeMuseos++
	}
	
	method delegacionDiplomatida() = habitantes.filter({
		p => p.esDestacado()
	})
	
	method valorInicialDeDefenza() = habitantes.count({
		p => p.potencia() >= 30
	})
	
	method todosSonCultos() = habitantes.all({
		p => p.inteligencia() >= 10
	})
	
	method esCulto() = self.todosSonCultos() && cantidadDeMuseos >= 2
	
	method potenciaReal() = habitantes.sum({
		p => p.potencia()
	})
}
