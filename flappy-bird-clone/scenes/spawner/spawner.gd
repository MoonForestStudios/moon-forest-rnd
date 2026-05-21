extends Node
class_name Spawner

signal on_obstacle_crashed

const OBSTACLE_SCENE = preload("res://scenes/obstacles/obstacle.tscn")

@onready var timer: Timer = $Timer

func spawn_obstacle() -> void:
	var obs_instance: Obstacle = OBSTACLE_SCENE.instantiate()
	obs_instance.on_player_crashed.connect(_on_player_crashed)
	
	var viewport: Viewport = get_viewport()
	obs_instance.position.x = viewport.get_visible_rect().end.x + 150
	
	var half_height = viewport.size.y / 2
	obs_instance.position.y = randf_range(half_height + 240, half_height - 50)
	
	add_child(obs_instance)
	

func stop_obstacle() -> void:
	timer.stop()
	for obs: Obstacle in get_children().filter(func(x): return x is Obstacle):
		obs.set_speed(0)
	
func _on_player_crashed() -> void:
	on_obstacle_crashed.emit()
	stop_obstacle()
	
func _on_timer_timeout() -> void:
	spawn_obstacle()
