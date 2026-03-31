extends CharacterBody2D

signal on_game_started

@export var gravity := 500.0
@export var jump_force := 400.0
@export var max_speed := 400.0
@export var rotation_speed := 2.0

var is_started := false
var should_process_input := true

func _physics_process(delta: float) -> void:
	
	if Input.is_action_pressed("jump") and should_process_input:
		if not is_started:
			is_started = true
			on_game_started.emit()
		jump()
		
	if not is_started:
		return
		
	velocity.y += gravity * delta # delta permite respetar los FPS de forma coherente entre dispositivos.
	''' Es lo mismo que usar la función min, la idea es regular la velocidad.
	if (velocity.y >= max_speed):
		velocity.y = max_speed 
	'''
	velocity.y = min(velocity.y, max_speed) # Regula la velocidad de caido
	
	move_and_slide() # Hace que se ejecute el movimiento del Nodo o Player
	rotatePlayer()
	
func jump() -> void:
	velocity.y = -jump_force
	rotation = deg_to_rad(-30) # rotation esta en radianes por eso la conversión
	
func rotatePlayer() -> void:
	if (velocity.y  > 0 and rad_to_deg(rotation) < 90):
		rotation += rotation_speed * deg_to_rad(1)
