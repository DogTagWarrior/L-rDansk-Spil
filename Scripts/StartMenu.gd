#StartMenu.gd
extends Control

func _on_Button_pressed():
	get_tree().change_scene("res://Scener/World.tscn")
