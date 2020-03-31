extends KinematicBody2D

var velocity = Vector2()
export (int) var speed = 600

func _ready():
	pass # Replace with function body.

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("ui_left"):
		velocity.x -= speed
	if Input.is_action_pressed("ui_right"):
		velocity.x += speed

func _process(delta):
	get_input()
	move_and_collide(velocity * delta)
