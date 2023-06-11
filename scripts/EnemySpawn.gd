extends Node2D

var enemy_scene = load("res://scenes/enemy.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	var enemy = enemy_scene.instantiate()
	add_child(enemy)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
