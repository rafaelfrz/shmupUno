extends CharacterBody2D

@export var speed = 400
const SPEED = 400

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed
	
	if Input.is_action_pressed("slow"):
		_slow_movement()
	else:
		speed = SPEED

func _physics_process(delta):
	get_input()
	move_and_slide()
<<<<<<< Updated upstream
=======

func _slow_movement():
	speed = 250
>>>>>>> Stashed changes
