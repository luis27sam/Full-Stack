var lista=document.getElementById("lista_mercado");
var leche=document.createElement("li");
var texto= document.createTextNode("Leche Alqueria");
leche.appendChild(texto);
lista.appendChild(leche);

console.log(leche);

function agregar(){
	var producto=document.getElementById('producto').value;
	var lista=document.getElementById("lista_mercado");
	var item=document.createElement("li");
	var texto= document.createTextNode(producto);
	item.appendChild(texto);
	lista.appendChild(item);
}

var lista=document.getElementById("lista_mercado");
console.log(lista.parentNode);

var elementos=document.getElementsByTagName('li');
var lista= elementos[0].parentNode;
var item=document.createElement("li");
var texto=document.createTextNode("ejemplo");
item.appendChild(texto);
lista.insertBefore(item,elementos[0]);


item.innerHTML="<p>Otro Ejemplo</p>";
lista.replaceChild(item,elementos[0])



console.log(lista);
