extends Area2D

onready var animacion = $AnimatedSprite
onready var animacion_consumir = $AnimationPlayer
onready var colision_personaje = $ColisionPersonaje


func _ready():
	animacion.play()


func _on_body_entered(body):
	colision_personaje.set_deferred("disabled", true)
	animacion_consumir.play("consumir")
	

