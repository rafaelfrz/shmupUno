extends Node2D


var bullet_scene = load("res://scenes/bullet.tscn")

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate(.1)
	
	var b = bullet_scene.instantiate()
	b.position = self.position
	b.rotation = self.rotation
	
	b.position.y += 100
	
	get_parent().add_child(b)
	
	pass
