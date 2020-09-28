extends Area2D

func _physics_process(delta):
	var INTERACT_KEY = Input.is_action_pressed("ui_select")
	
	var bodies = get_overlapping_bodies()
	for body in bodies:
#		if body.name == "Player":
		if body.name == "Player" && INTERACT_KEY == true:
			get_tree().change_scene("res://Scener/OpgaveVælger.tscn")
		
