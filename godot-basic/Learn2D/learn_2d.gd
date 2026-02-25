extends Node2D

var numero_natural = 23
var numero = -21
var numero_real = 12.4
var otro_numero_real = 3.1416

var edad_juan = 25
var edad_felipe = 23

''' Función que corre el proyecto'''
func _ready():
	print('Entrando')
	var suma_edades = edad_felipe + edad_juan # 48
	var resta_edades = edad_felipe - edad_juan # -2
	var multiplicar_edades = edad_felipe * edad_juan
	var division_edades = edad_felipe / edad_juan
	var modulo_edades = edad_felipe % edad_juan
	
	print(suma_edades)
	pass
	
