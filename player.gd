
extends CharacterBody3D

var speed = 5.0
var jump_speed = 5.0

func _physics_process(delta):
	if not is_on_floor():
		velocity.y -= 9.8 * delta

	if Input.is_key_pressed(KEY_SPACE) and is_on_floor():
		velocity.y = jump_speed

	velocity.x = 0
	velocity.z = 0

	if Input.is_key_pressed(KEY_W):
		velocity.z = -speed

	if Input.is_key_pressed(KEY_S):
		velocity.z = speed

	if Input.is_key_pressed(KEY_A):
		velocity.x = -speed

	if Input.is_key_pressed(KEY_D):
		velocity.x = speed

	move_and_slide()
