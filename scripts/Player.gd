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

var starting_position

var p_bullet = load("res://scenes/p_bullet.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	if(Input.is_action_just_pressed("fire")):
		var b = p_bullet.instantiate()
		get_parent().add_child(b)
		b.position = self.position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	get_input()
	move_and_slide()
  
func _slow_movement():
	speed = 250