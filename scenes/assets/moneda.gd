extends Node2D

onready var animacion = get_node("Sprite/animacion")
onready var sonido = get_node("audio")
var area

func _ready():
	area = get_node("area")
	animacion.get_animation("gira").set_loop(true)
	animacion.play("gira")
	pass


func _on_area_body_entered(body):
	hide()
	area.queue_free()
	sonido.play()
	global.contador_monedas = global.contador_monedas + 1
	print(global.contador_monedas)
	pass # replace with function body
