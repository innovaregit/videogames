extends Node2D
onready var audio = get_node("audio")
onready var animacion = get_node("Sprite/animacion")
var area

func _ready():
	animacion.get_animation("walk").set_loop(true)
	animacion.play("walk")
	area = get_node("area")
	pass


func _on_Area2D_body_entered(body):
	if (body.get_name() == "personaje"):
		hide()
		audio.play()
		area.queue_free()
	pass # replace with function body
