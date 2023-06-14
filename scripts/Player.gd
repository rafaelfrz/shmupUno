extends CharacterBody2D

var speed = 200

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
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed

	move_and_slide()


