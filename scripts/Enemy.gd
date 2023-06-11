extends Node2D


var bullet_scene = load("res://scenes/bullet.tscn")

@onready var player = get_parent().get_parent().get_node("Player")


func _ready():
	$Timer.set_wait_time(0.5)
	$Timer.start()
	pass 

func _process(delta):
	rotate(1 * delta)
	position.y += 200 * delta
	
func spawn_bullets():
	
	var b1 = bullet_scene.instantiate()
	b1.position = self.position
	b1.dir = Vector2(player.position.x - self.position.x, player.position.y - self.position.y).normalized()
	
	get_parent().add_child(b1)
	
	pass

func _on_timer_timeout():
	spawn_bullets()
	pass # Replace with function body.
