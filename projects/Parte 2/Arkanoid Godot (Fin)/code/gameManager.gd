extends Node2D

var mis_puntos
export(int) var sumar_puntos = 100

func _ready():
	mis_puntos = 0
	$GUI.actualizar_score(mis_puntos)

func _on_Ball_body_entered(body):
	if body.is_in_group("bar"):
		$Ball.apply_central_impulse(Vector2(0, -100))
		$Audio_Barra.play()
	if body.is_in_group("bar-deleted"):
		# Condición de victoria: Sin bloques para destruir
		if get_tree().get_nodes_in_group("bar-deleted").size() == 1:
			$GUI.ver_mensaje_win()
			get_tree().change_scene("res://escenas/level2.tscn")
		# Sumar puntos
		mis_puntos += sumar_puntos
		$GUI.actualizar_score(mis_puntos)
		# Eliminar bloque
		body.queue_free()

func _on_Area_Derrota_body_entered(_body):
	# Condición de derrota: Pelota en zona por debajo de la barra.
	$GUI.ver_mensaje_lose()
	
