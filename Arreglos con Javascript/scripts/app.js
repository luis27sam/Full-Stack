var frutas=['fresa','uva','manzana','naranja','pera'];

console.log(frutas.length);
/*length cuenta la cantidad de elementos de un arreglo*/

frutas.push('mandarina');

frutas.push('melon');
/*Push agrega un nuevo elemento a un arreglo*/
mostra_frutas();

frutas.pop()
/*POP elimina el ultimo elemento de un arreglo*/
mostra_frutas();

function mostra_frutas() {
		for(var i=0;i<frutas.length;i++){
		console.log("en la posicion "+i+" esta la fruta "+frutas[i]);
	}
	console.log("en total hay "+frutas.length+" frutas");
}


var amigos_estudio=['miguel','daniel','alejandro','1000','20'];
var amigos_trabajo=['william','jonathan'];

var amigos=amigos_estudio.concat(amigos_trabajo);
/*CONCAT une dos arreglos*/
console.log(amigos);

console.log(amigos.join("-"));
/*JOIN convierte un arreglo en una cadena de texto y separa la posicion por el (los) caracteres que yo defina como parametro*/

console.log(amigos.sort());
/*SORT ordena los elementos de una lista alfabeticamente*/

var pos_jonathan=amigos.indexOf('jonathan');

console.log(pos_jonathan);
/*indexOf me devuelve la posicion del elemento que yo indique como parametro*/

amigos.splice(pos_jonathan,1);
/*splice elimina la cantidad de elementos a partir de una posicion*/
console.log(amigos);
/*Forma de nombrar un objeto*/
var persona={
		nombre:"Juan",
		edad:26,
		tiene_mascota:true,
		mascota:{nombre:"firulais",raza:"galgo"}
	};
console.log(persona['nombre']);
console.log(persona.nombre);
console.log(persona.mascota.raza);

/*Typeof nos muestra su valor*/
console.log(typeof persona);
console.log(typeof persona.edad);

/*tostring convierte un numero a texto*/
console.log(persona.edad);
console.log(persona.edad.toString());

var cantidad="25 manzanas";
console.log(parseInt(cantidad));


var texto= " En algun lugar de la mancha ";

console.log(texto.length);
console.log(texto.indexOf("lugar"));

var palabra= texto.slice(9,14);
console.log(palabra);

var palabra2= texto.substr(9,5);
console.log(palabra2);

console.log(texto.replace('mancha','ciudad'));

/*Para poner texto en mayuscula o en minuscula*/
console.log(texto.toUpperCase());
console.log(texto.toLowerCase());

/*Quita espacios al inicio y al fin*/
console.log(texto.trim());


