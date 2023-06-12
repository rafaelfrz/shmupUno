extends Node2D

var dir = Vector2(0, 0)


func _ready():
	pass 




func _process(delta):
	self.position += dir.rotated(self.rotation)
	
	if ($RayCast2D.is_colliding()):
		get_tree().reload_current_scene()
	pass
	
func screen_exited():
	get_parent().remove_child(self)
	queue_free()



