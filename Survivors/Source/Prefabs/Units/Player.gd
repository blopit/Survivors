extends "res://Source/Prefabs/Units/Unit.gd"

var speed = 2000.0
var friction = 500.0
var vel = Vector2.ZERO

func _process(delta):
	var velocity = Vector2()
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	velocity = velocity.normalized() * speed

	#velocity = velocity.linear_interpolate(Vector2.ZERO, friction * delta)
	#move_and_collide(velocity)
	apply_force(velocity)
	
	var speed = linear_velocity.length()
	if speed > friction:
		apply_force(linear_velocity.normalized() * -friction)
	else:
		apply_force(linear_velocity.normalized() * -speed)
	
	

func add_motion(impulse:Vector2):
	pass
