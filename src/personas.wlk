	import planetas.*
	import armas.*
	
	class Persona {
		
		var property edad
		
		method potencia() = 20	
		method inteligencia() = if(edad.between(20,40)) 12 else 8	
		method esDestacado() = edad == 25 || edad == 35		
		method ofrecerTributoA(unPlaneta){}
		method suValor() = self.potencia() + self.inteligencia()
	}
	
	class Soldado inherits Persona {
		const property armas = []	
		
		
		override method ofrecerTributoA(unPlaneta){
			unPlaneta.contruirMuralla(5)
		}
		
		method potenciaDeArmas() = armas.sum({
			a => a.potencia(self)
		})
		
		override method potencia() = super() + self.potenciaDeArmas()
		
	}

	class Atleta inherits Persona {
		var property masaMuscular = 4
		var property cantidadDeTecnicasQueConoce = 2
		
		override method potencia() = super() + masaMuscular * cantidadDeTecnicasQueConoce
		override method esDestacado() = super() || cantidadDeTecnicasQueConoce > 5
		
		method entrenarUnaCatidadDe(dias){
			masaMuscular += dias/5
		}
		
		method aprederUnaTecnica() {
			cantidadDeTecnicasQueConoce++
		}
		
		override method ofrecerTributoA(unPlaneta){
			unPlaneta.contruirMuralla(2)
		}
	}
	
	class Docente inherits Persona{
		
		var property cantidadDeCursosQueDio = 0
		
		override method suValor() = super() + 5
		override method inteligencia() = super() + 2 * cantidadDeCursosQueDio
		override method esDestacado() = cantidadDeCursosQueDio > 3
		
		override method ofrecerTributoA(unPlaneta){
			unPlaneta.fundarMuseo()
		}	
		
	}
	