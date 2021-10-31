extends Area2D
signal consumida()


func _on_body_entered(_body):
	DatosPlayer.restar_llaves()
	emit_signal("consumida")
	$DeteccionPersonaje.set_deferred("disabled", true)
	$AnimationPlayer.play("consumir")
