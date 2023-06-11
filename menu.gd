extends Control

func _input(event):
	print(event.as_text())

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	$VBoxContainer/HBoxContainer/VBoxContainer/StartButton.grab_focus()

func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://scenes/game.tscn")

func _on_options_button_pressed():
	pass

func _on_quit_button_pressed():
	get_tree().quit()
