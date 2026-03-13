extends Node2D

@export var option: int
@export var statusPlayer: String

func _ready() -> void:
	match option:
		1, 4: print("Escogiste la opción 1 o la 4")
		2: print("Escogiste la opción 2")
		3: print("Escogiste la opción 3")
		
	match statusPlayer:
		"correr": print("El personaje esta corriendo")
		"volar": print("El personaje esta volando")
		var status when status.contains("lanzar"):
			print("El personaje esta lanzando el movimiento: [ %s ]" % statusPlayer)
		_: print("Estado del jugador invalido!")	
