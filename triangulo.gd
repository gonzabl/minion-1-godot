extends Area2D

export (int) var speed = 250
var velocidad = Vector2.ZERO
export var matar = Vector2()

func _ready():
	hide()
	$vida.start()

func _process(delta):
	velocidad = matar.normalized() * speed 
	position += velocidad * delta

	

func eliminar(body):
	get_parent().remove_child(self)
	queue_free()
