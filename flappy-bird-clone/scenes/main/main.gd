extends Node2D

func _on_player_on_game_started() -> void:
	print("El signal ha sido exitoso!")

func _on_obstacle_on_player_crashed() -> void:
	print("Colision!")
