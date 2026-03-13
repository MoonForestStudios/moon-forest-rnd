extends Node2D

func _ready() -> void:
	cycleWithWhile()
	cycleWithFor()

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
			print("\t\n Fin del juego")
			break

	print("Turnos recibidos %d " % shifts)
	print("Pociones restantes %d " % potions)
	
func cycleWithFor() -> void:
	var email: String = "test@gmail.com"
	const domainExtensio: String = ".com"
	var containAtSign: bool = false
	
	for i in email.length():
		if email[i] == "@":
			containAtSign = true
	
	if containAtSign:
		if domainExtensio in email:
			print("Correo ingresado correctamente.")
		else:
			print("Correo invalido, falta .com")
	else: print("Correo invalido, no se ha ingresado el @.")
	
