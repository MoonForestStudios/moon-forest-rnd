extends Node2D

func _ready():
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
	
func isGreaterThanN2(n1, n2):
	return n1 > n2
