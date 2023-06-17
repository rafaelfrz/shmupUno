extends Node2D

var bullet_scene = load("res://scenes/bullet.tscn")

@onready var player = get_parent().get_parent().get_node("Player")

func _ready():
	$Timer.set_wait_time(0.2)
	$Timer.start()
	pass 

func _process(delta):
	rotate(1 * delta)
	position.y += 80 * delta
	
func spawn_bullets():
	
	var b1 = bullet_scene.instantiate()
	b1.position = self.position
	b1.dir = Vector2(player.position.x - self.position.x, player.position.y - self.position.y).normalized()
	
	var b2 = bullet_scene.instantiate()
	b2.position = self.position
	b2.dir = Vector2(1,0)
	
	get_parent().add_child(b1)
	get_parent().add_child(b2)
	
	pass

func _on_timer_timeout():
	spawn_bullets()
	pass # Replace with function body.

func handle_hit():
	print("enemy_hit")


