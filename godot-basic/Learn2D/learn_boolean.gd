extends Node2D

func _ready() -> void:
	var today_is_friday = false
	var open = true
	
	print("Today is friday: " + str(today_is_friday))
	print("Today is open: " + str(open))

	var n1 = 10
	var n2 = 20

	var is_greater = isGreaterThanN2(n1, n2)
	print("Is n1 greater than n2: " + str(is_greater))

	n1 = 50
	is_greater = isGreaterThanN2(n1, n2)
	print("Is n1 greater than n2: " + str(is_greater))
	
	# && (and), || (or) , !(negation)
	var a = true
	var b = false
	print(a && b)
	print(a || b)
	print(!a)
	print(!b)
	
func isGreaterThanN2(n1: int, n2: int) -> bool:
	return n1 > n2

var num: int = 14
var real: float = 3.1416
var text: String = "A string!"
var flag: bool = true

var numTwo := 40
var realTwo := 40.20
var textTwo := "A other string!"
var flagTwo := false
