extends	Area2D


func _physics_process(delta):
	var INTERACT_KEY = Input.is_action_pressed("ui_select")
	
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" && INTERACT_KEY == true:
			print("Is colliding")
		if body.name == "Player" && INTERACT_KEY == true && GlobalValues.points > 19:
			print("is colliding")
			GlobalValues.points -= 20
			queue_free()
