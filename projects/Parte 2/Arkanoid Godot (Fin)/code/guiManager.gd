extends CanvasLayer

# Called when the node enters the scene tree for the first time.
func actualizar_score(numero):
	$VCGUI/HCPuntaje/LScore.set_text(String(numero))

func ver_mensaje_win():
	$VCGUI/LVictoria.show()

func ver_mensaje_lose():
	$VCGUI/LDerrota.show()
	$VCGUI/BReintentar.show()

func _on_BReintentar_pressed():
	get_tree().reload_current_scene()


