extends Control


func _ready():
	visible = false

func _input(event):
	if event.is_action_pressed("pausa"):
		visible = not visible
		get_tree().paused = not get_tree().paused
		


func _on_BotonContinuar_pressed():
	get_tree().paused = false
	visible = false


func _on_BotonMenuPrincipal_pressed():
	get_tree().paused = false
	get_tree().change_scene("res://juego/menus/MenuPrincipal.tscn")
