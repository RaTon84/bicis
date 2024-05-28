import bicis.*

object deposito {
	const bicis = [];
	var property estaConLuz = false;
	var primerBiciConLuz = false;
	
	method agregarBici(bici) {
		bicis.add(bici);
		self.seHizoLaLuz();
	} 
	method bicis()=bicis;
	method bicisRapidas(){
		return bicis.filter({b=>b.velocidadCrucero()>25});
	}
	method marcas(){
		return bicis.map({b=>b.marca()}).asSet();
	}
	method esNocturno(){
		return bicis.any({b=>!b.tieneLuz()});
	}
	method puedeLlevar(kilos){
		return bicis.any({b=>b.carga()>kilos});
	}
	method marcaBiciRapida(){
		return bicis.max({b=>b.velocidadCrucero()}).marca();
	}
	method cargaTotalBicisLargas(){
		return bicis.filter({b=>b.largo()>170}).sum({b=>b.carga()});
	}
	method cantidadSinAccesorios(){
		return bicis.count({b=>b.accesorios().isEmpty()});
	}
	method bicisCompanieras(bici){
		return bicis.filter({b=>b.esCompaniera(bici)});
	}
	method hayCompanieras(){
		return (0..bicis.size()-1).any({i=>
			bicis.any({b=>b.esCompaniera(bicis.get(i))});
		})
	}
	method parejasDeCompanieras(){
		(0..bicis.size()-1).forEach({i=>
			bicis.forEach({b=>
				parDeBicis.AgregarSiEsCompaniera(b,bicis.get(i))})});
		return parDeBicis.parDeBicis();		
	}	
	method seHizoLaLuz(){
		if (bicis.last().tieneLuz() && !estaConLuz && !primerBiciConLuz){
			estaConLuz = true; primerBiciConLuz=true
		}else{estaConLuz = false}
	}
}
