extends Node2D

func _ready() -> void:
	sayHello("Jack")
	logData(getFullName("Jack", "Danseour"))

func sayHello(name: String) -> void:
	logData(name)
	
func logData(data: String) -> void:
	print("Hola, %s" % data)
	
func getFullName(name: String, lastName: String) -> String:
	return name + " " + lastName
