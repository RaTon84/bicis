import accesorios.*

class Bicicleta{
	const property rodado; 
	const property largo; 
	const property marca; 
	const accesorios = [];
	
	method agregarAccesorio(accesorio) = accesorios.add(accesorio);
	method accesorios() = accesorios;
	method altura() = rodado*2.5+15;
	method velocidadCrucero() = if(largo>120) rodado+6 else rodado+2;
	method carga() = accesorios.sum({a=>a.carga()});
	method peso() = rodado/2 + accesorios.sum({a=>a.peso()});
	method tieneLuz() = accesorios.any({a=>a.esLuminoso()});
	method cantidadAccesoriosLivianos()= accesorios.count({a=>a.peso()<1});
	method esCompaniera(bici) = bici.marca()==self.marca()&&(bici.largo()-self.largo()).abs()<=10&&self!=bici;	
}

object parDeBicis{
	const parDeBicis= #{};
	method parDeBicis()=parDeBicis
	method borrar()=parDeBicis.clear()
	method AgregarSiEsCompaniera(bici1,bici2){		
		if(bici1.esCompaniera(bici2)&&!parDeBicis.contains([bici2,bici1])){
			parDeBicis.add([bici1,bici2]);
		}
	}	
}