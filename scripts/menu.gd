extends Control

func _input(event):
	print(event.as_text())

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://scenes/game.tscn")

func _on_exit_button_pressed():
	get_tree().quit()
