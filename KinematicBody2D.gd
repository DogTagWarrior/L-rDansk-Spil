extends KinematicBody2D

export var speed = 300

var direction = Vector2(0,0)

#var INTERACT_KEY = Input.is_action_pressed("ui_x")

func _physics_process(delta):
	controls()
	movement()


func controls():
	var LEFT = Input.is_action_pressed("ui_left")
	var RIGHT = Input.is_action_pressed("ui_right")
	var UP = Input.is_action_pressed("ui_up")
	var DOWN = Input.is_action_pressed("ui_down")
		
	direction.x = -int(LEFT) + int(RIGHT)
	direction.y = -int(UP) + int(DOWN)

func movement():
	var motion = direction.normalized() * speed
	move_and_slide(motion, Vector2(0,0))


