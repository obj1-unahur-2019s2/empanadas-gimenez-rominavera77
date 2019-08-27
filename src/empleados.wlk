object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	//var dinero = 0
	//var deuda = 0
	var resultado = 0
	
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(){ resultado += sueldo}
	method gastar(cuanto){ 
		resultado -= cuanto
	}
	method totalDeuda(){
/* 		if (dinero < 0){
			deuda = -dinero
		}
		else if (dinero > 0){
			deuda = 0			
		}
		return deuda*/
		return resultado.min(0)
}

method totalDinero(){
	//return dinero.max(deuda)
	return resultado.max(0)
	}
}


object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var totalCobrado = 0
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada // es igual que el return
	// method sueldo () {return }
	method cobrarSueldo(){				// hace algo por eso NO	tiene un RETURN
		totalCobrado += self.sueldo()
	}
	method totalCobrado(){
		return totalCobrado  //devuelve algo
	}
}

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { dinero -= empleado.sueldo() 
		empleado.cobrarSueldo()
	}
}
