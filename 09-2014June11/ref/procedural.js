for (var i:int = 0; i < 5; i++) {
	var leCell:ClaseCell = new ClaseCell();
	leCell.nombre = "pury"+i;
}

var listadoCeldas = [pury1, pury2, pury3, pury4, pury5];
pintarTabla(listadoCeldas);

listadoCeldas += [pury5, pury6, pury7, pury8, pury9, pury10];
pintarTabla(listadoCeldas);
;
listadoCeldas.addEventListener(Change:l{pintarTabla(listadoCeldas)});

}
function pintarTabla (celdas:Array) {
	//BLA
}