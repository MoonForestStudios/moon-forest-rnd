extends Node2D

func _ready() -> void:
	var dictionary: Dictionary = {}
	
	var player: Dictionary = {
		"name": "Jack",
		"level": 1,
		"live": 100
	}
	
	player["points"] = 0
	player.set("weapon", "sword") #Agregar un valor a traves de set.t
	print(player)
	
	player.set("level", 3)
	print(player)
	
	player.erase("weapon")
	print(player)
	
	if player.has("name"):
		print("El jugador cuenta con ese atributo.")
	
	# Obtener valor del atributo del diccionario
	# si no devolver valor por defecto.
	var stamine = player.get("stamine", 60)
	print(stamine)
	nestedDictionary()
	
	
func nestedDictionary() -> void:
	var inventary: Dictionary = {
		"weapons": {
			"primary": {
				"name": "joker",
				"live": 10000000,
			},
			
			"secondary": {
				"name": "dany",
				"live": 120
			}
		},
		
		"potions": {
			"live": 3,
			"mana": 2
		},
	}
	print(inventary["weapons"].get("primary").get("live"))
