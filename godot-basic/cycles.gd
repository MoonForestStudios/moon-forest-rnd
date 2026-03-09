extends Node2D

func _ready() -> void:
	cycleWithWhile()

func cycleWithWhile() -> void:
	var live: int = 100
	var potions: int = 3
	var shifts: int = 0
	
	while live > 0:
		# Simulando daño por turno
		live -= 15
		shifts += 1
		print("Recibes daño. Vida actual: %d" % live)
		
		if potions > 0 and live < 50:
			live += 30
			potions -= 1
			print("Usasta una pocion, has recuperado: %d puntos de vida" % live)
			print("Pociones restantes: %d " % potions)
			
		if shifts >= 10:
			print("Lograste 10 turnos.")
		
func cycleWithFor() -> void:
	pass
