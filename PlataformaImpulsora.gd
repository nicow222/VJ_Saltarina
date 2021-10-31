extends Area2D

onready var animacion = $AnimationPlayer

func _ready():
	animacion.play("idle")


func _on_DetectorImpulso_body_entered(body):
	animacion.play("impulsar")
	body.impulsar()
