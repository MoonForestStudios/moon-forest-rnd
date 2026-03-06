extends Node2D

@export var option: int
@export var value: float

var result: float

func operatorTernario() -> String:
	var textResult: String = "Correct" if option != 0 else "Incorrec"
	return textResult

func _ready() -> void:
	if (option == 1):
		result = value * 100
		print("Esto es verdadero: %.2f " % result)
	elif (option == 2):
		result = value * 50
		print("Esta es verdadero: %.2f " % result)
	else:
		print("Esto es falso: %.2f " % result)
		
	print("The textResult is the: %s " % operatorTernario())
