extends Area2D

export(String, "oro", "plata", "bronze") var tipo_moneda

onready var animacion = $AnimatedSprite
onready var animacion_consumir = $AnimationPlayer
onready var colision_personaje = $ColisionPersonaje


func _ready():
	animacion.play()


func _on_body_entered(_body):
	DatosPlayer.sumar_monedas(tipo_moneda)
	colision_personaje.set_deferred("disabled", true)
	animacion_consumir.play("consumir")

	

