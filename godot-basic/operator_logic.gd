extends Node2D

@export var num1: int
@export var num2: int

func _ready() -> void:
	if num1 > 0 && num2 > 0:
		print("Ambos numeros son mayores que 0.")
	else:
		print("Los numeros no son mayores que 0.")
	numberValidation()

func numberValidation() -> void:
	if (num1 > 0 and num2 <= 10) and (num2 > 0 and num2 <= 10):
		print("Ambos numeros son mayor a 0 y menor a 10.")
	else:
		print("Ambos numeros no son mayor a 0 y menor a 10.")
