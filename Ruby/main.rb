#nombre_usuario = "Juan"
#puts nombre_usuario
#edad = 26
#puts edad+5
#puts 9/3

#puts 10.to_f/3.to_f

#puts "hola " + nombre_usuario

#puts "hola #{nombre_usuario}, \"bienvenido\""

#puts nombre_usuario.methods
#puts "ingresa un numero"
#numero_uno = gets.chomp.to_f
#puts "ingresa un numero"
#numero_dos = gets.chomp.to_f
#puts"el numero ingresado fue #{numero_uno}. gracias"
#puts "La suma de estos numeros es #{numero_uno+numero_dos}. gracias"

#if numero_uno>numero_dos
	#puts "El numero uno es mayor a numero_dos"
#elsif numero_uno==numero_dos
	#puts "Los nuemros son iguales"
#else
	#puts "El numero uno no es mayor a numero dos"
#end

#puts "Ingresa tu calificacion:"

#calificacion = gets.chomp.to_i

#case calificacion
#	when 5
#		puts "Excelente"
#	when 4
#		puts "Sobresaliente"
#	when 3
#		puts "Aceptable"
#	when 2
#		puts "Insuficiente"
#	when 1
#		puts "Deficiente" 
#	else
#		puts "Nota no valida"
#end

#frutas = ['Manzana','Pera','Uva','Anon','Durazno']

#puts frutas[1]

#frutas.each do |fruta|
#	puts fruta
#end

#puts frutas.sort.join(', ')

#puts frutas.include?('durazno')

#(1..5).each do |numero|
#	puts "El numero vale #{numero}"
#end

#i = 0
#while i<10
#	puts "I vale #{i}"
#	i = i+1

#begin
#	puts "I vale #{i}"
#	i = i+1
#end while i<10

#5.times do
#	puts "hola"
#end

#5.upto(10) do |valor|
#	puts valor
#end

#10.downto(5) do |valor|
#	puts valor
#end

#persona = {"nombre" => "Juan", "edad" => 26}

#persona = {nombre: "Juan", edad = 26}
#puts persona['edad']

#persona.each do |clave, valor|
#	puts "La clave es #{clave} y el valor es #{valor}"
#end
#puts persona.length
#cuenta la cantidad de posiciones en un Hash

#puts persona.has_key?("edad")
#me indica si existe una llave dentro de un Hash

#puts persona.keys

#def cuadrado(numero) 
#	return numero*numero
#end

#puts "Ingresa un Numero:"
#mi_numero= gets.chomp.to_f
#puts "El cuadrado es: #{cuadrado(mi_numero)}"

#def hola_personas(*personas)
#	personas.each do |personas|
#		puts "Hola #{personas}"
#	end
#end

#gente = ['jaime','alberto','pedro','juan']
#hola_personas('jaime','alberto','Pedro',*gente)
#El operador splat convierte todos los parametros que enviemos en un arreglo dentro del metodo

#def suma(numero_uno:0,numero_dos:0)
#	return numero_uno+numero_dos
#end

#puts suma(4,7)
#puts suma(numero_dos:4,numero_uno:7)
#Los keywords Argunment me permiten bautizar los parametros de tal modo que se puedan enviar en cualquier orden
#puts suma(numero_dos:4)
#los Keywords Arguments	tambien permiten inicializar valores, este valor inicial, el metodo lo utiliza sino especificamos ese parametro

class Persona

	attr_accessor :nombre, :edad
	
	def initialize(n,e)
		self.nombre = n
		self.edad = e
	end
	def saludar
		puts "Hola"	
	end	
end

class Alumno < Persona

	attr_accessor :codigo

	def saludar
		super
		puts "Profe"
	end

	def estudiar
		puts "estoy estudiando"
	end
end

persona_uno = Persona.new("Juan",50)
persona_dos = Persona.new("Maria",35)

#persona_uno.nombre = "Juan"
#persona_dos.nombre = "Maria"

persona_dos.saludar
puts persona_uno.nombre
puts "la edad de la persona es #{persona_uno.edad}"


alumno_uno = Alumno.new("Jaimito",17)

alumno_uno.estudiar
alumno_uno.saludar