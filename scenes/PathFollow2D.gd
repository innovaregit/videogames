extends PathFollow2D

func _ready():
	pass

func _process(delta):
	set_offset(get_offset() + (50 * delta))
