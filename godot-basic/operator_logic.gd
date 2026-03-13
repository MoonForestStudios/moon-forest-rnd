extends Node2D

@export var num1: int
@export var num2: int
@export var average: float
@export var athlete: String
@export var age: int

func _ready() -> void:
	if num1 > 0 && num2 > 0:
		print("Ambos numeros son mayores que 0.")
	numberValidationWithAnd()
	scholarshipAverageWithOr()
	isLegalAge()

func numberValidationWithAnd() -> void:
	if (num1 > 0 and num2 <= 10) and (num2 > 0 and num2 <= 10):
		print("Ambos numeros son mayor a 0 y menor a 10.")
	else:
		print("Ambos numeros no son mayor a 0 y menor a 10.")
		
func scholarshipAverageWithOr() -> void:
	if (average >= 18 or athlete == "Si"):
		print("Puedes acceder a una beca!!")
	else:
		print("No cumples los requisitos.")
		
func isLegalAge() -> void:
	var result = "No eres mayor de edad." if !(age >= 21) else "Si eres mayor de edad" 
	print(result)
