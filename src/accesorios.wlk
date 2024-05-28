object farolito{
	method peso() = 0.5;
	method carga() = 0;
	method esLuminoso() = true;
}

object canasto{
	var property volumen = 8;
	method peso() = 0.max(volumen/10);
	method carga() = volumen*2;
	method esLuminoso() = false;
}

object morral{
	var property largo = 21;
	var property tieneOjoGato = false;
	var property volumen = 0;
	method peso() = 1.2;
	method carga() = 0.max(largo/3);
	method esLuminoso() = tieneOjoGato;
}
/* 
class accesorio{
	const property peso;
	const property carga;
	const property esLuminoso;
}*/