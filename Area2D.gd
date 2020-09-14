extends Area2D



func _physics_process(delta):
	var INTERACT_KEY = Input.is_action_pressed("ui_select")
	var opgave_scene = get_node("/root/OpgaveScene")
	
	var bodies = get_overlapping_bodies()
	for body in bodies:
#		if body.name == "Player":
		if body.name == "Player" && INTERACT_KEY == true:
			print("Det fucking virker")

	
