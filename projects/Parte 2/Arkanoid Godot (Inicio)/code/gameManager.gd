extends Node2D

func _ready():
	pass # Replace with function body.

func _on_Ball_body_entered(body):
	if body.is_in_group("bar"):
		$Ball.apply_central_impulse(Vector2(0, -100))
	if body.is_in_group("bar-deleted"):
		body.queue_free()
	
